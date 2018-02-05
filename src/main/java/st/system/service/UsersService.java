package st.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.core.mapper.BaseMapper;
import st.core.service.BaseService;
import st.system.mapper.SysUsersMapper;
import st.system.model.UsersModel;

@Service("UsersServic")
public class UsersService<T> extends BaseService<T> {
	@Autowired
	private SysUsersMapper<T> mapper;
	
	public List<UsersModel>  selectAddress(UsersModel model) {
		return mapper.selectAddress(model);
	}
	public void updateAddress(UsersModel model) {
		 mapper.updateAddress(model);
		
	}

	@Override
	public BaseMapper<T> getMapper() {
		// TODO Auto-generated method stub
		return null;
	}

}
