package book.controller;

import java.util.List;

import book.bean.BookDTO;
import bookAdmin.bean.FlightInfoDTO;

public interface BookService {
	public int insertBook(BookDTO bookDTO);
	public int deleteBook(BookDTO bookDTO);
	public int getBookTotal();
	public List<Object> getBookAll(int startNum, int endNum);
	public BookDTO getBookOne(int seq);
	public List<FlightInfoDTO> getAirlineTicket(FlightInfoDTO dto);
	public BookDTO passengerCharge(String flightName1);
}