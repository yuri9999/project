package boarding.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import boarding.bean.BoardingDTO;

@Repository
public class BoardingDAO {
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	public ArrayList<BoardingDTO> getBoardingList(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		List<BoardingDTO> list = sessionTemplate.selectList("mybatis.boardingMapper.getBoardingList", map);
		return (ArrayList<BoardingDTO>) list;
	}
	
	public ArrayList<BoardingDTO> getBoardingList1m(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		List<BoardingDTO> list = sessionTemplate.selectList("mybatis.boardingMapper.getBoardingList1m", map);
		return (ArrayList<BoardingDTO>) list;
	}
	
	public ArrayList<BoardingDTO> getBoardingList3m(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		List<BoardingDTO> list = sessionTemplate.selectList("mybatis.boardingMapper.getBoardingList3m", map);
		return (ArrayList<BoardingDTO>) list;
	}
	
	public ArrayList<BoardingDTO> getBoardingList6m(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		List<BoardingDTO> list = sessionTemplate.selectList("mybatis.boardingMapper.getBoardingList6m", map);
		return (ArrayList<BoardingDTO>) list;
	}
	
	public ArrayList<BoardingDTO> getBoardingListM(int startNum, int endNum, String datepicker, String datepicker2) {
		Map<String, Object> map = new HashMap<>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("datepicker", datepicker);
		map.put("datepicker2", datepicker2);
		List<BoardingDTO> list = sessionTemplate.selectList("mybatis.boardingMapper.getBoardingListM", map);
		return (ArrayList<BoardingDTO>) list;
	}
	
	public int getTotalA() {
		return sessionTemplate.selectOne("mybatis.boardingMapper.getTotalA");
	}
	
	public int getTotalA1m() {
		return sessionTemplate.selectOne("mybatis.boardingMapper.getTotalA1m");
	}
	
	public int getTotalA3m() {
		return sessionTemplate.selectOne("mybatis.boardingMapper.getTotalA3m");
	}
	
	public int getTotalA6m() {
		return sessionTemplate.selectOne("mybatis.boardingMapper.getTotalA6m");
	}
	
	public int getTotalAm(String datepicker, String datepicker2) {
		Map<String, Object> map = new HashMap<>();
		map.put("datepicker", datepicker);
		map.put("datepicker2", datepicker2);
		return sessionTemplate.selectOne("mybatis.boardingMapper.getTotalAm", map);
	}

}
