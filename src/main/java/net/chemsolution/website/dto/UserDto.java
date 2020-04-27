package net.chemsolution.website.dto;

public class UserDto {
	private String id;
	private String password;
	private String name;
	private String tel;
	private String tel1;
	private String tel2;
	private String tel3;
	private String email;
	private Integer grade;
	private Integer deleteFlag;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public void setTel(String tel1, String tel2, String tel3) {
		this.tel = tel1 + "-" + tel2 + "-" + tel3;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public Integer getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", password=" + password + ", name=" + name + ", tel=" + tel + ", email=" + email
				+ ", grade=" + grade + ", deleteFlag=" + deleteFlag + "]";
	}
}
