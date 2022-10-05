package com.loveGod.demo.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.loveGod.demo.model.ProductDao;
import com.loveGod.demo.model.Products;

@RestController
public class productController {
	
	@Autowired
	private ProductDao pDao;
		
	@PostMapping("/products/insert")
	public List<Products>  insertProducts(@RequestBody  List<Products> pro) {
		List< Products>  ListPro = pDao.saveAll(pro);
		return ListPro;
	}
	
	@PostMapping("/products/insert2")
	public  Products insertProducts2() {
		Products p1=new Products();
		p1.setProdName("歸心平安符");
		p1.setProdPrice(150);
		Products respr=pDao.save(p1);
		return  respr;
		
	}
	//依id找產品
	@GetMapping("/products/get/{id}")
	public Products getById(@PathVariable("id") Long  id ) {
		Optional<Products> optional=pDao.findById(id);
		
		if(optional.isPresent()) {
			Products respr =optional.get();
			return respr;
		}
		
		Products emptyProd=new Products();
		emptyProd.setProdName("沒有這筆資料");
		return emptyProd;
	}
	
	
	
	//依名字尋找 商品  http://localhost:8081/my-app/products/findByName?name=xxxx

	
	//跳頁 每頁幾筆資料
	@GetMapping("/products/page/{pageNumber}")
	public List<Products> findByPage(@PathVariable Integer pageNumber){
		//從第幾頁開始 每頁三比 根據id屬性 由小排到大
		Pageable pgb=PageRequest.of(pageNumber-1, 3, Sort.Direction.ASC, "prodPrice");
		Page<Products> page=pDao.findAll(pgb);
		List<Products> list=page.getContent();
		return list;
	}
		

}
