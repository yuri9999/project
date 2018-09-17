package notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import notice.bean.NoticeDTO;
import notice.dao.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public int noticeWrite(NoticeDTO noticeDTO) {
		return noticeDAO.noticeWrite(noticeDTO);
	}

	@Override
	public List<Object> noticeList(int startNum, int endNum) {
		return noticeDAO.noticeList(startNum, endNum);
	}

	@Override
	public int getTotalA() {
		return noticeDAO.getTotalA();
	}

	@Override
	public NoticeDTO noticeView(int seq) {
		return noticeDAO.noticeView(seq);
	}

	@Override
	public int noticeDelete(int seq) {
		return noticeDAO.noticeDelete(seq);
	}

	@Override
	public NoticeDTO noticeModifyForm(int seq) {
		return noticeDAO.noticeModifyForm(seq);
	}

	@Override
	public int noticeModify(NoticeDTO noticeDTO) {
		return noticeDAO.noticeModify(noticeDTO);
	}

	@Override
	public int hit(int seq) {
		return noticeDAO.hit(seq);
	}

}
