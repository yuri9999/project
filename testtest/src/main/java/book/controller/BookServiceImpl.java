package book.controller;

import java.util.ArrayList;
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
	public BookDTO getBookOne(String id) {
		return bookDAO.getBookOne(id);
	}

	@Override
	public List<FlightInfoDTO> getAirlineTicket(FlightInfoDTO dto) {
		return bookDAO.getAirlineTicket(dto);
	}

	@Override
	public FlightInfoDTO passengerCharge(String flightName1) {
		return bookDAO.passengerCharge(flightName1);
	}


	// 페이징떄문에 새로 추가함 10-02
	@Override
	public ArrayList<BookDTO> getBookAll() {
		return bookDAO.getBookAll();
	}

	// 탑승내역조회 임의 추가
	@Override
	public ArrayList<BookDTO> getBoardingAll() {
		return bookDAO.getBoardingAll();
	}
	
	@Override
	public BookDTO getBookOne1(int seq) {
		return bookDAO.getBookOne1(seq);
	}
}
