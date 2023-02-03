package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.board.vo.BoardVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends EgovAbstractDAO{
	
	

	public String insertBoard(BoardVO vo) {
		return (String)insert("boardDAO.InsertBoard",vo);
	}

	public List selectAll() {
		return list("boardDAO.selectAll");
	}

	public BoardVO boardContent(int content) {
		return (BoardVO)select("boardDAO.boardContent",content);
	}

	public int contentEdit(BoardVO bv) {
		return update("boardDAO.contentEdit",bv);
	}

	public int contentDelete(int no) {
		return delete("boardDAO.contentDelete",no);
	}



	
	
}
