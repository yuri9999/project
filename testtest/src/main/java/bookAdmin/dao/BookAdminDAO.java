package bookAdmin.dao;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bookAdmin.bean.FlightInfoDTO;

@Repository
public class BookAdminDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	public int flightInfoInsert(FlightInfoDTO flightInfoDTO){
		
		return sqlsession.insert("mybatis.bookAdminMapper.flightInfoInsert",flightInfoDTO);
	}
	
}
