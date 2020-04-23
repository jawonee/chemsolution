$(document).ready(function() {
	const pathName = location.pathname;
	$(document).ready(function() {
		$('button.c_delete, a.c_delete').click(function(e) {
			e.preventDefault();
			if (confirm("댓글을 삭제하시겠습니까?")) {
				location.href = pathName + "/comment/delete";
			}
		});

		$('button.q_delete').click(function() {
			if (confirm("게시물을 삭제하시겠습니까?")) {
				location.href = pathName + "/delete";
			}
		});
	});
});
