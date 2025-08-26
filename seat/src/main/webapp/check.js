function insertCheck() {
	if (document.frm.resvno.value == '') {
		alert("예약번호가 입력되지않았습니다.");
		document.frm.resvno.focus();
	}
	else if (document.frm.emptno.value == '') {
		alert("사원번호가 입력되지않았습니다.");
		document.frm.emptno.focus();
	}
	else if (document.frm.resvdate.value == '') {
		alert("근무일자가 입력되지않았습니다.");
		document.frm.resvdate.focus();
	}
	else if (document.frm.seatno.value == '') {
		alert("좌석번호가 입력되지않았습니다.");
		document.frm.seatno.focus();
	}
	else{
		alert("좌석예약정보가 등록되었습니다!");
		document.frm.submit();
	}
}

function insertReset(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}

function listCheck(){
	if(document.list_frm.emptno.value == ''){
		alert("사원번호가 입력되지 않았습니다.");
		document.list_frm.emptno.focus();
	}
	else{
		document.list_frm.submit();
	}
	
}