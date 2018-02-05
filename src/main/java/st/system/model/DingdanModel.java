package st.system.model;

import st.core.model.BaseModel;

@SuppressWarnings("serial")
public class DingdanModel extends BaseModel{
	private String seller_id;
	private int sp_id;
	private int quantity;
	private float money;
	private int sh_dizhi_id;
	private String username;
	private String name;
	private String url;
	public String getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}
	public int getSp_id() {
		return sp_id;
	}
	public void setSp_id(int sp_id) {
		this.sp_id = sp_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public int getSh_dizhi_id() {
		return sh_dizhi_id;
	}
	public void setSh_dizhi_id(int sh_dizhi_id) {
		this.sh_dizhi_id = sh_dizhi_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "DingdanModel [seller_id=" + seller_id + ", sp_id=" + sp_id + ", quantity=" + quantity + ", amount="
				+ money + ", sh_dizhi_id=" + sh_dizhi_id + ", username=" + username + ", name="
				+ name + ", url=" + url + "]";
	}
	
	

}
