//var name = "#floatMenu";
//var menuYloc = null;
//$(document).ready(
//		function() {
//			menuYloc = parseInt($(name).css("top").substring(0,
//					$(name).css("top").indexOf("px")))
//			$(window).scroll(function() {
//				offset = menuYloc + $(document).scrollTop() + "px";
//				$(name).animate({
//					top : offset,
//					behavior : 'smooth'
//				}, {
//					duration : 300,
//					queue : false
//				});
//			});
//		});
//
function goToTop() {
	window.scrollTo({
		top : 0,
		behavior : 'smooth'
	})
}

function goToBottom() {
	window.scrollTo({
		top : document.body.scrollHeight,
		behavior : 'smooth'
	})
}