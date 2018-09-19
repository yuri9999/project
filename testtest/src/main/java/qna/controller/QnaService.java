package qna.controller;

import java.util.List;

import qna.bean.QnaDTO;


public interface QnaService {
	public int qnaWrite(QnaDTO qnaDTO);
	
	public List<Object> qnaList(int startNum,int endNum);
	
	public List<Object> qnaListD(String code2);
	
	public int getTotalA();
	
	public QnaDTO qnaView(String koreanName);
	
	public int qnaDelete(String koreanName);
	
	public QnaDTO qnaModifyForm(String koreanName);
	
	public int qnaModify(QnaDTO qnaDTO);
}
