package book.dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import book.bean.BookDTO;
import bookAdmin.bean.FlightInfoDTO;


@Repository
public class BookDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	public int insertBook(BookDTO bookDTO){
		return sqlsession.insert("mybatis.bookMapper.insertBook",bookDTO);
	}
	public int deleteBook(BookDTO bookDTO){
		return sqlsession.delete("mybatis.bookMapper.deleteBook",bookDTO);
	}
	public int getBookTotal(){
		return sqlsession.selectOne("mybatis.bookMapper.getBookTotal");
	}
	public List<Object> getBookAll(int startNum, int endNum){
		Map<String, Integer> map = new HashMap<String,Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlsession.selectList("mybatis.bookMapper.getBookAll",map);
	}
	public BookDTO getBookOne(String id){
		return sqlsession.selectOne("mybatis.bookMapper.getBookOne",id);
	}
	//step1 공항과 날짜에 맞는 항공권 검색
	public List<FlightInfoDTO> getAirlineTicket(FlightInfoDTO dto){
		/*Map<String, String> map = new HashMap<String,String>();
		System.out.println(">>>> depDate1 : " + depDate1 + ", depAirCode1 : " + depAirCode1 + ", arrAirCode1 : " + arrAirCode1);
		map.put("depDate1",depDate1 );
		map.put("depAirCode1", depAirCode1);
		map.put("arrAirCode1", arrAirCode1);*/
		return sqlsession.selectList("mybatis.bookMapper.getAirlineTicket",dto);
	}
	
	//step2 탑승객별 운임
	public FlightInfoDTO passengerCharge(String flightName1){
		return sqlsession.selectOne("mybatis.bookMapper.passengerCharge",flightName1);
	}
	
	
	public ArrayList<BookDTO> getBookAll(){
		List<BookDTO> list = sqlsession.selectList("mybatis.bookMapper.getBookAllPaging");
		return (ArrayList<BookDTO>) list;
	}
	
	public ArrayList<BookDTO> getBoardingAll(){
		List<BookDTO> list = sqlsession.selectList("mybatis.bookMapper.getBoardingAllPaging");
		return (ArrayList<BookDTO>) list;
	}
	
	public BookDTO getBookOne1(int seq){
		return sqlsession.selectOne("mybatis.bookMapper.getBookOne1",seq);
	}


}
