package com.ync.biz.board.impl;

import com.ync.biz.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

//DAO(Data Access Object)
@Repository
public class BoardDAOSpring {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    //SQL 명령어들
    private final String BOARD_INSERT = "insert into board(title, writer, content) values(?,?,?)";
    private final String BOARD_UPDATE = "update board set title=?, content=? where seq=?";
    private final String BOARD_DELETE = "delete from board where seq=?";
    private final String BOARD_GET = "select * from board where seq=?";
    private final String BOARD_LIST = "select * from board order by seq desc";


    //CURD 기능 메소드 구현
    //글 등록
    public void insertBoard(BoardVO vo) {
        System.out.println("===> Spring JDBC로 insertBoard() 기능 처리");
        jdbcTemplate.update(BOARD_INSERT, vo.getTitle(), vo.getWriter(), vo.getContent());
    }

    //글 수정
    public void updateBoard(BoardVO vo) {
        System.out.println("===> Spring JDBC로 updateBoard() 기능 처리");
        jdbcTemplate.update(BOARD_UPDATE, vo.getTitle(), vo.getContent(), vo.getSeq());
    }

    //글 삭제
    public void deleteBoard(BoardVO vo) {
        System.out.println("===> Spring JDBC로 deleteBoard() 기능 처리");
        jdbcTemplate.update(BOARD_DELETE, vo.getSeq());
    }

    //글 상세 조회
    public BoardVO getBoard(BoardVO vo) {
        System.out.println("===> Spring JDBC로 getBoard() 기능 처리");
        Object[] args = {vo.getSeq()};
        return jdbcTemplate.queryForObject(BOARD_GET, args, new BoardRowMapper());
    }

    //글 목록 조회
    public List<BoardVO> getBoardList(BoardVO vo) {
        System.out.println("===> Spring JDBC로 getBoardList() 기능 처리");
        return jdbcTemplate.query(BOARD_LIST, new BoardRowMapper());
    }
}

class BoardRowMapper implements RowMapper<BoardVO> {
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO board = new BoardVO();
        board.setSeq(rs.getInt(1));
        board.setTitle(rs.getString(2));
        board.setWriter(rs.getString(3));
        board.setContent(rs.getString(4));
        board.setRegDate(rs.getDate(5));
        board.setCnt(rs.getInt(6));
        return board;
    }
}
