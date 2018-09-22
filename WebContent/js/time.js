function showTime1(){
	var today=new Date();//获得当前时间
    var year=today.getFullYear();//年
    var months=today.getMonth()+1;//月
    var day=today.getDate();//日
    var  hour=today.getHours();//时
    var  minutes=today.getMinutes()//分;
    var  seconds=today.getSeconds();//秒
    var weekends=today.getDay();
    var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
    var week=arr_week[weekends];
    document.getElementById("time").innerHTML=year+"年"+months+"月"+day+"日"+"  "+week;
}
function showTime2(){
	var today=new Date();//获得当前时间
    var year=today.getFullYear();//年
    var months=today.getMonth()+1;//月
    var day=today.getDate();//日
    var  hour=today.getHours();//时
    var  minutes=today.getMinutes()//分;
    var  seconds=today.getSeconds();//秒
    var weekends=today.getDay();
    var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
    var week=arr_week[weekends];
    if(minutes < 10){
    	document.getElementById("time").innerHTML=year+"."+months+"."+day+"&nbsp;&nbsp;"+hour+":0"+minutes;
    }else{
    	document.getElementById("time").innerHTML=year+"."+months+"."+day+"&nbsp;&nbsp;"+hour+":"+minutes;
    }
    
}

