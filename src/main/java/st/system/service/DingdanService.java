package st.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.core.service.BaseService;
import st.system.mapper.SysDingdanMapper;
import st.system.model.DingdanModel;
import st.system.model.GouwucheModel;
@Service("DingdanService")
public class DingdanService<T> extends BaseService<T>{

	@Autowired
	private SysDingdanMapper<T> mapper;
	
	public SysDingdanMapper<T> getMapper() {
		return mapper;
	}

	public List<GouwucheModel> insertDingdan(GouwucheModel model) {
		
		return mapper.insertDingdan(model);
	}

	public void insertDingdan(DingdanModel model) {
		// TODO Auto-generated method stub
		mapper.insertDingdan(model);
	}

	public void selectspbyuserid(DingdanModel model) {
		// TODO Auspto-generated method stub
		mapper.selectspbyuserid(model);
		
	}

	public List<DingdanModel> selectDingdan(DingdanModel model) {
		// TODO Auto-generated method stub
		return mapper.selectDingdan(model);
	}

}
