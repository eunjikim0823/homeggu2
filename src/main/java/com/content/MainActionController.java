package com.content;
/*
package content;

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
public class MainActionController {

	BoardDAO dao;// BoardDAO dao=new BoardDAO();

	@Required
	@Autowired
	public void setDao(BoardDAO dao) {
		this.dao = dao;

	}


	@RequestMapping("/Main.do")
		public ModelAndView handleRequest(HttpServletRequest request,
	            HttpServletResponse response) throws Exception {

		System.out.println("1. MainListActionController의 handleRequest()호출됨");

		int currentPage = request.getParameter("currentPage") == null ? 1 : Integer.parseInt(request.getParameter("currentPage"));
		int cntPerPage = request.getParameter("cntPerPage")  == null ? 12 : Integer.parseInt(request.getParameter("cntPerPage"));
		int pageSize = request.getParameter("pageSize") == null ? 12 : Integer.parseInt(request.getParameter("pageSize"));

		int listCnt = dao.getBoardTotalCnt();
        Pagination pagination = new Pagination(currentPage, cntPerPage, pageSize);
        pagination.setTotalRecordCount(listCnt);



		List Main=dao.getPopList();
		List Main2=dao.getBoardList2(pagination);

		System.out.println("2. MainListActionController의 getPopList=>"+Main);

		ModelAndView mav=new ModelAndView();

		System.out.println("3. MainListActionController mav=>"+mav);

		mav.setViewName("Main");//이동할 파일명만!!★
		mav.addObject("Main",Main);//request.setAttribute("list",list);
		mav.addObject("pagination", pagination);

		System.out.println("4. MainListActionController getPopList=>"+Main);

		return mav;
	}
}

*/