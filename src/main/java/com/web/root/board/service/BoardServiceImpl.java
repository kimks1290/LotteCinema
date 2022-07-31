package com.web.root.board.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.web.root.dto.BoardDTO;
import com.web.root.mybatis.board.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper mapper;
	
	@Autowired
	BoardFileService bfs;
	
	@Override
	public String writeSave(HttpServletRequest request) {
		
		BoardDTO dto = new BoardDTO();
		dto.setId(request.getParameter("id"));
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		int result = 0;
		String msg, url;
		result = mapper.writeSave(dto);
		if(result == 1) {
			msg = "새글이 등록되었습니다.";
			url = "/board/boardAllList";
		} else {
			msg = "문제가 발생했습니다";
			url = "/board/writeform";
		}
		return bfs.getMessage(request, msg, url);
	}

	@Override
	public void boardAllList(Model model, int num) {
		
		int pageLetter = 3; 
		int allCount = mapper.selectBoardCount(); 
		
		int repeat = allCount / pageLetter;
		if(allCount % pageLetter != 0)
			repeat += 1;
		
		int end = num*pageLetter;
		int start = end + 1 - pageLetter;
		
		model.addAttribute("repeat", repeat);		
		model.addAttribute("boardList", mapper.boardAllList(start, end));
		
	}

	@Override
	public void contentView(int writeNo, Model model) {
		model.addAttribute("data", mapper.contentView(writeNo));
		upHit(writeNo);
		
	}

	private void upHit(int writeNo) {
		mapper.upHit(writeNo);
	}

	@Override
	public String modify(HttpServletRequest request) {
		BoardDTO dto = new BoardDTO();
		dto.setWriteNo(Integer.parseInt(request.getParameter("writeNo")));
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		
		int result = mapper.modify(dto);
		
		String msg, url;
		if(result == 1) {
			msg = "내용이 변경 되었습니다";
			url = "/board/boardAllList";
		} else {
			msg = "내용 변경 실패하였습니다.";
			url = "/board/modifyform?writeNo="+dto.getWriteNo();
		}
		return bfs.getMessage(request, msg, url);
	}

	@Override
	public String boardDelete(int writeNo, HttpServletRequest request) {
		int result = mapper.delete(writeNo);
		
		String msg, url;
		if(result == 1) {
			msg = "삭제 되었습니다";
			url = "/board/boardAllList";
		} else {
			msg = "삭제에 실패했습니다";
			url = "/board/contentView?writeNo="+writeNo;
		}
		return bfs.getMessage(request, msg, url);
	}

	@Override
	public int answer(BoardDTO board) {
		try {
			return mapper.answer(board);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	
	
	
	
	

}
