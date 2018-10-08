package book.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import book.bean.BookDTO;
import book.dao.BookDAO;
import bookAdmin.bean.FlightInfoDTO;
@Service
public class BookServiceImpl implements BookService{

	@Autowired
	private BookDAO bookDAO;
	
	@Override
	public int insertBook(BookDTO bookDTO) {
		return bookDAO.insertBook(bookDTO);
	}

	@Override
	public int deleteBook(BookDTO bookDTO) {
		return bookDAO.deleteBook(bookDTO);
	}

	@Override
	public int getBookTotal() {
		return bookDAO.getBookTotal();
	}

	@Override
	public List<Object> getBookAll(int startNum, int endNum) {
		return bookDAO.getBookAll(startNum, endNum);
	}

	@Override
	public BookDTO getBookOne(int seq) {
		return bookDAO.getBookOne(seq);
	}

	@Override
	public List<FlightInfoDTO> getAirlineTicket(FlightInfoDTO dto) {
		return bookDAO.getAirlineTicket(dto);
	}

	@Override
	public FlightInfoDTO passengerCharge(String flightName1) {
		return bookDAO.passengerCharge(flightName1);
	}

	
}
