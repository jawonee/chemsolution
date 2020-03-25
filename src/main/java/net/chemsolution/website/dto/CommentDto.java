package net.chemsolution.website.dto;

public class CommentDto {
	private Integer id;
	private String memberId;
	private Integer boardId;
	private String categoryName;
	private String content;
	private String createDate;
	private String modifyDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Integer getBoardId() {
		return boardId;
	}

	public void setBoardId(Integer boardId) {
		this.boardId = boardId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	@Override
	public String toString() {
		return "CommentDto [id=" + id + ", memberId=" + memberId + ", boardId=" + boardId + ", categoryName="
				+ categoryName + ", content=" + content + ", createDate=" + createDate + ", modifyDate=" + modifyDate
				+ "]";
	}
}
