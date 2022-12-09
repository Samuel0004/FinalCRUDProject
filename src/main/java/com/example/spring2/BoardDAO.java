package com.example.spring2;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class BoardDAO {

	@Autowired
	SqlSession sqlSession;

	//글 추가
	public int insertBoard(BoardVO vo) {
		int result = sqlSession.insert("Board.insertBoard", vo);
		return result;
	}

	// 글 삭제
	public int deleteBoard(int seq){
		int result = sqlSession.delete("Board.deleteBoard", seq);
		return result;
	}

	public int updateBoard(BoardVO vo){
		int result = sqlSession.update("Board.updateBoard", vo);
		return result;
	}
	//글 수정


	//선택한 하나 출력
	public BoardVO getBoard(int seq){
		BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
		return one;
	}

	//리스트 출력
	public List<BoardVO> getBoardList(){
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;
	}


}
