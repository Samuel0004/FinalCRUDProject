package com.example.spring2.game;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GameServiceImpl implements GameService {

    @Autowired
    GameDAO gameDAO;


    @Override
    public int insertGame(GameVO vo) {
        return gameDAO.insertGame(vo);
    }

    @Override
    public int deleteGame(int seq) {
        return gameDAO.deleteGame(seq);
    }

    @Override
    public int updateGame(GameVO vo) {
        return gameDAO.updateGame(vo);
    }

    @Override
    public GameVO getGame(int seq) {
        return  gameDAO.getGame(seq);
    }

    @Override
    public List<GameVO> getGameList() {
        return gameDAO.getGameList();
    }
}
