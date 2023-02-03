package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.board.vo.BoardVO;
import egovframework.example.sample.service.BoardService;

@Service("boardService")
public class BoardServiceImpl extends EgovSampleServiceImpl implements BoardService {
	
	@Resource(name="boardDAO")
	private BoardDAO boardDAO;
	
	@Override
	public String insertBoard(BoardVO vo) {
		return boardDAO.insertBoard(vo);
	}

	@Override
	public List<?> selectBoardAll() {
		return boardDAO.selectAll();
	}

	@Override
	public BoardVO boardContent(int content) {
		return boardDAO.boardContent(content);
	}

	@Override
	public int contentEdit(BoardVO bv) {
		return boardDAO.contentEdit(bv);
	}

	@Override
	public int contentDelete(int no) {
		return boardDAO.contentDelete(no);
	}

	
	
	
}
