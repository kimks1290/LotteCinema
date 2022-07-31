package com.web.root.mybatis.board;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.root.dto.BoardDTO;


public interface BoardMapper {

	public int writeSave(BoardDTO dto);

	public int selectBoardCount();

	public List<BoardDTO> boardAllList(@Param("s") int start, @Param("e") int end);

	public BoardDTO contentView(int writeNo);

	public void upHit(int writeNo);

	public int modify(BoardDTO dto);

	public int delete(int writeNo);

	public int answer(BoardDTO board);

}
