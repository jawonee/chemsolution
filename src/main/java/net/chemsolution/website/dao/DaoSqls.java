package net.chemsolution.website.dao;

public class DaoSqls {
	public static final String SELECT_USER_INFO = "select * from member where id=:id and password=:pw";
	public static final String SELECT_BOARD_LIST = "select board.id, member_id, subject, content, category_id ,create_date, category.name as category_name from board join category on board.category_id = category.id and category.name=:catName order by id desc limit :from, :count";
	public static final String SELECT_COUNT = "select count(*) from board join category on board.category_id = category.id and category.name =:catName";
	public static final String SELECT_BOARD_ITEM = "select board.id, member_id, subject, content, answer_flag, category_id, create_date, category.name as category_name from board join category on board.category_id = category.id and board.id =:boardNo";
	public static final String DELETE_BOARD_ITEM = "delete from board where id =:boardNo";
	public static final String SELECT_COMMENT = "select comment.member_id, comment.content, comment.create_date, comment.modify_date  from board join comment on board.id = comment.board_id and board.id =:boardNo";
	public static final String UPDATE_ANSWER_FLAG = "update board set answer_flag = 1 where id = :boardNo";
}
