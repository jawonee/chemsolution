package net.chemsolution.website.dao;

public class DaoSqls {
	public static final String SELECT_USER_INFO = "select * from member where id=:id and password=:pw";
	public static final String SELECT_BOARD_LIST_ALL = "select board.id, member_id, subject, content, category_id ,create_date, category.name as category_name from board join category on board.category_id = category.id order by id desc limit :from, :count";
	public static final String SELECT_BOARD_LIST = "select board.id, member_id, subject, content, category_id ,create_date, category.name as category_name from board join category on board.category_id = category.id and category.name=:catName order by id desc limit :from, :count";
	public static final String SELECT_COUNT = "select count(*) from board join category on board.category_id = category.id and category.name =:catName";
}
