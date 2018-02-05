package st.system.action;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import st.core.action.BaseAction;
import st.core.session.SessionUtils;
import st.system.model.MaijiaModel;
import st.system.model.UserModel;
import st.system.service.MaijiaService;

@Controller
@RequestMapping("Maijia")
public class MaijiaAction extends BaseAction {

	@Autowired(required = false)
	private MaijiaService<MaijiaModel> maijiaService;

	/**
	 * 添加商品
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "addShangpin", method = RequestMethod.POST)
	public String addShangpin(MaijiaModel model, @RequestParam(value = "urla", required = false) MultipartFile file,
			HttpServletRequest request) {
		String path = request.getSession().getServletContext().getRealPath("upload");
		String fileName = file.getOriginalFilename();
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String url = request.getContextPath() + "/upload/" + fileName;
		model.setUrl(url);
		UserModel model1 = (UserModel) SessionUtils.getAttr(request, "model12");
		model.setUser_id(model1.getUsername());
		maijiaService.insertShangpin(model);
		return xsShangpin(model, request);

	}

	/**
	 * 显示分类
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("xsFenlei")
	public String xsFenlei(MaijiaModel model, HttpServletRequest request) {
		// 分页
		Integer Count = maijiaService.selCount1(model);// 查询所有分类数量
		model.setRows(10);// 先把rows放入model
		model.getPager().setRowCount(Count);// 后放
		MaijiaModel search = model;
		request.setAttribute("search", search);
		// 分类
		List<MaijiaModel> maijiamodel = maijiaService.selectFenlei(model);
		SessionUtils.setAttr(request, "xsFenlei", maijiamodel);
		return "mai";
	}
	/**
	 * 显示商品
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("xsShangpin")
	public String xsShangpin(MaijiaModel model, HttpServletRequest request) {
		List<MaijiaModel> xsshangpin = maijiaService.selectShangpin(model);
		SessionUtils.setAttr(request, "xsshangpin", xsshangpin);
		return "mai2";
	}
	
	/**
	 * 删除商品
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/deleteShangpin.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteShangpin(MaijiaModel model, HttpServletRequest request) {
		maijiaService.deleteShangpin(model);
		UserModel model1 = (UserModel) SessionUtils.getAttr(request, "model12");
		model.setUser_id(model1.getUsername());
		List<MaijiaModel> maijiamodel = maijiaService.selectShangpin(model);
		SessionUtils.setAttr(request, "xsshangpin", maijiamodel);
		return "1";
		
	}

}
