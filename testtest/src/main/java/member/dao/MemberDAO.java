package member.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.bean.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	public int write(MemberDTO memberDTO) {
		return sqlsession.insert("mybatis.memberMapper.insertMember",memberDTO);
	};
	public int modify(MemberDTO memberDTO) {
		return sqlsession.update("mybatis.memberMapper.updateMember",memberDTO);
	};
	public MemberDTO getMember(String id) {
		return sqlsession.selectOne("mybatis.memberMapper.getMember",id);
	};
	public String login(String id, String pwd) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sqlsession.selectOne("mybatis.memberMapper.login",map);
	};
	
	public boolean isExistId(String id) {
		boolean exist = false;
		if(sqlsession.selectOne("mybatis.memberMapper.isExistId", id) != null) {
			exist = true;
		}
		return exist;
	};
	public int memberDelete(String id) {
		return sqlsession.delete("mybatis.memberMapper.deleteMember",id);
	}
}
