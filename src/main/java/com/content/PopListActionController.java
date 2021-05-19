package com.content;

import java.util.List;

//servlet-api.jar를 없어서 에러 발생 ->jar파일 불러올것
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@Autowired
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
//어노테이션과 연관된 클래스.인터페이스 불러오게 되어있다.
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PopListActionController {

	BoardDAO dao;// BoardDAO dao=new BoardDAO();

	@Required
	@Autowired
	public void setDao(BoardDAO dao) {
		this.dao = dao;

	}

	@RequestMapping("/getPopList.do")
		public ModelAndView handleRequest(HttpServletRequest request,
	            HttpServletResponse response) throws Exception {

		System.out.println("1. Poplist ListActionController의 handleRequest()호출됨");

	//	int listCnt2 = dao.getBoardTotalCnt();

		List getPopList=dao.getPopList();

		System.out.println("2. getPopList ListActionController의 getPopList=>"+getPopList);

		//화면에 출력할 Poplist.jsp에 전달할 페이지와 전달할값을 설정
		ModelAndView mav=new ModelAndView();
		System.out.println("3. getPopList mav=>"+mav);

		mav.setViewName("getPopList");//이동할 파일명만!!★
		
		mav.addObject("getPopList",getPopList);//request.setAttribute("list",list);
		System.out.println("4. getPopList getPopList=>"+getPopList);

		return mav;

	}

}
