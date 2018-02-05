package st.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.system.mapper.SysUserMapper;
import st.system.model.UserModel;
import st.core.service.BaseService;

@Service("UserServic")
public class UserServic<T> extends BaseService<T> {
	@Autowired
	private SysUserMapper<T> mapper;
	
	
	public SysUserMapper<T> getMapper() {
		return mapper;		
	}

	public void zhuce(T model) {
		 mapper.insert(model);
	}
	public int denglu(T model) {
		return mapper.selectCount(model);
	}
	public UserModel select(UserModel user) {
		return mapper.select(user);
		
	}

	public T queryLogin(T model) {
		List<T> result = mapper.selectModel(model);
		if (result == null || result.isEmpty()) {
			return null;
		}
		return result.get(0);
	}

	

}
