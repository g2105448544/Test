package st.system.model;

import st.core.model.BaseModel;
public class GouwucheModel extends BaseModel{
	private String username;
	private String userid;
	private int sp_xinxi_id;
	private int quantity;
	private String name;
	private float price;
	private String url;
	private String telephone;  
	private String xxaddress;

	
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
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getSp_xinxi_id() {
		return sp_xinxi_id;
	}
	public void setSp_xinxi_id(int sp_xinxi_id) {
		this.sp_xinxi_id = sp_xinxi_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "GouwucheModel [userid=" + userid + ", sp_xinxi_id=" + sp_xinxi_id + ", quantity=" + quantity + ", name="
				+ name + ", price=" + price + ", url=" + url + ", telephone=" + telephone + ", xxaddress=" + xxaddress
				+ "]";
	}

	


	
	

}
