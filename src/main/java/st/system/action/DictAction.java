package st.system.action;


import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import st.core.action.BaseAction;
import st.core.session.SessionUtils;
import st.system.model.UserModel;
import st.system.service.UserServic;

@Controller
@RequestMapping("/dict")
public class DictAction extends BaseAction {

    @Autowired(required = false)
    private UserServic<UserModel> userServic;
    /**
     * 注册
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("addUser")
    public String addUser(UserModel model) throws Exception{
    	UserModel model1 = new UserModel();
    	model1.setUsername(model.getUsername());
    	model1.setUserpass(model.getUserpass());
    	model1.setName(model.getName());
        userServic.insert(model1);
		return "login";
    }
    /**
     * 登陆
     * @param model
     * @return
     * @throws Exception 
     */
    @RequestMapping("/login")
    public String login(UserModel model, HttpServletRequest request) throws Exception {
    	UserModel model1 = new UserModel();
    	UserModel usermodel = userServic.select(model);
    	int maimai = usermodel.getMaimai();
    	model1.setUsername(model.getUsername());
    	model1.setUserpass(model.getUserpass());
    	int log = userServic.selectCount(model1);
    	if (log != 0 && maimai == 0) {
    		UserModel user = userServic.select(model);
    		SessionUtils.setAttr(request, "model",user);
    		return "index";
    	}
    	return "login";
    }
    /**
     * 商家登陆
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("vipLogin")
    @ResponseBody
    public String vipLogin(UserModel model, HttpServletRequest request) throws Exception {
    	UserModel model2 = new UserModel();
    	UserModel usermodel = userServic.select(model);
    	int maimai = usermodel.getMaimai();
    	model2.setUsername(model.getUsername());
    	model2.setUserpass(model.getUserpass());
    	int log = userServic.selectCount(model2);
    	if(log != 0 && maimai == 1) {
    		UserModel user = userServic.select(model);
    		SessionUtils.setAttr(request, "model12",user);
    		return "maiIndex";
    	}
		return "login2";
    }
    @RequestMapping(value = "/getUser",produces = "application/text;charset=utf-8")
    @ResponseBody
    public Object getUser(HttpServletRequest request) {
    	UserModel usermodel = (UserModel) SessionUtils.getAttr(request, "model");
		if(usermodel == null) {
			return null;
		}
    	String name = usermodel.getName();	
    	return name;
    }
    @RequestMapping(value = "/getUser12",produces = "application/text;charset=utf-8")
    @ResponseBody
    public Object getUser12(HttpServletRequest request) {
    	UserModel usermodel = (UserModel) SessionUtils.getAttr(request, "model12");
		if(usermodel == null) {
			return null;
		}
    	String name = usermodel.getName();	
    	return name;
    }
    @RequestMapping("logout.do")
    public String logout(HttpServletRequest request, String key) {
    	SessionUtils.removeAttr(request, "model");
		return "index";	
    }
    @RequestMapping("logout2.do")
    public String logout2(HttpServletRequest request, String key) {
    	SessionUtils.removeAttr(request, "model12");
		return "maiIndex";	
    }
    
    @RequestMapping(value = "vipuserName", produces = "appliction/text;charset=utf-8")
    @ResponseBody
    public Object vipuserName(HttpServletRequest request) {
    	UserModel usermodel = (UserModel) SessionUtils.getAttr(request, "model");
    	if (usermodel == null) {
    		return null;
    	}
    	String username = usermodel.getUsername();
		return username;  
    }
    @RequestMapping(value = "vipuserName2", produces = "appliction/text;charset=utf-8")
    @ResponseBody
    public Object vipuserName2(HttpServletRequest request) {
    	UserModel usermodel = (UserModel) SessionUtils.getAttr(request, "model12");
    	if (usermodel == null) {
    		return null;
    	}
    	String username = usermodel.getUsername();
		return username;  
    }
    
    	
    }

   