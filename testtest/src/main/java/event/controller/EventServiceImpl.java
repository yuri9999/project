package event.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import event.bean.EventDTO;
import event.dao.EventDAO;

@Service
public class EventServiceImpl implements EventService{
	
	@Autowired
	private EventDAO eventDAO;
	
	@Override
	public int eventWrite(EventDTO eventDTO) {
		return eventDAO.eventWrite(eventDTO);
	}

	@Override
	public List<Object> eventList(int startNum, int endNum) {
		return eventDAO.eventList(startNum, endNum);
	}
	
	@Override
	public List<Object> eventListE() {
		return eventDAO.eventListE();
	}
	
	@Override
	public int getTotalA() {
		return eventDAO.getTotalA();
	}

	@Override
	public int getTotalE() {
		return eventDAO.getTotalE();
	}
	
	@Override
	public EventDTO eventView(int seq) {
		return eventDAO.eventView(seq);
	}

	@Override
	public int eventDelete(int seq) {
		return eventDAO.eventDelete(seq);
	}

	@Override
	public EventDTO eventModifyForm(int seq) {
		return eventDAO.eventModifyForm(seq);
	}

	@Override
	public int eventModify(EventDTO eventDTO) {
		return eventDAO.eventModify(eventDTO);
	}

	@Override
	public int hit(int seq) {
		return eventDAO.hit(seq);
	}


	

}
