package st.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.core.mapper.BaseMapper;
import st.core.service.BaseService;
import st.system.mapper.SysShangpinMapper;
import st.system.model.ShangpinModel;
@Service("ShangpinService")
public class ShangpinService<T> extends BaseService<T>{

	
	@Autowired
	private SysShangpinMapper<T> mapper;
	@Override
	public BaseMapper<T> getMapper() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ShangpinModel> selectShangpin(ShangpinModel model) {
		// TODO Auto-generated method stub
		return mapper.selectShangpin(model);
	}

	public ShangpinModel selectproinfo(ShangpinModel model) {
		// TODO Auto-generated method stub
		return mapper.selectproinfo(model);
	}
	

}
