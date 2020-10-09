package com.example.dgBoard.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.dgBoard.model.dgBoardVo;

@Mapper

public interface dgBoardMapper {

   public List<dgBoardVo> dgNoticeBoardList();
   //200914 공지게시판 insert 김원희
   public void dgNoticeBoardInsert(dgBoardVo vo);
   
   //200918 공지게시판 detail 김원희
   public dgBoardVo dgNoticeBoardDetail(int dg_board_num);
   
   //200918 공지게시판 update 김원희
   public void dgNoticeBoardUpdate(dgBoardVo vo);
   
   public void dgNoticeBoardDelete(int dg_board_num);
   
}