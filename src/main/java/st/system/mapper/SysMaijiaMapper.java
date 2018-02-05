package st.system.mapper;

import java.util.List;

import st.core.mapper.BaseMapper;
import st.system.model.MaijiaModel;

public interface SysMaijiaMapper<T> extends BaseMapper<T>{

	List<MaijiaModel> selectShangpin(MaijiaModel model);

	List<MaijiaModel> selectFenlei(MaijiaModel model);

	Integer selCont1(MaijiaModel model);

	void insertShangpin(MaijiaModel model);

	List<MaijiaModel> selectFenlei1(MaijiaModel model);

	void deleteShangpin(MaijiaModel model);


}
