package st.system.action;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import st.system.model.ShangpinModel;
import st.core.action.BaseAction;
import st.core.session.SessionUtils;
import st.system.service.ShangpinService;

@Controller
@RequestMapping("Shangpin")
public class ShangpinAction extends BaseAction {
	@Autowired(required = false)
	private ShangpinService<ShangpinModel> shangpinService;
	
	/**
	 * 查询商品
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("selectShangpin")
	public String selectShangpin(ShangpinModel model, HttpServletRequest request) {
		List<ShangpinModel> list = shangpinService.selectShangpin(model);
		SessionUtils.setAttr(request, "list", list);
		
		return "shangpin";
	}
	/**
	 * 详情页
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("proinfo")
	public String proinfo(ShangpinModel model, HttpServletRequest request) {
		ShangpinModel proinfo = shangpinService.selectproinfo(model);
		System.out.println(proinfo);
		SessionUtils.setAttr(request, "proinfo", proinfo);
		return "proinfo";
	}
}
