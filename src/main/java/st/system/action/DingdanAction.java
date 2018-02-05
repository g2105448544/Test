package st.system.action;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import st.core.action.BaseAction;
import st.core.session.SessionUtils;
import st.system.model.DingdanModel;
import st.system.model.GouwucheModel;
import st.system.model.ShangpinModel;
import st.system.model.UserModel;
import st.system.service.DingdanService;

@Controller
@RequestMapping("/dingdanAction")
public class DingdanAction extends BaseAction{
	@Autowired(required = false)
	private DingdanService<DingdanModel> dingdanService;
	
	
	@RequestMapping("/addDingdan.do")
	public String addDingdan(int[] sp_id, int[] quantity, int[] sh_dizhi_id, HttpServletRequest request) {
		DingdanModel model = new DingdanModel();
		System.out.println(sp_id.length);
		for(int i = 0; i < sp_id.length; i ++ ) {
			int spid = sp_id[i];
			model.setSp_id(spid);
			int shuliang = quantity[i];
			model.setQuantity(shuliang);
			int address = sh_dizhi_id[i];
			model.setSh_dizhi_id(address);
			GouwucheModel gouwuche = (GouwucheModel) SessionUtils.getAttr(request, "listdindgan");
			float price1 = gouwuche.getPrice();
			float money = price1 * shuliang;
			model.setMoney(money);
			UserModel model1 = (UserModel) SessionUtils.getAttr(request, "model");
			model.setSeller_id(model1.getUsername());
			dingdanService.insertDingdan(model);
		}
		return "index";
		
	}
	
	
	public String selectDingdan(DingdanModel model) {
		List<DingdanModel> model1 = dingdanService.selectDingdan(model);
		return null; 
		
	}

}
