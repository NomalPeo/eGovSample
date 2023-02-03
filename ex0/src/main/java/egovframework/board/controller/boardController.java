package egovframework.board.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.board.vo.BoardVO;
import egovframework.example.sample.service.BoardService;

@Controller
public class boardController {
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping(value="/boardWrite.do")
	public String boardWrite() {
		return "boardWrite/boardWrite";
	}
	
	@RequestMapping(value="boardWriteSave.do")
	public String boardWriteSave(Model model, BoardVO bv) {
		boardService.insertBoard(bv);
		return "redirect:/boardListAll.do";
	}
	
	@RequestMapping(value="boardContent.do")
	public String boardContent(int no,Model model) {
		BoardVO content = boardService.boardContent(no);
		model.addAttribute("content", content);
		System.out.println(content.getContent());
		return "boardContent/boardContent";
	}
	
	@RequestMapping(value="boardEdit.do")
	public String boardEdit(int no,Model model) {
		BoardVO content = boardService.boardContent(no);
		model.addAttribute("content", content);
		System.out.println(content.getContent());
		return "boardEdit/boardEdit";
	}
	
	@RequestMapping(value="boardEditOK.do")
	public String boardEditOK(int no,BoardVO bv) {
		boardService.contentEdit(bv);
		return "redirect:/boardContent.do?no="+no;
	}
	
	@RequestMapping(value="boardDelete.do")
	public String boardDelete(int no) {
		boardService.contentDelete(no);
		return "redirect:/boardListAll.do";
	}

	
	@RequestMapping(value="boardListAll.do")
	public String boardListAll(Model model,BoardVO bv) {
		List<BoardVO> list = boardService.selectBoardAll();
		model.addAttribute("list",list);
		for(Object val:list) {
			System.out.println(val);
		}
		return "boardList/boardList";
	}
	
}
