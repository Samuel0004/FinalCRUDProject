package com.example.spring2.game;

import com.example.spring2.board.BoardService;
import com.example.spring2.board.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/game")
public class GameController {
    @Autowired
    GameService gameService;
    @RequestMapping(value="/list",method= RequestMethod.GET)
    public String gamelist(Model model){
        model.addAttribute("list",gameService.getGameList());
        return "list";
    }
    @RequestMapping(value="/add", method=RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }

    @RequestMapping(value="/addok",method=RequestMethod.POST)
    public String addPostOK(GameVO vo) {
        if (gameService.insertGame(vo) == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }
    @RequestMapping(value="/editform/{id}", method=RequestMethod.GET)
    public String editPost(@PathVariable("id")int id, Model model){
        GameVO gameVO=gameService.getGame(id);
        model.addAttribute("gameVO",gameVO);
        return "editform";
    }
    @RequestMapping(value="/editok", method=RequestMethod.POST)
    public String editPostOk(GameVO vo){
        if (gameService.updateGame(vo) == 0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }
    @RequestMapping(value="/deleteok/{id}",method=RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id){
        if (gameService.deleteGame(id) == 0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }
}
