$(document).ready(function() {
	(function() {
		changeCategory(0);
	})();

//	$('.anchor').on("click", function() {
//		var category = $(event.currentTarget).parent().attr('data-category');
//		if ($('.current').attr('data-category') != category) {
//			changeCategory(category);
//			$('.current').removeClass('current');
//			$("[data-category=" + category + "]").addClass('current');
//		}
//	});
});
//
//function changeCategory(category) {
//	jQuery.ajax({
//		url : "board/list/" + category,
//		method : "get",
//		dataType : 'json',
//		contentType : "application/json; charset=UTF-8",
//		success : function(list) {
//			$('.list_item').not('.top').remove();
//			for ( var i in list) {
//				$('.board_list').append(boardListTemplate(list[i]));
//			}
//		},
//		error : function(xhr, status, error) {
//			alert("List load Error");
//		}
//	});
//
//}
//
//function convertDateFormat(date) {
//	var currentDate = new Date(date);
//	var month = (currentDate.getMonth() + 1).toString();
//	var day = currentDate.getDate().toString();
//	if (month.length < 2) {
//		month = "0" + month;
//	}
//	if (day.length < 2) {
//		day = "0" + day;
//	}
//	return currentDate.getFullYear() + "." + month + "." + day + ".";
//}
//
//function boardListTemplate(v) {
//	var template = document.querySelector("#boardItem").innerText;
//	var bindTemplate = Handlebars.compile(template);
//	Handlebars.registerHelper("createDate", function() {
//		return convertDateFormat(this.createDate);
//	});
//	return bindTemplate(v);
//}
