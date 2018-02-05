package st.system.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.core.mapper.BaseMapper;
import st.core.service.BaseService;
import st.system.mapper.SysGouwucheMapper;
import st.system.model.GouwucheModel;
import st.system.model.ShangpinModel;
@Service("GouwucheService")
public class GouwucheService<T> extends BaseService<T>{

	@Autowired
	private SysGouwucheMapper<T> mapper;
	
	public SysGouwucheMapper<T> getMapper() {
		return mapper;
	}

	public void insertGouwuche(GouwucheModel model) {
		 mapper.insertGouwuche(model);
		
	}

	public List<GouwucheModel> selectGouwuche(GouwucheModel model) {
		 
		return mapper.selectGouwuche(model);
		
	}

	public void deleteGouwuche(GouwucheModel model) {
		mapper.deleteGouwuche(model);
		// TODO Auto-generated method stub
		
	}
	public List<GouwucheModel> select(GouwucheModel model){
		return mapper.select(model);
		
	}

	public GouwucheModel selectgouwuche(GouwucheModel model) {
		// TODO Auto-generated method stub
		return mapper.selectgouwuche(model);
	}

	public List<GouwucheModel> chadizhi(GouwucheModel model) {
		// TODO Auto-generated method stub
		return mapper.chadizhi(model);
	}

	public void updategouwuche(GouwucheModel model) {
		mapper.updategouwuche(model);
		
	}

	public int selectByid(GouwucheModel model) {
		// TODO Auto-generated method stub
		
		return mapper.selectByid(model);
	}

	public void updateQuantity(GouwucheModel model) {
		// TODO Auto-generated method stub
		mapper.updateQuantity(model);
	}

	public GouwucheModel selectsp(GouwucheModel model) {
		// TODO Auto-generated method stub
		return mapper.selectsp(model);
	}



}
