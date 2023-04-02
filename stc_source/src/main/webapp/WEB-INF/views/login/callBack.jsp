<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
</head>
<body>

callBack 입니다.

<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script>
	var naverLogin = new naver.LoginWithNaverId({
		clientId: "BwdR32eAj73FDvlvVauD", // 본인걸로 수정, 띄어쓰기 금지.
		callbackUrl: "http://localhost:8090/stc/naverlogin", // 아무거나 설정
		isPopup: false,
		callbackHandle: true
	});
	naverLogin.init();
	
	console.log('성공2')
	
	window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {

	if (status) {
		/* console.log(naverLogin.user); */
		var age = naverLogin.user.getAge();
		var birthday = naverLogin.user.getBirthday();
		var email = naverLogin.user.getEmail();
		var gender = naverLogin.user.getGender();
		var id = naverLogin.user.getId();
		var name = naverLogin.user.getName();
		var nickName = naverLogin.user.getNickName();
		console.log('성공2')
		$.ajax({
			type: 'post',
			url: 'http://localhost:8090/stc/naversave',
			data: {'n_age':age, 'n_birthday':birthday, 'n_email':email, 'n_gender':gender, 'n_id':id, 'n_name':name, 'n_nickName':nickName},
			dataType: 'text',
			success: function(result) {
				if(result=='ok') {
					console.log('성공')
					location.replace("http://localhost:8090/stc/") 
				} else if(result=='no') {
					console.log('실패')
					location.replace("http://localhost:8090/stc/login")
				}
			},
			error: function(result) {
				console.log('오류 발생')
			}
		})

	} else {
		console.log("callback 처리에 실패하였습니다.");
	}
	});
});
</script>
</body>
</html>