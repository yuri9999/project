package boarding.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import boarding.bean.BoardingDTO;
import boarding.dao.BoardingDAO;

@Service
public class BoardingServiceImpl implements BoardingService{
	@Autowired
	private BoardingDAO boardingDAO;

	@Override
	public ArrayList<BoardingDTO> getBoardingList(int startNum, int endNum) {
		return boardingDAO.getBoardingList(startNum, endNum);
	}

	@Override
	public ArrayList<BoardingDTO> getBoardingList1m(int startNum, int endNum) {
		return boardingDAO.getBoardingList1m(startNum, endNum);
	}

	@Override
	public ArrayList<BoardingDTO> getBoardingList3m(int startNum, int endNum) {
		return boardingDAO.getBoardingList3m(startNum, endNum);
	}

	@Override
	public ArrayList<BoardingDTO> getBoardingList6m(int startNum, int endNum) {
		return boardingDAO.getBoardingList6m(startNum, endNum);
	}
	
	@Override
	public ArrayList<BoardingDTO> getBoardingListM(int startNum, int endNum, String datepicker, String datepicker2) {
		return boardingDAO.getBoardingListM(startNum, endNum, datepicker, datepicker2);
	}

	@Override
	public int getTotalA() {
		return boardingDAO.getTotalA();
	}

	@Override
	public int getTotalA1m() {
		return boardingDAO.getTotalA1m();
	}

	@Override
	public int getTotalA3m() {
		return boardingDAO.getTotalA3m();
	}

	@Override
	public int getTotalA6m() {
		return boardingDAO.getTotalA6m();
	}

	@Override
	public int getTotalAm(String datepicker, String datepicker2) {
		return boardingDAO.getTotalAm(datepicker, datepicker2);
	}

}
