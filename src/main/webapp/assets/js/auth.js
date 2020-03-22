$(document).ready(function() {
	$('#login_btn').click(loginAuth);
});

function loginAuth() {
	var form = $('form.login_form')[0];
	var formData = new FormData(form);
	jQuery.ajax({
		url : "user/auth",
		method : "post",
		data : formData,
		dataType : 'json',
		processData : false,
		contentType : false,
		success : function(data) {
			if (data.result) {
				window.location.href = "../website";
			} else {
				$('.auth_msg').removeClass("hidden");
			}
		},
		error : function(xhr, status, error) {
			alert("Login auth Error");
		}
	});
}
