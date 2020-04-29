var flag = {
	password : false,
	name : false,
	tel : false,
	email : false
};
var validFlag = false;
$(function() {
	$("input.join:not([readonly])").not(".check").on("blur keyup", checkValidation);
	$("input.check").on("blur keyup", checkPassword);
	$("input.u_submit").click(function(e) {
		e.preventDefault();
		$("input.join:not([readonly])").not(".check").blur();
		if ($("input[type=password]").val() == "") {
			flag.password = true;
		}
		for (key in flag) {
			validFlag = validFlag && flag[key];
		}
		if (validFlag) {
			var form = $('form.user_form')[0];
			form.submit();
			if ($("input[name='_method']")) {
				alert("회원정보가 수정되었습니다.");
			}
		} else {
			alert("입력값을 확인해주세요.");
		}
	})
})

function checkAuth() {
	var form = $('form.login_form')[0];
	var formData = new FormData(form);
	jQuery.ajax({
		url : "authCheck",
		method : "post",
		data : formData,
		dataType : 'json',
		processData : false,
		contentType : false,
		success : function(auth) {
			if (auth) {
				window.location.href = "../prevPage";
			} else {
				$("input[name=id].login").val("").focus();
				$("input[name=password].login").val("");
				$('.auth_msg').removeClass("hidden");
			}
		},
		error : function(xhr, status, error) {
			alert("Login auth Error");
		}
	});
}

function checkValidation() {
	if (this.event == "keyup" && this.value == "") {
		validCheckFlag = false;
		return false;
	}

	var key = this.name;
	var value = this.value;
	var checkKey = this;
	if (this.name.includes("tel")) {
		key = "tel";
		value = $("select.tel option:selected").val();
		$("input[type=number]").each(function() {
			value += "-" + this.value;
		});
	}
	var input = {
		key : key,
		value : value
	}
	jQuery.ajax({
		url : "validCheck",
		method : "post",
		data : JSON.stringify(input),
		dataType : 'json',
		contentType : "application/json; charset=UTF-8",
		success : function(valid) {
			flag[key] = valid.result;
			$(checkKey).parent().children("span.valid_msg").text(valid.msg);
		},
		error : function(xhr, status, error) {
			alert("Input Validation check Error");
		}
	});
}
function checkPassword() {
	if (this.event == "keyup" && this.value == "") {
		alert(this.value);
		return false;
	}
	var checkKey = this;
	var password = {
		origin : $("input[name=password]").val(),
		check : this.value
	}
	jQuery.ajax({
		url : "passwordCheck",
		method : "post",
		data : JSON.stringify(password),
		dataType : 'json',
		contentType : "application/json; charset=UTF-8",
		success : function(check) {
			if (check.msg != "") {
				validCheckFlag = false;
			} else {
				validCheckFlag = true;
			}
			$(checkKey).parent().children("span.valid_msg").text(check.msg);
		},
		error : function(xhr, status, error) {
			alert("Input Validation check Error");
		}
	});
}

function maxLengthCheck(obj) {
	if (obj.value.length > obj.maxLength) {
		obj.value = obj.value.slice(0, obj.maxLength);
	}
}
function numberCheck(e) {
	var impossible = [ 38, 40, 109 ];
	if (impossible.indexOf(e.keyCode) != -1) {
		e.preventDefault();
	}
}
