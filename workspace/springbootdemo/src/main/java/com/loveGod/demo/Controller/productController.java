package com.loveGod.demo.Controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.loveGod.demo.model.Products;
import com.loveGod.demo.service.ProductService;

@Controller
public class productController {
	
	@Autowired
	private ProductService pService;
//--------------------------------------------	
	//跳轉到上傳圖片的頁面
	@GetMapping("/newProducts")
	public String newProducts() {
		return "shop/uploadPage";
		
	}	
	
	//上傳圖片成功導入 另外一個頁面
	@PostMapping("/fileUpload")
	public String postNewProducts(@RequestParam("pName")String name,
								  @RequestParam("file") MultipartFile photo,
								  @RequestParam("pPrice")Integer price) {
		Products addP=new Products(); //資料庫的table 名稱
		try {
			//到資料庫取得 放入使用者輸入的名稱
			addP.setProdName(name);
			// 放入價格
			addP.setProdPrice(price);
			// 放入照片
			addP.setProdPhoto(photo.getBytes());
			// 透過 Service 的  (老師命名的方法insertProducts) 這個方法 主要是在存入save 到資料庫 addP=把名稱、價格、照片放入
			pService.insertProducts(addP);
			
			return "/shop/uploadSuccessPage" ;
			
		} catch (IOException e) {
			e.printStackTrace();
			return "redirect:/";
		}
	}
	
	
//-------------------------------------
	//headers 這個回傳是HTML
	@GetMapping("/shop/more")
	public String listProducts(Model model) {
		List<Products> list=pService.listProducts();
		model.addAttribute("productsList",list);
		return "shop/shop";
	}
	
	//回傳圖片
	@GetMapping("/downloadImg/{id}")
	public ResponseEntity<byte[]> downloadImg(@PathVariable("id")Integer id){
		Products p1=pService.getProducts(id);
		
		byte[] pPhoto=p1.getProdPhoto();
		
		//改變contextType
		HttpHeaders headers=new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_JPEG);
		
		return new ResponseEntity<byte[]> (pPhoto,headers,HttpStatus.OK);
	}
//----------------------	
	
	
//	@PostMapping("/products/insert")
//	public List<Products>  insertProducts(@RequestBody  List<Products> pro) {
//		List< Products>  ListPro = pDao.saveAll(pro);
//		return ListPro;
//	}
//	
//	@PostMapping("/products/insert2")
//	public  Products insertProducts2() {
//		Products p1=new Products();
//		p1.setProdName("歸心平安符");
//		p1.setProdPrice(150);
//		Products respr=pDao.save(p1);
//		return  respr;
//		
//	}
//	//依id找產品
//	@GetMapping("/products/get/{id}")
//	public Products getById(@PathVariable("id") Integer  id ) {
//		Optional<Products> optional=pDao.findById(id);
//		
//		if(optional.isPresent()) {
//			Products respr =optional.get();
//			return respr;
//		}
//		
//		Products emptyProd=new Products();
//		emptyProd.setProdName("沒有這筆資料");
//		return emptyProd;
//	}
//	
//	
//	
//	//依名字尋找 商品  http://localhost:8081/my-app/products/findByName?name=xxxx
//
//	
//	//跳頁 每頁幾筆資料
//	@GetMapping("/products/page/{pageNumber}")
//	public List<Products> findByPage(@PathVariable Integer pageNumber){
//		//從第幾頁開始 每頁三比 根據id屬性 由小排到大
//		Pageable pgb=PageRequest.of(pageNumber-1, 3, Sort.Direction.ASC, "prodPrice");
//		Page<Products> page=pDao.findAll(pgb);
//		List<Products> list=page.getContent();
//		return list;
//	}
		

}
