package st.system.model;

import st.core.model.BaseModel;

public class UsersModel extends BaseModel {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private String username;
	private int    youbian;
	private String lianxi;
	private String shenfen;
	private String address;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
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
	@Override
	public String toString() {
		return "UsersModel [name=" + name + ", username=" + username + ", youbian=" + youbian + ", lianxi=" + lianxi
				+ ", shenfen=" + shenfen + ", address=" + address + "]";
	}

	

}
