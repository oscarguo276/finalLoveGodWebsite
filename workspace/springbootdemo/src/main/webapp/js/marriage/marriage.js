// 控制卡片出現的變數
var classVal = document.getElementById("controlBigCard").getAttribute("class");
//
var classVal2 = document.getElementById("centerimg").getAttribute("class");
//拿來監聽點擊畫面的變數
let nextStep = document.getElementById("change");
let count = 0;


nextStep.addEventListener("click", click)


function click() {
    console.log("count=" + count)

    if (count == 0) {
        document.getElementById("centerP").innerHTML = ""
        document.getElementById("centerP").innerHTML = "向天公簡單的自我介紹；默念名字、年齡、地址。"
        count++
    }
    else if (count == 1) {
        document.getElementById("centerP").innerHTML = ""
        document.getElementById("centerP").innerHTML = "與月老講述自己心中的理想對象，越詳細越好，月老才好幫忙尋覓對象。"
        count++
    }
    else if (count == 2) {
        classVal2 = classVal2.replace("outcenterimg", "noCenterImg");
        document.getElementById("centerimg").setAttribute("class", classVal2);
        document.getElementById("idimg").src = ""
        document.getElementById("centerP").innerHTML = ""
        document.getElementById("centerP").innerHTML = "持香做三拜禮"
        count++
    }

    else if (count == 3) {
        document.getElementById("centerP").innerHTML = ""
        document.getElementById("centerP").innerHTML = "壹拜"
        count++
    }
    else if (count == 4) {
        document.getElementById("centerP").innerHTML = ""
        document.getElementById("centerP").innerHTML = "貳拜"
        count++
    }
    else if (count == 5) {
        document.getElementById("centerP").innerHTML = ""
        document.getElementById("centerP").innerHTML = "參拜"
        count++
    }

    else if (count == 6) {
        document.getElementById("centerP").innerHTML = ""
        document.getElementById("centerP").innerHTML = "已尋得對象，請擲杯詢問是否為良緣。"
        let num = Math.floor(Math.random() * 2);
        console.log("num =" + num);
        if (num == 0) {
            count++
        }
        else {
            count++;
            count++;
        }
    }
    else if (count == 7) {
        classVal2 = classVal2.replace("noCenterImg", "outcenterimg");
        document.getElementById("centerimg").setAttribute("class", classVal2);
        document.getElementById("centerP").innerHTML = ""
        document.getElementById("idimg").src = "/my-app/image/marriage/false.png"
        count = 2
    }
    else if (count == 8) {
        classVal2 = classVal2.replace("noCenterImg", "outcenterimg");
        document.getElementById("centerimg").setAttribute("class", classVal2);




        document.getElementById("centerP").innerHTML = ""
        document.getElementById("idimg").src = "/my-app/image/marriage/true.png"
        count++
    }

    else if (count == 9) {
        classVal2 = classVal2.replace("outcenterimg", "");
        document.getElementById("centerimg").setAttribute("class", classVal2);
        document.getElementById("idimg").src = ""
        document.getElementById("centerP").innerHTML = ""
        classVal = classVal.replace("nobigCard", "bigCard");
        document.getElementById("controlBigCard").setAttribute("class", classVal);

        count++
    }
}