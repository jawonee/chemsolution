var validCheckFlag = false;// true;
$(function() {
	$("input.join").on("focusout blur change keyup paste", checkValidation);
	$("input.join_btn").click(function(e) {
		e.preventDefault();
		if (validCheckFlag) {
			var form = $('form.join_form')[0];
			form.submit();
		} else {
			alert("입력값을 확인해주세요.");
		}
	})
})

function checkAuth() {
	var form = $('form.login_form')[0];
	var formData = new FormData(form);
	jQuery.ajax({
		url : "user/login/authCheck",
		method : "post",
		data : formData,
		dataType : 'json',
		processData : false,
		contentType : false,
		success : function(auth) {
			if (auth) {
				window.location.href = "prevPage";
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
	// if (!validCheckFlag || this.value == "") {
	// return false;
	// }
	// validCheckFlag = false;

	if (this.value == "") {
		return false;
	}

	var checkKey = this;
	var input = {
		key : this.name,
		value : this.value
	}
	jQuery.ajax({
		url : "user/join/validCheck",
		method : "post",
		data : JSON.stringify(input),
		dataType : 'json',
		contentType : "application/json; charset=UTF-8",
		success : function(valid) {
			if (valid.msg != "") {
				validCheckFlag = false;
			} else {
				validCheckFlag = true;
			}
			$(checkKey).parent().children("span.valid_msg").text(valid.msg);
			$(checkKey).parent().children("img.valid_result").removeClass(
					"hidden");
			$(checkKey).parent().children("img.valid_result").attr("src",
					valid.src);

		},
		error : function(xhr, status, error) {
			alert("Input Validation check Error");
		}
	});
}
