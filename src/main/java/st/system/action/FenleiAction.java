package st.system.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import st.core.action.BaseAction;
import st.core.session.HtmlUtil;
import st.system.model.FenleiModel;
import st.system.service.FenleiService;
import st.tool.FormatEmpty;
@Controller
@RequestMapping("/Fenlei")
public class FenleiAction extends BaseAction{
	
	@Autowired(required = false)
	private FenleiService<FenleiModel> fenleiService;
	
	/**
	 * ����
	 * fenleiModel1 һ������
	 * fenleiModel2 ��������
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("selectFenlei")
	public void selectFenlei( HttpServletResponse response) throws Exception {
		FenleiModel Model = new FenleiModel();
		Model.setOrder("ASC");
		Model.setSort("id");
		List<FenleiModel> list = fenleiService.selectFenlei(Model);
		List<FenleiModel> result = new ArrayList<>();
		for(FenleiModel fenleiModel1 : list) {
			String Supercode = fenleiModel1.getSupercode();
			
			if (FormatEmpty.isEmpty(Supercode) || "0".equals(Supercode)) {
				result.add(fenleiModel1);
				continue;
			}
			for (FenleiModel fenleiModel2 : result) {
				if (Supercode.equals(fenleiModel2.getCode())) {
					fenleiModel2.getList().add(fenleiModel1);
					break;
				}
			}
		}
		Map<String, Object> jsonMap = new HashMap<>();
		jsonMap.put("list", result);
		HtmlUtil.writerJson(response, jsonMap);
	}

	
}
