package st.system.mapper;

import java.util.List;

import st.core.mapper.BaseMapper;
import st.system.model.FenleiModel;

public interface SysFenleiMapper<T> extends BaseMapper<T>{

	List<FenleiModel> selectFenlei(FenleiModel model);

}
