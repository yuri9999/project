package notice.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import notice.bean.NoticeDTO;

@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	public int noticeWrite(NoticeDTO noticeDTO) {
		return sqlsession.insert("mybatis.noticeMapper.insertNotice",noticeDTO);
	}
	
	public List<Object> noticeList(int startNum,int endNum){
		Map<String, Integer> map = new HashMap<String,Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlsession.selectList("mybatis.noticeMapper.getNoticeAll",map);
	}
	
	public int getTotalA() {
		return sqlsession.selectOne("mybatis.noticeMapper.getNoticeTotal");
	}
	
	public NoticeDTO noticeView(int seq) {
		return sqlsession.selectOne("mybatis.noticeMapper.getNoticeOne",seq);
	}
	
	public int noticeDelete(int seq) {
		return sqlsession.delete("mybatis.noticeMapper.deleteNotice",seq);
	}
	
	public NoticeDTO noticeModifyForm(int seq) {
		return sqlsession.selectOne("mybatis.noticeMapper.getNoticeOne",seq);
	}
	
	public int noticeModify(NoticeDTO noticeDTO) {
		return sqlsession.update("mybatis.noticeMapper.updateNotice",noticeDTO);
	}
	
	public int hit(int seq) {
		return sqlsession.update("mybatis.noticeMapper.hitNotice",seq);
	}
}
