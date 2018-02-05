package st.system.mapper;

import java.util.List;

import st.core.mapper.BaseMapper;
import st.system.model.UserModel;
import st.system.model.UsersModel;

public interface SysUserMapper<T> extends BaseMapper<T> {
	UserModel select(UserModel usermodel);
	int selectusername(String username);

}
