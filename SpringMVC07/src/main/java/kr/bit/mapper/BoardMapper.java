package kr.bit.mapper;

import java.util.List;

import kr.bit.entity.Board;
import kr.bit.entity.Member;

//데이터 베이스 연동 메서드
public interface BoardMapper {
	public List<Board> getList();
	public void insert(Board vo);
	public void insertSelectKey(Board vo);
	public Member login(Member vo); //SQL
	public Board read(int idx); 	//게시판 번호 읽기(read)
}
	
