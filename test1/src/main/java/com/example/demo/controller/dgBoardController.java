package com.example.demo.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dgBoard.mapper.dgBoardMapper;
import com.example.dgBoard.model.dgBoardVo;

@Controller
@EnableAutoConfiguration

public class dgBoardController {

    @Autowired
    dgBoardMapper dgBoardMapper;
    
    @RequestMapping(value = "/dgNoticeBoard")
      public String dgNoticeBoardList(Model model) {
       List<dgBoardVo> dgNoticeBoardList = dgBoardMapper.dgNoticeBoardList();
       model.addAttribute("dgNoticeBoardList",dgNoticeBoardList);
       return "dgNoticeBoard";
      }
    
 
 
    //insert화면
    @RequestMapping(value = "/dgNoticeBoardInsert")
    public String dgNoticeBoardInsert(Model model) { 
     return "dgNoticeBoardInsert";
    }
    
   //insert 기능을 하는 컨트롤러
    @RequestMapping(value = "/dgNoticeBoardInsertProcess")
    public String dgNoticeBoardInsertProcess(dgBoardVo vo, Principal cipal) { 
       vo.setDg_board_user_id(cipal.getName());
       dgBoardMapper.dgNoticeBoardInsert(vo);
     return "redirect:/dgNoticeBoard";
    } 
    
    @RequestMapping(value = "/dgNoticeBoardDetail")
    public String dgNoticeBoardDetail(Model model, dgBoardVo Vo) { 
       dgBoardVo dgNoticeBoardDetail = dgBoardMapper.dgNoticeBoardDetail(Vo.getDg_board_num());
       model.addAttribute("dgNoticeBoardDetail", dgNoticeBoardDetail);
       
     return "dgNoticeBoardDetail";
    }
    

    //update 화면
    @RequestMapping(value = "/dgNoticeBoardUpdate")
    public String dgNoticeBoardUpdate(Model model, dgBoardVo vo) { 
       dgBoardVo dgNoticeBoardUpdate = dgBoardMapper.dgNoticeBoardDetail(vo.getDg_board_num());
       model.addAttribute("dgNoticeBoardUpdate", dgNoticeBoardUpdate);
//       System.out.println(dgNoticeBoardUpdate.toString() + "들어있나요");
     return "dgNoticeBoardUpdate";
    }
    
    //update 기능
    @RequestMapping(value = "/dgNoticeBoardUpdateProcess")
    public String dgNoticeBoardUpdateProcess(Model model, dgBoardVo Vo) { 
//       System.out.println(Vo.toString());
       dgBoardMapper.dgNoticeBoardUpdate(Vo);
     return "redirect:/dgNoticeBoard";
    }
    
    //delete
    @RequestMapping(value = "/dgNoticeBoardDelete")
    public String dgNoticeBoardDelete(Model model, int dg_board_num) { 
       dgBoardMapper.dgNoticeBoardDelete(dg_board_num);
       
       
       return "redirect:/dgNoticeBoard";
    }
    
   
}