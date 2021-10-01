package kr.ac.kopo.myPage.service;

import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.myPage.vo.InquiryVO;
import kr.ac.kopo.myPage.vo.PagingVO;

import java.util.List;

public interface HistoryService {

    void saveHistory(HistoryVO historyVO);

    // 페이징 처리 History 조회
    public List<HistoryVO> selectAllHistory(PagingVO vo);

    // pb history 조회
    public List<HistoryVO> selectAllHistoryByBanker(PagingVO vo);

    public HistoryVO selectOneHistory(int roomNumber);

    // 게시물 총 갯수
    public int countBoard();

    // inquiry 삽입 후 list 조회
    public List<InquiryVO> insertInquiry(InquiryVO inquiryVO, String answer);

    // inquiry list 조회
    public List<InquiryVO> selectInquiry(InquiryVO inquiryVO);

    // 상담내역 status 변경
    public int updateStatus(HistoryVO historyVO);


}
