package com.Flower.Control;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Buy.DAO.BDao;
import com.Member.DAO.MDao;
import com.Member.DTO.MDto;
import com.javayongju.profile_home.dao.IDao;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private SqlSession sqlSession;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/form_login")
	public String form_login() {

		return "Member/form_login";
	}
	
	 @RequestMapping(value = "/logout")
	   public String logout() {
	      
	      return "Member/logout";
	   }

	@RequestMapping(value = "/form_join")
	public String form_join() {

		return "Member/form_join";
	}

	@RequestMapping(value = "/form_joinok")
	public String form_joinok(HttpServletRequest request , Model model) {
		MDao dao = sqlSession.getMapper(MDao.class);
		int checkId = dao.checkIdDao(request.getParameter("mId"));	

		model.addAttribute("checkId", checkId);

		if (checkId != 1) {
			dao.joinDao(request.getParameter("mId"), request.getParameter("mPw"), request.getParameter("mName"), request.getParameter("mPhone"), request.getParameter("mAddr"), request.getParameter("mEmail"));

			HttpSession session = request.getSession();
			session.setAttribute("mId", request.getParameter("mId"));

			model.addAttribute("mName", request.getParameter("mName"));
		}

		return "Member/form_joinok";
	}
	
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model) {      

		MDao dao = sqlSession.getMapper(MDao.class);
		MDto mDto = dao.loginOkDao(request.getParameter("mId"));

		int checkId = dao.checkIdDao(request.getParameter("mId"));
		int checkPw = dao.checkPwDao(request.getParameter("mId"), request.getParameter("mPw"));

		model.addAttribute("checkId", checkId);
		model.addAttribute("checkPw", checkPw);

		HttpSession session = request.getSession();

		if(checkPw == 1) {
			session.setAttribute("mId", mDto.getmID());
			session.setAttribute("mName", mDto.getmName());
			model.addAttribute("mId", mDto.getmID());
			model.addAttribute("mName", mDto.getmName());
		}

		return "Member/loginOk";
	}
	//??? ?????? ??????(??? ?????? ??????)  -- > ?????? ??????
	@RequestMapping(value = "/list_info")
	public String list_info() {

		return "list_info";
	}
	@RequestMapping(value = "/myinfo")
	public String myinfo() {
		return "Member/myinfo";
	}
	// ??? ????????? ???????????? ?????????
	@RequestMapping(value = "/info_modify")
	public String info_modify() {

		return "Member/info_modify";
	}

	@RequestMapping(value = "/info_cart")
	public String info_cart() {

		return "Member/info_cart";
	}

	@RequestMapping(value = "/info_order")
	public String info_order() {

		return "Member/info_order";
	}

	// ?????? ???????????? ??? ???????????? ??????
	@RequestMapping(value = "/modify_info")
	public String modify_info() {

		return "redirect:list_info";
	}

	//siyeon part. end

	//???????????? ?????????
	@RequestMapping(value = "/list_cart")
	public String list_cart(HttpServletRequest request, Model model) {
		
		return "Cart/list_cart";
	}
	// ?????? --> ????????????
	@RequestMapping(value = "/add_cart")
	public String add_cart() {

		return "Cart/add_cart";
	}
	//?????? ?????? ??????
	@RequestMapping(value = "/delete_cart")
	public String delete_cart() {

		return "redirect:Cart/list_cart";
	}
	//?????? ?????? ??????
	@RequestMapping(value = "/remove_cart")
	public String remove_cart() {

		return "redirect:Cart/list_cart";
	}
	//??? ???????????? ?????? ????????????
	@RequestMapping(value = "/list_payment")
	public String list_payment(Model model) {
		
		BDao dao = sqlSession.getMapper(BDao.class);
		model.addAttribute("list", dao.listDao());

		return "Cart/list_payment";
	}
	//?????????????????? main??????
	@RequestMapping(value = "/payment")
	public String payment() {

		return "redirect:index";
	}
	//?????? ??????
	@RequestMapping(value = "/list_order")
	public String list_order(HttpServletRequest request, Model model) {
		
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.orderDao(request.getParameter("bNum"), request.getParameter("bName"), request.getParameter("bPhone"), request.getParameter("bAddr"), request.getParameter("bEmail"), request.getParameter("bPname"), request.getParameter("bPstock"), request.getParameter("bPimg"), request.getParameter("bTotal"));
		
		/*
		 * dao.orderDao(request.getParameter("bNum"), request.getParameter("bName"),
		 * request.getParameter("bPhone"), request.getParameter("bAddr"),
		 * request.getParameter("bEmail"), request.getParameter("bPname"),
		 * request.getParameter("bPstock"), request.getParameter("bPimg"),
		 * request.getParameter("bTotal"));
		 */
		/*
		 * session id ????????? MemberDto ?????? ???????????? ???????????? ?????? ?????? ????????????????????? MemberDto ?????? ?????? ??? ??? ?????????
		 */
		return "Cart/list_order";
	}
	//?????? ??????
	@RequestMapping(value = "/delete_order")
	public String delete_order() {

		return "redirect:Cart/list_order";
	}

	// Yongju part. end

	//?????? ??????
	@RequestMapping(value = "/")
	public String index() {

		return "index";
	}

	@RequestMapping(value="/index")
	public String index1() {
		return "index";
	}
	//????????????(???,??????)
	@RequestMapping(value = "/list_product_flower")
	public String list_product_flower() {

		return "list_product_flower";
	}
	//????????????(??????)
	@RequestMapping(value = "/list_product_port")
	public String list_product_port() {

		return "list_product_port";
	}
	//????????????(??????)
	@RequestMapping(value = "/list_product_gift")
	public String list_product_gift() {

		return "list_product_gift";
	}
	//??????????????????
	@RequestMapping(value = "/list_details")
	public String list_details() {

		return "list_details";
	}



	//????????????(???)
	@RequestMapping(value = "/flowers")
	public String flowers() {

		return "Product/flowers";
	}
	//????????????(??????)
	@RequestMapping(value = "/pots")
	public String pots() {

		return "Product/pots";
	}
	//????????????(??????)
	@RequestMapping(value = "/plants")
	public String plants() {

		return "Product/plants";
	}
	//??????(??????)
	@RequestMapping(value = "/toolshed")
	public String toolshed() {

		return "Product/toolshed";
	}

	// ?????? ????????????
	@RequestMapping(value = "/idx1")
	public String idx1() {

		return "all-product-list/idx1";
	}

}
