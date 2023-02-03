package egovframework.example.sample.service;

import java.util.List;

import egovframework.board.vo.BoardVO;

public interface BoardService {
	
	public String insertBoard(BoardVO vo);
	
	public List selectBoardAll();
	
	public BoardVO boardContent(int content);
	
	public int contentEdit(BoardVO bv);
	
	public int contentDelete(int no);
	

}
