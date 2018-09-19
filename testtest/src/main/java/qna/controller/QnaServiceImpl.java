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
	public int getTotalA() {
		return qnaDAO.getTotalA();
	}

	@Override
	public QnaDTO qnaView(String koreanName) {
		return qnaDAO.qnaView(koreanName);
	}

	@Override
	public int qnaDelete(String koreanName) {
		return qnaDAO.qnaDelete(koreanName);
	}

	@Override
	public QnaDTO qnaModifyForm(String koreanName) {
		return qnaDAO.qnaModifyForm(koreanName);
	}

	@Override
	public int qnaModify(QnaDTO qnaDTO) {
		return qnaDAO.qnaModify(qnaDTO);
	}

}
