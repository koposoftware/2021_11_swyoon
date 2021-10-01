package kr.ac.kopo.myPage.dao;

import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.myPage.vo.InquiryVO;
import kr.ac.kopo.myPage.vo.PagingVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class HistoryDAOImpl implements HistoryDAO {

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;


    private String namespace = "myPage.HistoryDAO.";

    @Override
    public void insertHistory(HistoryVO historyVO) {

        int check = sqlSessionTemplate.insert(namespace + "insertHistory", historyVO);
        if (check != 0) {
            System.out.println("history 삽입 완료");
        }

    }

    @Override
    public List<HistoryVO> selectAllHistory(PagingVO vo) {


        List<HistoryVO> historyList = sqlSessionTemplate.selectList(namespace + "selectAllHistory", vo);

        return historyList;
    }

    @Override
    public List<HistoryVO> selectAllHistoryByBanker(PagingVO vo) {
        List<HistoryVO> historyList = sqlSessionTemplate.selectList(namespace + "selectAllHistoryByBanker", vo);

        return historyList;
    }

    @Override
    public int countBoard() {

        int rowNum = sqlSessionTemplate.selectOne(namespace + "countBoard");
        return rowNum;
    }

    @Override
    public HistoryVO selectOneHistory(int roomNumber) {

        HistoryVO history = sqlSessionTemplate.selectOne(namespace + "selectOneHistory", roomNumber);

        return history;
    }


    @Override
    public int insertInquiry(InquiryVO inquiryVO) {

        int check = sqlSessionTemplate.insert(namespace + "insertInquiry", inquiryVO);

        return check;
    }

    @Override
    public List<InquiryVO> selectAllInquiry(InquiryVO inquiryVO) {
        System.out.println("in dao selectAllInquiry : " + inquiryVO);

        List<InquiryVO> inquiryList = sqlSessionTemplate.selectList(namespace + "selectAllInquiry", inquiryVO);

        return inquiryList;
    }


    @Override
    public int updateStatus(HistoryVO historyVO) {

        System.out.println("in dao updateStatus : " + historyVO);

        int check = sqlSessionTemplate.update(namespace + "updateStatus", historyVO);

        if (check != 0) {
            System.out.println("답변 대기중으로 변경");
        }

        return check;
    }

    @Override
    public List<HistoryVO> searchByRecentHistory() {
        int num = 5;

        List<HistoryVO> list = sqlSessionTemplate.selectList(namespace + "searchByRecentHistory", num);


        return list;
    }
}
