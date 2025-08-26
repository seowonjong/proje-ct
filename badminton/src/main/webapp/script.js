//script.js
function checkResv() {
	if (frm.resv_no.value == '') {
		alert("예약번호가 입력되지 않았습니다!");
		frm.resv_no.focus();
	} else if (frm.cust_no.value == '') {
		alert("고객번호가 입력되지 않았습니다!");
		frm.cust_no.focus();
	} else if (frm.resv_date.value == '') {
		alert("예약일자가 입력되지 않았습니다!");
		frm.resv_date.focus();
	} else if (frm.court_no.value == '') {
		alert("코트번호가 입력되지 않았습니다!");
		frm.court_no.focus();
	}
	else {
		alert("코트예약정보가 등록되었습니다");
		frm.submit();
	}

}
function resetResv() {
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	frm.reset();
}

function checkCust() {
	if (sfrm.cust_no.value == '') {
		alert("고객번호가 입력되지 않았습니다!");
		sfrm.cust_no.focus();
	} else {
		sfrm.submit();
	}
}