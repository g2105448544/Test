package st.system.model;

import st.core.model.BaseModel;

public class UserModel extends BaseModel {
	private int id;
	private String username;
	private String userpass;
	private int maimai;
	private int youbian;
	private String lianxi;
	private String shenfen;
	private String address;
	
	
	public int getYoubian() {
		return youbian;
	}
	public void setYoubian(int youbian) {
		this.youbian = youbian;
	}
	public String getLianxi() {
		return lianxi;
	}
	public void setLianxi(String lianxi) {
		this.lianxi = lianxi;
	}
	public String getShenfen() {
		return shenfen;
	}
	public void setShenfen(String shenfen) {
		this.shenfen = shenfen;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpass() {
		return userpass;
	}
	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
	public int getMaimai() {
		return maimai;
	}
	public void setMaimai(int maimai) {
		this.maimai = maimai;
	}
	@Override
	public String toString() {
		return "UserModel [id=" + id + ", username=" + username + ", userpass=" + userpass + ", maimai=" + maimai
				+ ", youbian=" + youbian + ", lianxi=" + lianxi + ", shenfen=" + shenfen + ", address=" + address + "]";
	}

	
	


	
	
}
