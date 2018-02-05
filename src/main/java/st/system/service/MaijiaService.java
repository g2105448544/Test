package st.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.core.service.BaseService;
import st.system.mapper.SysMaijiaMapper;
import st.system.model.MaijiaModel;
@Service("MaijaService")
public class MaijiaService<T> extends BaseService<T>{
	
	
	@Autowired
	private SysMaijiaMapper<T> mapper;

	@Override
	public SysMaijiaMapper<T> getMapper() {
		// TODO Auto-generated method stub
		return mapper;
	}

	public List<MaijiaModel> selectShangpin(MaijiaModel model) {
		// TODO Auto-generated method stub
		return mapper.selectShangpin(model);
		
	}

	public List<MaijiaModel> selectFenlei(MaijiaModel model) {
		// TODO Auto-generated method stub
		
		return mapper.selectFenlei(model);
	}

	public Integer selCount1(MaijiaModel model) {
		// TODO Auto-generated method stub
		return mapper.selCont1(model);
	}

	public void insertShangpin(MaijiaModel model) {
		// TODO Auto-generated method stub
		mapper.insertShangpin(model);
		
	}

	public List<MaijiaModel> selectFenlei1(MaijiaModel model) {
		// TODO Auto-generated method stub
		return mapper.selectFenlei1(model);
	}

	public void deleteShangpin(MaijiaModel model) {
		// TODO Auto-generated method stub
		mapper.deleteShangpin(model);
	}



}
