package kr.ac.kopo.myPage.dao;

import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.myPage.vo.InquiryVO;
import kr.ac.kopo.myPage.vo.PagingVO;

import java.util.List;

public interface HistoryDAO {


    void insertHistory(HistoryVO historyVO);


    // 페이징 처리 History 조회
    List<HistoryVO> selectAllHistory(PagingVO vo);

    List<HistoryVO> selectAllHistoryByBanker(PagingVO vo);

    // 게시물 총 갯수
    public int countBoard();

    HistoryVO selectOneHistory(int roomNumber);


    public int insertInquiry(InquiryVO inquiryVO);

    List<InquiryVO> selectAllInquiry(InquiryVO inquiryVO);


    // 상담내역 status 변경
    public int updateStatus(HistoryVO historyVO);

    List<HistoryVO> searchByRecentHistory();


}
