package boarding.controller;

import java.util.ArrayList;

import boarding.bean.BoardingDTO;

public interface BoardingService {
	// 전체 조회
	ArrayList<BoardingDTO> getBoardingList(int startNum, int endNum);
	// 1개월 조회
	ArrayList<BoardingDTO> getBoardingList1m(int startNum, int endNum);
	// 3개월 조회
	ArrayList<BoardingDTO> getBoardingList3m(int startNum, int endNum);
	// 6개월 조회
	ArrayList<BoardingDTO> getBoardingList6m(int startNum, int endNum);
	// 특정 개월 조회
	ArrayList<BoardingDTO> getBoardingListM(int startNum, int endNum, String datepicker, String datepicker2);
	// 전체 갯수
	int getTotalA();
	// 1개월 갯수
	int getTotalA1m();
	// 3개월 갯수
	int getTotalA3m();
	// 6개월 갯수
	int getTotalA6m();
	// 특정 개월 갯수
	int getTotalAm(String datepicker, String datepicker2);
}
