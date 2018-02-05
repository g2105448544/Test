package st.system.mapper;

import java.util.List;

import st.core.mapper.BaseMapper;
import st.system.model.DingdanModel;
import st.system.model.GouwucheModel;

public interface SysDingdanMapper<T> extends BaseMapper<T>{

	List<GouwucheModel> insertDingdan(GouwucheModel model);

	void insertDingdan(DingdanModel model);

	void selectspbyuserid(DingdanModel model);

	List<DingdanModel> selectDingdan(DingdanModel model);

}
