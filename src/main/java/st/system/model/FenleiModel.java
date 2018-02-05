package st.system.model;


import java.util.ArrayList;
import java.util.List;

import st.core.model.BaseModel;

public class FenleiModel extends BaseModel{
	private String name; 
	

	private String supercode;
	private List<FenleiModel> list = new ArrayList<>();
	
	
	public String getSupercode() {
		return supercode;
	}

	public void setSupercode(String supercode) {
		this.supercode = supercode;
	}

	public List<FenleiModel> getList() {
		return list;
	}

	public void setList(List<FenleiModel> list) {
		this.list = list;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "FenleiModel [name=" + name + ", supercode=" + supercode + ", list=" + list + "]";
	}

	

}
