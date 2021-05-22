package content;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

//AbstractCommandController =>입력을 받아서 자동적으로 Setter Method 호출
//public class WriteActionController extends AbstractCommandController {
@Controller
public class WriteActionController {
      //setCommandClass(BoardCommand command)상속받아서 이미 가지고 있는 상태

	@Autowired
      BoardDAO dao;//BoardDAO dao=new BoardDAO();

	@RequestMapping("/View/Content/Content_write.do")
	public String insertBoard(BoardCommand data) throws IOException {

		String fileName=null;

		int newNum=dao.getNewNum()+1;
		data.setNum(newNum);

		// 파일 업로드 처리
			MultipartFile uploadFile =data.getUploadFile();

			if (!uploadFile.isEmpty()) {

			     int width = 300;
			     int height = 300;

				String originalFileName = uploadFile.getOriginalFilename();
				String ext = FilenameUtils.getExtension(originalFileName);	//확장자 구하기
				//String rename =
				//UUID uuid = UUID.randomUUID();	//UUID 구하기
				//fileName=newNum+"."+ext; //파일이름 게시물번호랑 일치시킴
				fileName=newNum+".png";
				uploadFile.transferTo
				(new File("C:\\Class\\webtest\\4.jsp\\sou2\\boardspring9\\src\\main\\webapp\\picture\\upload\\" + fileName+width+height));
				}


			data.setFileName(fileName);
			dao.write(data);
			return "redirect:View/Content/Content_list.do";
	}
}



	/*protected ModelAndView test(@RequestParam("title") String title,
			                                       @RequestParam("author") String author,
			                                       @RequestParam("content") String content,
			                                       @RequestParam("hsize") String hsize,
			                                       @RequestParam("mate") String mate,
			                                       @RequestParam("type") String type,
			                                       @RequestParam("pwd") String pwd,
			                                       @RequestParam("fileName") String fileName
			)
			                                           throws Exception {
		// TODO Auto-generated method stub
		System.out.println("WriteActionController의 handle()호출됨");

		BoardCommand data=new BoardCommand();
		int newNum=dao.getNewNum()+1;
		data.setNum(newNum);//data.getNum() =>#{num}

		System.out.println("data 불러와서 번호 호출"+ data);


		MultipartFile uploadFile = data.getUploadFile();

		System.out.println("uploadFile에 데이터 값 저장"+ uploadFile);

		if (!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName);	//확장자 구하기
			UUID uuid = UUID.randomUUID();	//UUID 구하기
			fileName=uuid+"."+ext;
			uploadFile.transferTo(new File("C:\\Class\\" + fileName));

			System.out.println("uploadFile파일 class에 저장"+ uploadFile);
		}

			data.setFileName(fileName);

			System.out.println("fileName="+ fileName);

		//수동 => <jsp:setProperty name="객체명" property="*" />
			data.setTitle(title);
			data.setAuthor(author);
			data.setContent(content);
			data.setHsize(hsize);
			data.setMate(mate);
			data.setType(type);
			data.setPwd(pwd);
			data.setFileName(fileName);
			dao.write(data);//data.getWriter() =>#{writer},,,

			System.out.println("Write content="+content);

			return new ModelAndView("redirect:/list.do");
	}

} */