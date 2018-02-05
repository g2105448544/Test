package st.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.core.mapper.BaseMapper;
import st.core.service.BaseService;
import st.system.mapper.SysFenleiMapper;
import st.system.model.FenleiModel;
@Service("FenleiService")
public class FenleiService<T> extends BaseService<T>{

	@Autowired
	private SysFenleiMapper<T> mapper;
	
	public List<FenleiModel> selectFenlei(FenleiModel model) {
		// TODO Auto-generated method stub
		return mapper.selectFenlei(model);
	}

	@Override
	public BaseMapper<T> getMapper() {
		// TODO Auto-generated method stub
		return null;
	}

}
