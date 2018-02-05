package st.system.model;

import st.core.model.BaseModel;

public class ShangpinModel extends BaseModel{
	private String price;
	private String url;
	private String stock;
	private String user_id;
	private String sp_fenlei_id;
	


	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getSp_fenlei_id() {
		return sp_fenlei_id;
	}

	public void setSp_fenlei_id(String sp_fenlei_id) {
		this.sp_fenlei_id = sp_fenlei_id;
	}

	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "ShangpinModel [price=" + price + ", url=" + url + ", stock=" + stock + ", user_id=" + user_id
				+ ", sp_fenlei_id=" + sp_fenlei_id + "]";
	}






}
