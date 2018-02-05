package st.system.mapper;

import java.util.List;

import st.core.mapper.BaseMapper;
import st.system.model.UsersModel;

public interface SysUsersMapper<T> extends BaseMapper<T> {

	List<UsersModel> selectAddress(UsersModel model);
	void updateAddress(UsersModel model);

}
