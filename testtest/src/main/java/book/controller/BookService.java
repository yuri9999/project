package book.controller;

import java.util.ArrayList;
import java.util.List;

import book.bean.BookDTO;
import bookAdmin.bean.FlightInfoDTO;

public interface BookService {
	
	public int insertBook(BookDTO bookDTO);
	public int deleteBook(BookDTO bookDTO);
	public int getBookTotal();
	public List<Object> getBookAll(int startNum, int endNum);
	public BookDTO getBookOne(String id);
	public List<FlightInfoDTO> getAirlineTicket(FlightInfoDTO dto);
	public FlightInfoDTO passengerCharge(String flightName1);
	
	public ArrayList<BookDTO> getBookAll();
	public ArrayList<BookDTO> getBoardingAll();
	public BookDTO getBookOne1(int seq);
}
