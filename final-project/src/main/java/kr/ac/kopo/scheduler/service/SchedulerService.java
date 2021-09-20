package kr.ac.kopo.scheduler.service;

import kr.ac.kopo.scheduler.vo.SchedulerVO;
import kr.ac.kopo.member.vo.BankerVO;

import java.util.List;

public interface SchedulerService {

    List<SchedulerVO> showSchedule(BankerVO banker) throws Exception;
    int addSchedule(SchedulerVO schedulerVO, BankerVO bankerVO) throws Exception;

}
