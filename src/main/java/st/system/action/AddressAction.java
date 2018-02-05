package st.system.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import st.core.action.BaseAction;
import st.core.session.JSONUtil;
import st.core.session.SessionUtils;
import st.system.model.AddressModel;
import st.system.model.UserModel;
import st.system.service.AddressService;
@Controller
@RequestMapping("/Address")
public class AddressAction extends BaseAction {
	
	@Autowired(required = false)
	private AddressService<AddressModel> addressService;
	
	/**
	 * 查询地址
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("address")
	public String address(AddressModel model, HttpServletRequest request) {
		List<AddressModel> addressModel = addressService.select(model);
		SessionUtils.setAttr(request, "addressModel", addressModel);
		return "vipAddress";
		
	}
	
	
	/**
	 * 查询地址
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/selectAddress.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String selecteAddress(AddressModel model, HttpServletRequest request) {
		AddressModel selectmodel = addressService.selecteAddress(model);
		return JSONUtil.toJSONString(selectmodel);
	}

	/**
	 * 修改地址
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("updateAddress")
	public String updateAddress(AddressModel model, HttpServletRequest request) {
		addressService.updateAddress(model);
		return address(model, request);
	}
	/**
	 * �添加地址ַ
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/addAddress")	
	public String addAddress(AddressModel model, HttpServletRequest request) {
		 addressService.insertAddress(model);
		 return address(model, request);
	}
	/**
	 * 删除地址
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteAddress.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteAddress(AddressModel model, HttpServletRequest request) throws Exception {
		addressService.deleteAddress(model);
		UserModel userModel = (UserModel)SessionUtils.getAttr(request, "model");
		String username = userModel.getUsername();
		model.setUsername(username);
		List<AddressModel> addressModel = addressService.select(model);
		SessionUtils.setAttr(request, "addressModel", addressModel);
		return "1";
	}

	
	
	
}
