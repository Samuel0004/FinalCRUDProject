package com.example.spring2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


@Repository
public class BoardDAO {
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	private final String BOARD_UPDATE = "update BOARD set category=?, title=?, writer=?, email=?, content=?, file=? where seq=?";
	private final String BOARD_DELETE = "delete from BOARD  where seq=?";
	private final String BOARD_GET = "select * from BOARD  where seq=?";
	private final String BOARD_LIST = "select * from BOARD order by seq desc";

	@Autowired
	JdbcTemplate jdbcTemplate;

	//글 추가
	public int insertBoard(BoardVO vo){
		String sql = "insert into BOARD (title, writer, content, category) values ("
				+ "'" + vo.getTitle()+"',"
				+ "'" + vo.getWriter()+"',"
				+ "'" + vo.getContent()+"',"
				+ "'" + vo.getCategory()+"')";
		return jdbcTemplate.update(sql);
	}

	// 글 삭제
	public int deleteBoard(int seq){
		String sql = "delete from BOARD where seq = " + seq;
		return jdbcTemplate.update(sql);
	}

	//글 수정
	public int updateBoard(BoardVO vo){
		String sql= "update BOARD set title = '" + vo.getTitle() +"',"
				+ " title='" + vo.getTitle()+"',"
				+ " writer='" + vo.getWriter()+"',"
				+ " content='" + vo.getContent()+"',"
				+ " category='" + vo.getCategory()+ "' where seq=" +vo.getSeq();
		return jdbcTemplate.update(sql);
	}
	
	class BoardRowMapper implements RowMapper<BoardVO> {
		public BoardVO mapRow(ResultSet rs,int rowNum) throws SQLException{
			BoardVO vo= new BoardVO();
			vo.setSeq(rs.getInt("seq"));
			vo.setTitle(rs.getString("title"));
			vo.setContent(rs.getString("content"));
			vo.setWriter(rs.getString("writer"));
			vo.setCategory(rs.getString("category"));
			vo.setRegdate(rs.getDate("regdate"));
			return vo;
		}
	}

	//선택한 하나 출력
	public BoardVO getBoard(int seq){
		String sql= "select * from BOARD where seq=" + seq;
		return jdbcTemplate.queryForObject(sql,new BoardRowMapper());
	}

	//리스트 출력
	public List<BoardVO> getBoardList(){
		String sql = "select * from BOARD order by regdate desc";
		return jdbcTemplate.query(sql, new BoardRowMapper());
	}


}
