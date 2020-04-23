package net.chemsolution.website.dto;

public class BoardDto {
	private Integer id;
	private String memberId;
	private Integer categoryId;
	private String categoryName;
	private String subject;
	private String content;
	private Integer answerFlag;
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
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getAnswerFlag() {
		return answerFlag;
	}
	public void setAnswerFlag(Integer answerFlag) {
		this.answerFlag = answerFlag;
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
		return "BoardDto [id=" + id + ", memberId=" + memberId + ", categoryId=" + categoryId + ", categoryName="
				+ categoryName + ", subject=" + subject + ", content=" + content + ", answerFlag=" + answerFlag
				+ ", createDate=" + createDate + ", modifyDate=" + modifyDate + "]";
	}
}