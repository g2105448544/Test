package st.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import st.core.mapper.BaseMapper;
import st.core.service.BaseService;
import st.system.mapper.SysAddressMapper;
import st.system.model.AddressModel;

@Service("AddressService")
public class AddressService<T> extends BaseService<T> {

	@Autowired
	private SysAddressMapper<T> mapper;
	
	public SysAddressMapper<T> getMapper() {
		return mapper;
		
	}

	public AddressModel selecteAddress(AddressModel model) {
		return mapper.selecteAddress(model);
	}
	public void updateAddress(AddressModel model) {
		mapper.updateAddress(model);
	}
	public void insertAddress(AddressModel model) {
		 mapper.insertAddress(model);
		 
	}
	public void deleteAddress(AddressModel model) {
		mapper.deleteAddress(model);
	}
	
	
	public List<AddressModel> select(AddressModel model) {
		
		return mapper.select(model);
		
	}
	
	


}
