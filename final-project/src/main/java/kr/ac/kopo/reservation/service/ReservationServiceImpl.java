package kr.ac.kopo.reservation.service;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import kr.ac.kopo.myPage.dao.HistoryDAO;
import kr.ac.kopo.myPage.vo.HistoryVO;
import kr.ac.kopo.reservation.dao.ReservationDAO;
import kr.ac.kopo.reservation.vo.ReservationVO;
import kr.ac.kopo.scheduler.dao.SchedulerDAO;
import kr.ac.kopo.scheduler.vo.SchedulerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class ReservationServiceImpl implements ReservationService {

    @Autowired
    private ReservationDAO reservationDAO;

    @Autowired
    private SchedulerDAO schedulerDAO;

    @Autowired
    private HistoryDAO historyDAO;

    @Override
    public List<BankerVO> searchBanker() {
        List<BankerVO> bankerList = reservationDAO.searchBanker();
        return bankerList;
    }

    @Override
    public List<BankerVO> availableSearchBanker(String date) { // 상담 가능한 자산관리사 조회

        List<BankerVO> scheduledBanker = reservationDAO.availableSearchBanker(date); // 모든 자산관리사 스케줄 조회

        return scheduledBanker;
    }

    @Override
    public int insertReservation(ReservationVO reservationVO) {

        SchedulerVO schedulerVO = new SchedulerVO();

        String startTime = reservationVO.getRsrvTime(); // 상담 시간 불러오기
        int tmp = Integer.parseInt(startTime.substring(0, 2)); // endTime 설정
        String endTime = Integer.toString(tmp + 1) + ":00";

        if (startTime.equals("10:00"))// 10 : 00 ~ 11 : 00
            schedulerVO.setImpossible(1);
        else if (startTime.equals("11:00")) // 11 : 00 ~ 12 : 00
            schedulerVO.setImpossible(2);
        else if (startTime.equals("13:00")) // 13 ~ 14
            schedulerVO.setImpossible(3);
        else if (startTime.equals("14:00")) // 14 ~ 15
            schedulerVO.setImpossible(4);
        else if (startTime.equals("15:00")) // 15 ~ 16
            schedulerVO.setImpossible(5);
        else if (startTime.equals("16:00"))// 16 ~17
            schedulerVO.setImpossible(6);
        else
            System.out.println("not read");

        LocalDate now = LocalDate.now(); // 현재시간

        schedulerVO.setPbName(reservationVO.getPbName()); // pb 이름 추가
        schedulerVO.setTitle(reservationVO.getUsername() + " 손님 비대면 상담"); // 상담 제목
        schedulerVO.setMemo(reservationVO.getUsername() + " 손님과 비대면 상담 일정");
        schedulerVO.setPbBranchName(reservationVO.getPbBranchName()); // pb 브랜치 이름 추가

        schedulerVO.setStartTime(startTime);
        schedulerVO.setEndTime(endTime);
        schedulerVO.setStartDate(reservationVO.getStartDate());
        schedulerVO.setEndDate(reservationVO.getStartDate());

        schedulerDAO.addSchedule(schedulerVO); // 스케줄 테이블 insert
        int check = reservationDAO.insertReservation(reservationVO); // 에약 정보 insert

        return check;
    }

    @Override
    public List<BankerVO> searchBySector(String sector) {

        if (sector.trim().equals("전체 분야")) {
            List<BankerVO> bankerList = reservationDAO.searchBanker();

            return bankerList;

        } else {
            List<BankerVO> bankerList = reservationDAO.searchBySector(sector);
            return bankerList;

        }
    }


    @Override
    public List<BankerVO> selectByFavorite(ClientVO clientVO) {

        List<BankerVO> favoriteList = reservationDAO.selectByFavorite(clientVO);

        return favoriteList;
    }

    @Override
    public List<BankerVO> searchByTagName(String tagName) {

        List<BankerVO> bankerList = reservationDAO.searchByTagName(tagName);

        return bankerList;
    }

    @Override
    public List<HistoryVO> searchByRecentHistory() {

        List<HistoryVO> list = historyDAO.searchByRecentHistory();

        return list;
    }
}
