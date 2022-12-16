package com.example.spring2.game;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class GameDAO {

    @Autowired
    SqlSession sqlSession;


    public int insertGame(GameVO vo) {
        int result = sqlSession.insert("Game.insertGame", vo);
        return result;
    }


    public int deleteGame(int seq){
        int result = sqlSession.delete("Game.deleteGame", seq);
        return result;
    }

    public int updateGame(GameVO vo){
        int result = sqlSession.update("Game.updateGame", vo);
        return result;
    }


    public GameVO getGame(int seq){
        GameVO one = sqlSession.selectOne("Game.getGame", seq);
        return one;
    }

    public List<GameVO> getGameList(){
        List<GameVO> list = sqlSession.selectList("Game.getGameList");
        return list;
    }


}
