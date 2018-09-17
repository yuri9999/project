package event.controller;

import java.util.List;

import event.bean.EventDTO;

public interface EventService {
	
	public int eventWrite(EventDTO eventDTO);
	
	public List<Object> eventList(int startNum,int endNum);
	
	public List<Object> eventListE();
	
	public int getTotalA();
	
	public int getTotalE();
	
	public EventDTO eventView(int seq);
	
	public int eventDelete(int seq);
	
	public EventDTO eventModifyForm(int seq);
	
	public int eventModify(EventDTO eventDTO);
	
	public int hit(int seq);
}
