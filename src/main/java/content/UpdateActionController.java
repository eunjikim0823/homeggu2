
package content;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.mvc.AbstractCommandController;

//AbstractCommandController =>입력을 받아서 자동적으로 Setter Method 호출
//스프링 =>쇼핑물
@Controller
public class UpdateActionController {
      //setCommandClass(BoardCommand command)상속받아서 이미 가지고 있는 상태

	@Autowired
	BoardDAO dao;//BoardDAO dao=new BoardDAO();
	/*
	public void setDao(BoardDAO dao) { //<property name="dao"></property>
		this.dao = dao;
		System.out.println("setDao()호출됨(dao)=>"+dao);
	}
	//1.request(요청객체) 2.response(응답객체)
	//3.입력받은 값을 저장한객체(Object (다입력이 가능 O)
	//4.BindException =>사용자로부터 값을 입력시 에러발생 ->예외처리 클래스
	*/
	@RequestMapping("/Content_update.do")
	public String updateBoard(CBoardCommand data) throws IOException {


		System.out.println("UpdateActionController의 handle()호출됨");

		dao.update(data);
	    return ("redirect:/Content_list.do");
	}
}
