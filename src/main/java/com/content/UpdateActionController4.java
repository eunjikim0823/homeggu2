package com.content;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.content.BoardCommand;

//AbstractCommandController =>입력을 받아서 자동적으로 Setter Method 호출
//스프링 =>쇼핑물
@Controller
public class UpdateActionController4 {
      //setCommandClass(BoardCommand command)상속받아서 이미 가지고 있는 상태

	@Autowired
	BoardDAO dao;//BoardDAO dao=new BoardDAO();

	@Autowired
	private BoardCommand command;
	/*
	public void setDao(BoardDAO dao) { //<property name="dao"></property>
		this.dao = dao;
		System.out.println("setDao()호출됨(dao)=>"+dao);
	}
	//1.request(요청객체) 2.response(응답객체)
	//3.입력받은 값을 저장한객체(Object (다입력이 가능 O)
	//4.BindException =>사용자로부터 값을 입력시 에러발생 ->예외처리 클래스
	*/
	@RequestMapping("/update.do")
	public String updateBoard(BoardCommand data) throws IOException {

		String oldFileName=data.getFileName(); //oldfile은 data에서 가지고 온 파일명
/*
		//1.업로드가 되어있다면 (업로드한 파일이 있다면)
		if(!command.getUploadFile().isEmpty()) {
			//탐색기에서 선택한 파일이름=>getOriginalFileName() (aaa.txt)
			try {
				String newFileName = write.getFileName();
				String ext = FilenameUtils.getExtension(originalFileName);	//확장자 구하기
				//String rename =
				//UUID uuid = UUID.randomUUID();	//UUID 구하기
				//fileName=newNum+"."+ext; //파일이름 게시물번호랑 일치시킴
				fileName=newNum+".png";
				uploadFile.transferTo
				(new File("C:\\Class\\webtest\\4.jsp\\sou2\\boardspring6\\src\\main\\webapp\\picture\\upload\\" + fileName));

			}
			}catch(Exception e) {e.printStackTrace();}
		}else {//새로운 파일로 업로드 하지 않은 경우(기존 파일 덮어쓰기)
			data.setFilename(oldFileName);//aaa.txt 그대로 다시저장
		}

		//글수정 호출
		boardDao.update(command);//DB상에 반영->aaa.txt->ttt.png
		//새로 업로드한 파일이 있다면 올려준파일을 내 서버의 upload위치로 이동하라
		if(!command.getUpload().isEmpty()) {
			try {
//새로 변경된 파일명을 업로드위치로 전송하기위한 파일객체생성
File file=new File(FileUtil.UPLOAD_PATH+"/"+command.getFilename());
			//물리적으로 데이터전송(파일 전송)->transferTo(전송할  파일정보)
			command.getUpload().transferTo(file);// /upload/전송

			}catch(IOException e) {
				e.printStackTrace();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
	     //기존의 파일은 삭제하는 구문이 필요
			if(oldFileName!=null) {
				FileUtil.removeFile(oldFileName);
			}
		}//if(!command.getUpload().isEmpty()) {
   }//else =>암호가 맞다면
*/
		System.out.println("UpdateActionController의 handle()호출됨");

		dao.update(data);
	    return ("redirect:/list.do");
	}
}
