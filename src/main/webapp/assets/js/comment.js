const pathName = location.pathname;
$(document).ready(function() {
	getComment();
	$('.write_btn').click(function(e) {
		e.preventDefault();
		this.disabled = true;
		var form = $('form.comment_form')[0];
		var formData = new FormData(form);
		jQuery.ajax({
			url : pathName + "/comment/write",
			method : "post",
			data : formData,
			dataType : 'json',
			processData : false,
			contentType : false,
			success : function(data) {
				$('#comment_write_area').remove();
				if (data) {
					getComment();
				}
			},
			error : function(xhr, status, error) {
				alert("Comment write Error");
			}
		});
		this.disabled = false;
	});
});

function getComment() {
	jQuery.ajax({
		url : pathName + "/comment",
		method : "get",
		dataType : 'json',
		processData : false,
		contentType : false,
		success : function(comment) {
			$('.comment_list').empty();
			if (comment != null) {
				for (i in comment) {
					$('.comment_list').append(CommentTemplate(comment[i]));
				}
			}
		},
		error : function(xhr, status, error) {
			alert("Comment load Error");
		}
	});
}

function CommentTemplate(v) {
	var template = document.querySelector("#commentItem").innerText;
	var bindTemplate = Handlebars.compile(template);
	return bindTemplate(v);
}
