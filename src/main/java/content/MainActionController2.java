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


//AbstractCommandController =>입력을 받아서 자동적으로 Setter Method 호출
//public class WriteActionController extends AbstractCommandController {
@Controller
public class MainActionController2 {
      //setCommandClass(BoardCommand command)상속받아서 이미 가지고 있는 상태

	BoardDAO dao;// BoardDAO dao=new BoardDAO();

	@Required
	@Autowired
	public void setDao(BoardDAO dao) {
		this.dao = dao;

	}

	@RequestMapping("/Main2.do")
	public ModelAndView handleRequest(HttpServletRequest request,
			                                                  HttpServletResponse response) throws Exception {
		System.out.println("MainActionController의 handleRequest()호출됨");



		int currentPage = request.getParameter("currentPage") == null ? 1 : Integer.parseInt(request.getParameter("currentPage"));
		int cntPerPage = request.getParameter("cntPerPage")  == null ? 12 : Integer.parseInt(request.getParameter("cntPerPage"));
		int pageSize = request.getParameter("pageSize") == null ? 12 : Integer.parseInt(request.getParameter("pageSize"));

		int listCnt = dao.getBoardTotalCnt();
        Pagination pagination = new Pagination(currentPage, cntPerPage, pageSize);
        pagination.setTotalRecordCount(listCnt);

		//ArrayList list=dao.list();
		List list=dao.list();
		List list2=dao.getBoardList2(pagination);
		System.out.println("MainActionController의 list=>"+list);
		//화면에 출력할 list.jsp에 전달할 페이지와 전달할값을 설정
		ModelAndView mav=new ModelAndView();
		mav.setViewName("Main2");//이동할 파일명만
		mav.addObject("Main2",list);//request.setAttribute("list",list);
		// mav.addObject("list2", list2);
		mav.addObject("pagination", pagination);
		//${list(키명)}
		return mav;//return "/list.jsp"; //viewResolver가 알려줌



	}



	/*
	 * @RequestMapping("/Main2.do") public ModelAndView
	 * handleRequest(HttpServletRequest request, HttpServletResponse response)
	 * throws Exception {
	 *
	 * System.out.println("1. MainActionController의 handleRequest()호출됨");
	 *
	 * // int listCnt2 = dao.getBoardTotalCnt();
	 *
	 * List getPopList=dao.getPopList();
	 *
	 * System.out.println("2. MainActionController의 getPopList=>"+getPopList);
	 *
	 * //화면에 출력할 Poplist.jsp에 전달할 페이지와 전달할값을 설정 ModelAndView mav=new ModelAndView();
	 * System.out.println("3. Main mav=>"+mav);
	 *
	 * mav.setViewName("Main2");//이동할 파일명만!!★
	 * mav.addObject("Main2",getPopList);//request.setAttribute("list",list);
	 *
	 *
	 * return mav;
	 *
	 * }
	 */
}
