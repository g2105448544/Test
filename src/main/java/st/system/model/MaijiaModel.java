package st.system.model;

import st.core.model.BaseModel;

public class MaijiaModel extends BaseModel{
	
	private String supercode;
	private String spname;
	private float price;
	private String user_id;
	private String sp_fenlei_id;
	private String descr;
	private String stock;
	private String url;
	

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
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public String getSp_fenlei_id() {
		return sp_fenlei_id;
	}
	public void setSp_fenlei_id(String sp_fenlei_id) {
		this.sp_fenlei_id = sp_fenlei_id;
	}
	public String getSupercode() {
		return supercode;
	}
	public void setSupercode(String supercode) {
		this.supercode = supercode;
	}
	public String getSpname() {
		return spname;
	}
	public void setSpname(String spname) {
		this.spname = spname;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}

	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "MaijiaModel [supercode=" + supercode + ", spname=" + spname + ", price=" + price + ", user_id="
				+ user_id + ", sp_fenlei_id=" + sp_fenlei_id + ", descr=" + descr + ", stock=" + stock + ", url=" + url
				+ "]";
	}
	
	

	
	

}
