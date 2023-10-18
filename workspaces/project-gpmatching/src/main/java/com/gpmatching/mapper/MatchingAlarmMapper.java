package com.gpmatching.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.gpmatching.dto.ConfirmAlarmDto;
import com.gpmatching.dto.MatchingAlarmDto;

@Mapper
public interface MatchingAlarmMapper {

	@Insert("insert into MatchingAlarm (alarmContent, commentNo) values ('댓글을 달았습니다', #{ commentNo })")
	@Options(useGeneratedKeys = true, keyProperty = "alarmNo")
	void insertMatchingAlarm(MatchingAlarmDto matchingAlarmDto);

	//승인 테이블 insert
	@Insert("insert into ConfirmAlarm (commentNo, confirmContent) values (#{commentNo},'승인을 했습니다')")
	@Options(useGeneratedKeys = true, keyProperty = "confirmNo")
	void insertConfirmAlarm(ConfirmAlarmDto confirmAlarm);
	
	//원본 19일에 확인
//	@Select("select ma.alarmNo, ma.commentNo, ma.alarmContent, ma.regDate, mc.boardNo, u.nickname "
//			  + "from MatchingComment mc "
//			  + "inner join MatchingAlarm ma on ma.commentNo = mc.commentNo "
//			  + "inner join User u on u.userNo = mc.userNo "
//			  + "where mc.userNo != ${userNo} "
//			  + "order by ma.commentNo desc")
//	List<MatchingAlarmDto> selectAlarmListByUserNo(int userNo);
	
//	@Select("select * "
//	      + "from (select ma.alarmNo, ma.commentNo, ma.alarmContent, ma.regDate, mc.boardNo, u.nickname "
//		  + "      from MatchingComment mc "
//		  + "      inner join MatchingAlarm ma on ma.commentNo = mc.commentNo "
//		  + "      inner join User u on u.userNo = mc.userNo "
//		  + "      where mc.userNo != ${userNo} "
//		  + "      union "
//	  	  + "      select ca.confirmNo, ca.commentNo, ca.confirmContent, ca.regDate, mc.boardNo, u.nickname "
//		  + "      from MatchingComment mc inner join ConfirmAlarm ca on ca.commentNo = mc.commentNo "
//		  + "      inner join User u on u.userNo = mc.userNo "
//		  + "      where mc.status = 1 AND u.userNo = ${userNo}) as combined_result "
//		  + "      order by regDate desc")
//	List<MatchingAlarmDto> selectAlarmListByUserNo(int userNo);//승인+댓글

	
	@Select("SELECT ma.alarmNo, ma.commentNo, ma.alarmContent, ma.regDate, mc.boardNo, u.nickname "
		  + "FROM MatchingComment mc "
		  + "INNER JOIN MatchingAlarm ma ON ma.commentNo = mc.commentNo "
		  + "INNER JOIN User u ON u.userNo = mc.userNo "
		  + "WHERE mc.userNo != ${userNo} "
		  + "UNION "
		  + "SELECT ca.confirmNo, ca.commentNo, ca.confirmContent, ca.regDate, mc.boardNo, "
		  + "      (SELECT u.nickname "
		  + "       FROM User u "
		  + "       WHERE u.userNo = mb.userNo) AS nickname "
		  + "       FROM MatchingComment mc "
		  + "       INNER JOIN ConfirmAlarm ca ON ca.commentNo = mc.commentNo "
		  + "       INNER JOIN User u ON u.userNo = mc.userNo "
		  + "       INNER JOIN MatchingBoard mb ON mb.boardNo = mc.boardNo "
		  + "       WHERE mc.status = 1 AND u.userNo = ${userNo} "
		  + "       ORDER BY regDate DESC;")
	List<MatchingAlarmDto> selectAlarmListByUserNo(int userNo);

	@Delete("delete "
		  + "from MatchingAlarm "
		  + "where commentNo "
		  + "in (select mc.commentNo "
		  + "    from MatchingComment mc "
		  + "    inner join User u on u.userNo = mc.userNo "
		  + "    where mc.userNo != ${userNo})")
	void deleteAlarmListByUserNo(int userNo);

	@Delete("delete "
		  + "from ConfirmAlarm "
		  + "where commentNo "
		  + "in (select mc.commentNo "
		  + "    from MatchingComment mc "
		  + "    inner join User u on u.userNo = mc.userNo "
		  + "    where mc.userNo = ${userNo})")
	void deleteConfirmListByUserNo(@Param("userNo")int userNo);
	
	@Select("select count(ma.alarmNo) as mAlarmCount "
		  + "from MatchingComment mc "
		  + "inner join MatchingAlarm ma on ma.commentNo = mc.commentNo "
		  + "inner join User u ON u.userNo = mc.userNo "
		  + "where mc.userNo != ${userNo}")
	int countMatchingAlarmNo(int userNo);


	
}
