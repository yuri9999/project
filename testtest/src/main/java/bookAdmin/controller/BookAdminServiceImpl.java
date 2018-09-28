package bookAdmin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookAdmin.bean.FlightInfoDTO;
import bookAdmin.dao.BookAdminDAO;

@Service
public class BookAdminServiceImpl implements BookAdminService{

	@Autowired
	private BookAdminDAO bookAdminDAO;
	
	@Override
	public int flightInfoInsert(FlightInfoDTO flightInfoDTO) {
		return bookAdminDAO.flightInfoInsert(flightInfoDTO);
	}

	
	
}
