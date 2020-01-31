var repeatUsernameCheck = false;

function usernameCheck() {
	var username = $("#username").val();
	if (username === "" || username === null) {
		alert('username이 입력되지 않았습니다.');
		return;
	}

	var user = {
		username : username
	// phone:"12121212"
	// "age":30
	}

	// JSON.parse(제이슨데이터); 수신
	// JSON.stringfy(자바스크립트오브젝트); 송신

	$.ajax({
		type : "POST",
		url : "/blog/user?cmd=usernameCheck",
		dataType : "text",
		contentType : "application/json",
		data : JSON.stringify(user),
		success : function(data) { // data = 자동 주입됨.
			if (data === "ok") {
				alert("사용할 수 있는 아이디입니다.");
				repeatUsernameCheck = true;
				$('#username').attr('readonly', 'readonly');
			} else {
				alert("사용할 수 없는 아이디입니다.");
			}

		},
		error : function(data) { // data = 자동 주입됨.
			alert("통신 실패:");
		}
	});
}

function validationCheck() {
	if(!repeatUsernameCheck){
		alert('아이디 중복확인을 해주세요.');
	}
	return repeatUsernameCheck;
}


function goPopup() {
	var pop = window.open("/blog/user/jusoPopup.jsp", "pop",
			"width=570,height=420, scrollbars=yes, resizable=yes");
}

function jusoCallBack(roadFullAddr) {
	$("#address").val(roadFullAddr);
}

// $('#ID').prop('readonly', true);
