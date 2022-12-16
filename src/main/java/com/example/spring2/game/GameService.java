package com.example.spring2.game;
import java.util.List;

public interface GameService {
    public int insertGame(GameVO vo);
    public int deleteGame(int seq);
    public int updateGame(GameVO vo);
    public GameVO getGame(int seq);
    public List<GameVO> getGameList();
}
