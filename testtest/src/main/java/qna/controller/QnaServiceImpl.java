package qna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import qna.bean.QnaDTO;
import qna.dao.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService{
	
	@Autowired
	private QnaDAO qnaDAO;
	
	@Override
	public int qnaWrite(QnaDTO qnaDTO) {
		return qnaDAO.qnaWrite(qnaDTO);
	}

	@Override
	public List<Object> qnaList(int startNum,int endNum) {
		return qnaDAO.qnaList(startNum, endNum);
	}

	@Override
	public List<Object> qnaListD(String code2) {
		return qnaDAO.qnaListD(code2);
	}

	@Override
	public int getTotalA(String koreanName) {
		return qnaDAO.getTotalA(koreanName);
	}
	
	@Override
	public int getTotalC(String koreanName) {
		return qnaDAO.getTotalA(koreanName);
	}

	@Override
	public QnaDTO qnaView(int seq) {
		return qnaDAO.qnaView(seq);
	}

	@Override
	public int qnaDelete(int seq) {
		return qnaDAO.qnaDelete(seq);
	}

	@Override
	public QnaDTO qnaModifyForm(int seq) {
		return qnaDAO.qnaModifyForm(seq);
	}

	@Override
	public int qnaModify(QnaDTO qnaDTO) {
		return qnaDAO.qnaModify(qnaDTO);
	}
	
	@Override
	public QnaDTO qnaAnswerForm(int seq) {
		return qnaDAO.qnaModifyForm(seq);
	}

	@Override
	public int qnaAnswer(QnaDTO qnaDTO) {
		return qnaDAO.qnaModify(qnaDTO);
	}
}
