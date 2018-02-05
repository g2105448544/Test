package st.system.mapper;


import java.util.List;

import st.core.mapper.BaseMapper;
import st.system.model.GouwucheModel;
import st.system.model.ShangpinModel;

public interface SysGouwucheMapper<T> extends BaseMapper<T>{

	GouwucheModel selectgouwuche(GouwucheModel model);

	public void insertGouwuche(GouwucheModel model);

	public List<GouwucheModel> selectGouwuche(GouwucheModel model);

	public void deleteGouwuche(GouwucheModel model);
	
	public List<GouwucheModel> select(GouwucheModel model);

	List<GouwucheModel> chadizhi(GouwucheModel model);

	public void updategouwuche(GouwucheModel model);

	public int selectByid(GouwucheModel model);

	public void updateQuantity(GouwucheModel model);

	public GouwucheModel selectsp(GouwucheModel model);

 


}
