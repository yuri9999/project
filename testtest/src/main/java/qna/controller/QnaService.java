package qna.controller;

import java.util.List;

import qna.bean.QnaDTO;


public interface QnaService {
	public int qnaWrite(QnaDTO qnaDTO);
	
	public List<Object> qnaList(int startNum,int endNum);
	
	public List<Object> qnaListD(String code2);
	
	public int getTotalA(String koreanName);
	
	public int getTotalC(String koreanName);
	
	public QnaDTO qnaView(int seq);
	
	public int qnaDelete(int seq);
	
	public QnaDTO qnaModifyForm(int seq);
	
	public int qnaModify(QnaDTO qnaDTO);
	
	public QnaDTO qnaAnswerForm(int seq);
	
	public int qnaAnswer(QnaDTO qnaDTO);
}
