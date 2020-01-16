function goPopup() {
	var pop = window.open("/user/jusoPopup.jsp", "pop",
			"width=570,height=420, scrollbars=yes, resizable=yes");
}

function jusoCallBack(roadFullAddr) {
	$("#address").val(roadFullAddr);
}

//$('#ID').prop('readonly', true);