package st.system.model;

import st.core.model.BaseModel;

public class AddressModel extends BaseModel{
	private String name;
	private String username;
	private String sheng;
	private String shi;
	private String qu;
	private String telephone;
	private String xxaddress;
	public String getName() {
		return name;
	}
	public String getSheng() {
		return sheng;
	}
	public void setSheng(String sheng) {
		this.sheng = sheng;
	}
	public String getShi() {
		return shi;
	}
	public void setShi(String shi) {
		this.shi = shi;
	}
	public String getQu() {
		return qu;
	}
	public void setQu(String qu) {
		this.qu = qu;
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
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getXxaddress() {
		return xxaddress;
	}
	public void setXxaddress(String xxaddress) {
		this.xxaddress = xxaddress;
	}
	@Override
	public String toString() {
		return "AddressModel [name=" + name + ", username=" + username + ", sheng=" + sheng + ", shi=" + shi + ", qu="
				+ qu + ", telephone=" + telephone + ", xxaddress=" + xxaddress + "]";
	}

	
}
