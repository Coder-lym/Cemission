function show1(){
	if (document.getElementById("1_ul").style.display == "block") {
		document.getElementById("1_ul").style.display = "none";
		
	} else{
		document.getElementById("1_ul").style.display = "block";
		document.getElementById("2_ul").style.display = "none";
		document.getElementById("3_ul").style.display = "none";
		document.getElementById("4_ul").style.display = "none";
		document.getElementById("5_ul").style.display = "none";
	}
}
function show2(){
	if (document.getElementById('2_ul').style.display == "block") {
		document.getElementById('2_ul').style.display = "none";
	} else{
		document.getElementById('2_ul').style.display = "block";
		document.getElementById("1_ul").style.display = "none";
//		document.getElementById("3_ul").style.display = "none";
//		document.getElementById("4_ul").style.display = "none";
		document.getElementById("5_ul").style.display = "none";
	}
}
function show3(){
	if (document.getElementById('3_ul').style.display == "block") {
		document.getElementById('3_ul').style.display = "none";
	} else{
		document.getElementById('3_ul').style.display = "block";
		document.getElementById("1_ul").style.display = "none";
//		document.getElementById('2_ul').style.display = "none";
//		document.getElementById("4_ul").style.display = "none";
		document.getElementById("5_ul").style.display = "none";
	}
}
function show4(){
	if (document.getElementById('4_ul').style.display == "block") {
		document.getElementById('4_ul').style.display = "none";
	} else{
		document.getElementById('4_ul').style.display = "block";
		document.getElementById("1_ul").style.display = "none";
//		document.getElementById('2_ul').style.display = "none";
//		document.getElementById('3_ul').style.display = "none";
		document.getElementById("5_ul").style.display = "none";
	}
}
function show5(){
	if (document.getElementById('5_ul').style.display == "block") {
		document.getElementById('5_ul').style.display = "none";
	} else{
		document.getElementById('5_ul').style.display = "block";
		document.getElementById("1_ul").style.display = "none";
		document.getElementById('2_ul').style.display = "none";
		document.getElementById('3_ul').style.display = "none";
		document.getElementById('4_ul').style.display = "none";
	}
}
