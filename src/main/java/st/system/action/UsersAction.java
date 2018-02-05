package st.system.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import st.core.action.BaseAction;
import st.core.session.SessionUtils;
import st.system.model.UserModel;
import st.system.model.UsersModel;
import st.system.service.UsersService;
@Controller
@RequestMapping("/Users")
public class UsersAction extends BaseAction{
	
	@Autowired(required = false)
   private UsersService<UsersModel> usersService;
	
	/**
	 * ��ѯ�û���Ϣ
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/address")
	public String address (UsersModel model, HttpServletRequest request) {
		if(SessionUtils.getAttr(request, "model") == null) {
			return "login";
		}
		UserModel model1 = (UserModel) SessionUtils.getAttr(request, "model");
		model.setUsername(model1.getUsername());
		List<UsersModel>  usersmodel = usersService.selectAddress(model);
    	SessionUtils.setAttr(request, "usermodel", usersmodel);
		return "vipMy";
	}
	@RequestMapping("/address2")
	public String address2 (UsersModel model, HttpServletRequest request) {
		UserModel userModel = (UserModel)SessionUtils.getAttr(request, "model12");
		String username = userModel.getUsername();
		model.setUsername(username);
		List<UsersModel>  usersmodel = usersService.selectAddress(model);
		
    	SessionUtils.setAttr(request, "usermodel", usersmodel);
		return "maiIndex";
	}
	/**
	 * �޸��û���Ϣ
	 * @param model
	 * @param request
	 * @return
	 */
	
	@RequestMapping("/updateAddress")
	public String updateAddress(UsersModel model,HttpServletRequest request) {
		usersService.updateAddress(model);
		return address(model, request);
		
	}
}
