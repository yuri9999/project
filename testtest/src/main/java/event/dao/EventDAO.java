package event.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import event.bean.EventDTO;

@Repository
public class EventDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	public int eventWrite(EventDTO eventDTO) {
		return sqlsession.insert("mybatis.eventMapper.insertEvent",eventDTO);
	}
	
	public List<Object> eventList(int startNum,int endNum){
		Map<String, Integer> map = new HashMap<String,Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlsession.selectList("mybatis.eventMapper.getEventAll",map);
	}
	
	public List<Object> eventListE(){
		return sqlsession.selectList("mybatis.eventMapper.getEventEnd");
	}
	
	public int getTotalA() {
		return sqlsession.selectOne("mybatis.eventMapper.getEventTotal");
	}
	
	public int getTotalE() {
		return sqlsession.selectOne("mybatis.eventMapper.getEventTotalE");
	}
	
	public EventDTO eventView(int seq) {
		return sqlsession.selectOne("mybatis.eventMapper.getEventOne",seq);
	}
	
	public int eventDelete(int seq) {
		return sqlsession.delete("mybatis.eventMapper.deleteEvent",seq);
	}
	
	public EventDTO eventModifyForm(int seq) {
		return sqlsession.selectOne("mybatis.eventMapper.getEventOne",seq);
	}
	
	public int eventModify(EventDTO eventDTO) {
		return sqlsession.update("mybatis.eventMapper.updateEvent",eventDTO);
	}
	
	public int hit(int seq) {
		return sqlsession.update("mybatis.eventMapper.hitEvent",seq);
	}
}
