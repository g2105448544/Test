package st.system.mapper;

import java.util.List;

import st.core.mapper.BaseMapper;
import st.system.model.AddressModel;
import st.system.model.UserModel;

public interface SysAddressMapper<T> extends BaseMapper<T> {

	public AddressModel selecteAddress(AddressModel model);
	public void updateAddress(AddressModel model);
	public List<AddressModel> select(AddressModel model);
	public void insertAddress(AddressModel model);
	public void deleteAddress(AddressModel model);

}
