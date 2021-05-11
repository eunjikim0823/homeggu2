package content;

//servlet-api.jar를 없어서 에러 발생 ->jar파일 불러올것
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.mvc.Controller;

//public class ListAction implements CommandAction {
//페이지 이동,클래스는 틀리지만 요청해서 처리해주는 메서드 기능은 동일
@Controller
public class WatchActionController{

	BoardDAO dao;//BoardDAO dao=new BoardDAO();

	@Required
	@Autowired
	public void setDao(BoardDAO dao) { //<property name="dao"></property>
		this.dao = dao;
		System.out.println("WatchActionController setDao()호출됨(dao)=>"+dao);
	}
    // retrieve.do?num=4 =>get방식
	@RequestMapping("/Content_watch.do")
	public ModelAndView handleRequest(HttpServletRequest request,
			                                                  HttpServletResponse response) throws Exception {

		System.out.println("WatchActionController의 handleRequest()호출됨");
		// TODO Auto-generated method stub
		String num=request.getParameter("num");
		//Board data=dao.retrieve(num);
	    //추가
		dao.updateReadcnt(num);//readcnt=readcnt+1
		CBoardCommand data=dao.watch(num);
		//--------------------------------------------
		ModelAndView mav=new ModelAndView("Content_watch");
		mav.addObject("Content_watch",data);//request.setAttribute("list",list);
		//${data(키명)}
		return mav;//return "/list.jsp"; //viewResolver가 알려줌
	}
}
