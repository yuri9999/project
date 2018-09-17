package notice.controller;

import java.util.List;

import notice.bean.NoticeDTO;

public interface NoticeService {
	public int noticeWrite(NoticeDTO noticeDTO);
	
	public List<Object> noticeList(int startNum,int endNum);
	
	public int getTotalA();
	
	public NoticeDTO noticeView(int seq);
	
	public int noticeDelete(int seq);
	
	public NoticeDTO noticeModifyForm(int seq);
	
	public int noticeModify(NoticeDTO noticeDTO);
	
	public int hit(int seq);
}
