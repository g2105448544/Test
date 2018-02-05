package st.system.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import st.core.action.BaseAction;
import st.core.session.SessionUtils;
import st.system.model.GouwucheModel;
import st.system.model.UserModel;
import st.system.service.GouwucheService;

@Controller
@RequestMapping("gouwuche")
public class GouwucheAction extends BaseAction {
	@Autowired(required = false)
	private GouwucheService<GouwucheModel> gouwucheservice;
	/**
	 * 添加购物车
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("addGouwuche")
	public String addGouwushe(GouwucheModel model, HttpServletRequest request) {
		int count = gouwucheservice.selectByid(model);
		if(count != 0) {
			GouwucheModel gmodel = gouwucheservice.selectsp(model);
			int sl = gmodel.getQuantity();
			int id = gmodel.getId();
			model.setQuantity(sl+1);
			model.setId(id);
			gouwucheservice.updateQuantity(model);
			return "proinfo";
		}
		UserModel model1 = (UserModel) SessionUtils.getAttr(request, "model");
		model.setUserid(model1.getUsername()); 
		gouwucheservice.insertGouwuche(model);
		return "proinfo";
	}
	@RequestMapping("selectGowuche")
	public String selectGouwuche(GouwucheModel model, HttpServletRequest request) {
		if(SessionUtils.getAttr(request, "model") == null) {
			return "login";
		}
		UserModel model2 = (UserModel) SessionUtils.getAttr(request, "model");
		model.setUserid(model2.getUsername());
		List<GouwucheModel> list = gouwucheservice.selectGouwuche(model);
		SessionUtils.setAttr(request, "gouwuche", list);
		return "order";
		
	}
	@RequestMapping("deleteGowuche")
	public String deleteGouwuche(GouwucheModel model, HttpServletRequest request) {
		gouwucheservice.deleteGouwuche(model);
		List<GouwucheModel> list = gouwucheservice.select(model);
		SessionUtils.setAttr(request, "gouwuche", list);
		return "order";
		
	}
	@RequestMapping("/addDingdan.do")
	public String addDingdan(int[] spid, HttpServletRequest request) throws Exception {
		List<GouwucheModel> listdindgan = new ArrayList<GouwucheModel>();
		GouwucheModel model = new GouwucheModel();
		if(spid == null) {
			return "order";
		}
		for(int i = 0;i < spid.length; i++) {
			int sz = spid[i];
			model.setId(sz);
			GouwucheModel querendingdan = gouwucheservice.selectgouwuche(model);
			listdindgan.add(querendingdan); 
		}
		SessionUtils.setAttr(request, "	", listdindgan);
		UserModel username = (UserModel) SessionUtils.getAttr(request, "model");
		model.setUserid(username.getUsername());
		List<GouwucheModel> chadizhi = gouwucheservice.chadizhi(model);
		SessionUtils.setAttr(request, "chadizhi", chadizhi);
		return "order2";
	}
	@RequestMapping("updateGouwuche.do")
	@ResponseBody
	public String updateGouwuche(GouwucheModel model) {
		gouwucheservice.updategouwuche(model);
		return null;
		
	}

	
	

}
