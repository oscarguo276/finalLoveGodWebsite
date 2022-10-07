

let nextimage = document.getElementById("nextimage");
let count = 0;

nextimage.addEventListener("click", click)

function click() {
    if (count == 0) {
        document.getElementById("s").innerHTML = "開始求籤"
        document.getElementById("idimg").src = "/my-app/image/draw/drawn-sign.gif";
        document.getElementById("s2").innerHTML = ""
        document.getElementById("nextText").innerHTML = "已誠心祈求";
        count++
    }
    else if (count == 1) {

        document.getElementById("s").innerHTML = "以抽出籤"
        document.getElementById("idimg").src = "/my-app/image/draw/draw2.gif";
        document.getElementById("nextText").innerHTML = "下一步";
        count++

    }
    else if (count == 2) {

        document.getElementById("s").innerHTML = "請擲杯詢問 <br><br><br> 默念 : 信士OOO，OOO年O月O生，<br>家住OOOOO(現居地址)，因有OOOOO問題，<br>恭請賜籤指點。"
        document.getElementById("idimg").src = ""
        document.getElementById("nextText").innerHTML = "開始擲杯";
        let num = Math.floor(Math.random() * 2);
        console.log(num);
        if (num == 0) {
            count++
        }
        else {
            count++;
            count++;
        }
    }
    else if (count == 3) {
        document.getElementById("s").innerHTML = "笑杯"

        document.getElementById("idimg").src = "/my-app/image/draw/false.png"
        document.getElementById("nextText").innerHTML = "重新求籤";
        // Math.floor(Math.random() * 2);
        count--;
        count--;
        count--;


    }
    else if (count == 4) {

        document.getElementById("s").innerHTML = "勝杯"
        document.getElementById("idimg").src = "/my-app/image/draw/true.png"
        document.getElementById("nextText").innerHTML = "觀看籤文";
        count++
    }
    else if (count == 5) {

        document.getElementById("s").innerHTML = "籤文如下"
        document.getElementById("idimg").src = ""
        document.getElementById("s2").innerHTML = "<br><br><br> 默念 : 信士OOO，OOO年O月O生，<br>家住OOOOO(現居地址)，因有OOOOO問題，<br>恭請賜籤指點。"
        document.getElementById("nextText").innerHTML = "解析籤文";

        count++
    }
    else if (count == 6) {

        document.getElementById("s").innerHTML = "解籤"
        document.getElementById("idimg").src = ""
        document.getElementById("s2").innerHTML = "<br><br><br> 默念 : 信士OOO，OOO年O月O生，<br>家住OOOOO(現居地址)，因有OOOOO問題，<br>恭請賜籤指點。"
        document.getElementById("nextText").innerHTML = "再次求籤";
        count = 0;

        console.log("count=" + count)
    }

}

