package st.system.mapper;

import java.util.List;

import st.core.mapper.BaseMapper;
import st.system.model.ShangpinModel;

public interface SysShangpinMapper<T> extends BaseMapper<T>{

	public List<ShangpinModel> selectShangpin(ShangpinModel model);

	public ShangpinModel selectproinfo(ShangpinModel model);
	
	

}
