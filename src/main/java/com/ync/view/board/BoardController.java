package com.ync.view.board;

import com.ync.biz.board.BoardVO;
import com.ync.biz.board.impl.BoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@SessionAttributes("board")
public class BoardController {

    @Autowired
    private ServletContext servletContext;

    @RequestMapping("/dataTransform.do")
    @ResponseBody
    public List<BoardVO> dataTransform (BoardVO vo, BoardDAO boardDAO) {
        vo.setSearchCondition("TITLE");
        vo.setSearchKeyword("");
        List<BoardVO> boardList = boardDAO.getBoardList(vo);
        return boardList;
    }

    //검색 조건 목록 설정
    @ModelAttribute("conditionMap")
    public Map<String, String> searchConditionMap() {
        Map<String, String> conditionMap = new HashMap<String, String>();
        conditionMap.put("제목", "TITLE");
        conditionMap.put("내용", "CONTENT");
        return conditionMap;
    }

    //글 등록
    @RequestMapping(value = "/insertBoard.do")
    public String insertBoard(BoardVO vo, BoardDAO boardDAO) throws IOException {
        MultipartFile uploadFile = vo.getUploadFile();
        if (!uploadFile.isEmpty()) {
            String realPath = servletContext.getRealPath("/");
            String fileName = uploadFile.getOriginalFilename();
            uploadFile.transferTo(new File(realPath + "/resources/upload/" + fileName));
        }
        boardDAO.insertBoard(vo);
        return "getBoardList.do";
    }

    // 글 수정
    @RequestMapping("/updateBoard.do")
    public String updateBoard(@ModelAttribute("board") BoardVO vo, BoardDAO boardDAO) {
        System.out.println("번호 : " + vo.getSeq());
        System.out.println("제목 : " + vo.getTitle());
        System.out.println("작성자 : " + vo.getWriter());
        System.out.println("내용 : " + vo.getContent());
        System.out.println("등록일 : " + vo.getRegDate());
        System.out.println("조회수 : " + vo.getCnt());
        boardDAO.updateBoard(vo);
        return "getBoardList.do";
    }

    //글 삭제
    @RequestMapping("/deleteBoard.do")
    public String deleteBoard(BoardVO vo, BoardDAO boardDAO) {
        boardDAO.deleteBoard(vo);
        return "getBoardList.do";
    }

    // 글 상세 조회
    @RequestMapping("/getBoard.do")
    public String getBoard(BoardVO vo, BoardDAO boardDAO, Model model) {
        model.addAttribute("board", boardDAO.getBoard(vo)); //Model 정보 저장
        return "getBoard.jsp";
    }

    //글 목록 검색
    @RequestMapping("/getBoardList.do")
    public String getBoardList(BoardVO vo, BoardDAO boardDAO, Model model) {
        if (vo.getSearchCondition() == null) vo.setSearchCondition("TITLE");
        if (vo.getSearchKeyword() == null) vo.setSearchKeyword("");
        model.addAttribute("boardList", boardDAO.getBoardList(vo)); //Model 정보 저장
        return "getBoardList.jsp";
    }


}
