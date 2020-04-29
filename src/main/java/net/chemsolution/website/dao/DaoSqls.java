package net.chemsolution.website.dao;

public class DaoSqls {
	public static final String SELECT_USER = "select id, name, tel, email, grade from member where id=:id and delete_flag=0";
	public static final String SELECT_USER_WITH_PW = "select id, name, tel, email, grade from member where id=:id and password=:pw and delete_flag=0";
	public static final String COUNT_USER = "select count(*) from member where id=:id";
	public static final String DELETE_USER = "update member set delete_flag=1, modify_date = CURRENT_TIMESTAMP where id = :id";
	public static final String UPDATE_USER = "update member set name=:name, tel=:tel, email=:email, modify_date = CURRENT_TIMESTAMP where id = :id";
	public static final String UPDATE_USER_WITH_PW = "update member set name=:name, password=:pw, tel=:tel, email=:email, modify_date = CURRENT_TIMESTAMP where id = :id";
	public static final String SELECT_BOARD_LIST = "select board.id, member_id, subject, content, category_id, date_format(create_date, '%Y.%m.%d') as create_date, category.name as category_name, answer_Flag from board join category on board.category_id = category.id and category.name=:catName order by id desc limit :from, :count";
	public static final String COUNT_BOARD = "select count(*) from board join category on board.category_id = category.id and category.name =:catName";
	public static final String SELECT_BOARD_ITEM = "select board.id, member_id, subject, content, answer_flag, category_id, date_format(create_date, '%Y.%m.%d') as create_date, date_format(modify_date, '%Y.%m.%d') as modify_date, category.name as category_name from board join category on board.category_id = category.id and board.id =:boardNo";
	public static final String DELETE_BOARD_ITEM = "delete from board where id =:boardNo";
	public static final String UPDATE_BOARD_ITEM = "update board set category_id = :categoryId, subject = :subject, content = :content, modify_date = CURRENT_TIMESTAMP where id = :id";
	public static final String SELECT_COMMENT = "select comment.id, comment.member_id, comment.board_id, comment.content, date_format(comment.create_date, '%Y.%m.%d') as create_date, date_format(comment.modify_date, '%Y.%m.%d') as modify_date from board join comment on board.id = comment.board_id and board.id =:boardNo";
	public static final String DELETE_COMMENT = "delete from comment where board_id =:boardNo";
	public static final String UPDATE_ANSWER_FLAG_ON = "update board set answer_flag = 1 where id = :boardNo";
	public static final String UPDATE_ANSWER_FLAG_OFF = "update board set answer_flag = 0 where id = :boardNo";
	
	//search query
	public static final String SEARCH_BOARD_LIST_SUBJECT = "select board.id, member_id, subject, content, category_id, date_format(create_date, '%Y.%m.%d') as create_date, category.name as category_name, answer_Flag from board join category on board.category_id = category.id and category.name=:catName and subject like :value order by id desc limit :from, :count";
	public static final String SEARCH_BOARD_LIST_CONTENT = "select board.id, member_id, subject, content, category_id, date_format(create_date, '%Y.%m.%d') as create_date, category.name as category_name, answer_Flag from board join category on board.category_id = category.id and category.name=:catName and content like :value order by id desc limit :from, :count";
	public static final String SEARCH_BOARD_LIST_USERID = "select board.id, member_id, subject, content, category_id, date_format(create_date, '%Y.%m.%d') as create_date, category.name as category_name, answer_Flag from board join category on board.category_id = category.id and category.name=:catName and member_id like :value order by id desc limit :from, :count";
}
