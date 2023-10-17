/**
 * 
 */

	

	//임시 알람 클릭하면 마이페이지로 넘어감
	$(function(event) {
	    $("#dropdownNotification").on("mouseenter", function(event) {
	        event.preventDefault();
	        let loginUser = $(this).data("userno");
	
	        function calculateTime(regDate) {
	            var regTime = new Date(regDate).getTime(); // 밀리초로 변환
	            var now = new Date().getTime();
	            var diff = now - regTime;
	
	            if (diff < 60000) {
	                return "방금 전";
	            } else if (diff < 3600000) {
	                var minutes = Math.floor(diff / 60000);
	                return minutes + "분 전";
	            } else if (diff < 86400000) {
	                var hours = Math.floor(diff / 3600000);
	                return hours + "시간 전";
	            } else {
	                var options = { year: 'numeric', month: '2-digit', day: '2-digit' };
	                return new Date(regTime).toLocaleDateString(undefined, options);
	            }
	        }
	
	        $.ajax({
	            url: '/project-gpmatching/modules/header',
	            type: 'get',
	            dataType: 'json',
	            success: function(data) {
	                var alarmList = $('#alarm-list');
	                alarmList.empty();
	
	                $.each(data, function(index, matchingAlarms) {
	                    var timeAgo = calculateTime(matchingAlarms.regDate);
	
	                    var commentAlarm =
	                        '<li><a href="/project-gpmatching/account/mypage">&nbsp;&nbsp;' + matchingAlarms.nickname + '님이 댓글을 달았습니다</a></li>' +
	                        '<li>&nbsp;&nbsp;' + timeAgo + '</li>' +
	                        '<hr>';
	                    alarmList.append(commentAlarm);
	                });
	            },
	            error: function(xhr, status, error) {
	                console.error('댓글을 가져오는 중 오류 발생: ' + error);
	            }
	        });
	    });
	});
	
	//알림 확인하면 데이터 삭제
	$(function (event){
		$('#checkAlarm').on("click",function(event){
			event.preventDefault();
			const userNo = $(this).data("userno");
			
			$.ajax({
				"url": '/project-gpmatching/modules/header/checkAlarm',
				"type": 'GET',
				"data" : {"userNo":userNo},
				"success": function(data, status, xhr){
					
				},
				"error": function(xhr, status, err){
					console.log("요청 실패");
				}
			});
		});
	});
	
	//아래 ToDo
	
	// 아이콘 변경 함수
/*function updateNotificationIcon(increase) {
  // 아이콘 요소 선택
  const iconElement = document.getElementById("notificationIcon");

  // 데이터가 1 증가하면 아이콘을 변경
  if (increase) {
    iconElement.setAttribute("data-feather", "bell-off");
  } else {
    iconElement.setAttribute("data-feather", "bell");
  }

  // 아이콘 새로 고침
  feather.replace();
}*/

//5차
/*$(function() {
    let notificationCount = 0;
    const notificationCountElement = $("#notificationCount");
    const notificationIcon = $("#notificationicon");

    // 함수를 사용하여 아이콘을 업데이트하는 기능
    function updateNotificationIcon() {
        if (notificationCount !== 0) {
            // alarmCount가 0이 아닐 때 'bell-off' 클래스 추가
            notificationIcon.addClass("bell-off").removeClass("bell");
        } else {
            // alarmCount가 0인 경우 'bell-off' 클래스를 제거하고 'bell' 클래스 추가
            notificationIcon.removeClass("bell-off").addClass("bell");
        }

        // Feather Icons를 다시 로드하여 아이콘을 업데이트
        feather.replace();
    }

    // 페이지 로딩시 아이콘 설정
    updateNotificationIcon();

    //$("#dropdownNotification").hover(function(event) {
	$("#dropdownNotification").on("mouseenter",function(event) {
        let loginUser = "${loginUser.userNo}";

        $.ajax({
            url: '/project-gpmatching/modules/header',
            type: 'get',
            dataType: 'json',
            success: function(data) {
                var alarmList = $('#alarm-list');
                alarmList.empty();
                
                $.each(data, function(index, matchingAlarms) {
                    var commentAlarm = '<li>&nbsp;&nbsp;' + matchingAlarms.nickname + '님이 댓글을 달았습니다</li>' + '<hr>';
                    alarmList.append(commentAlarm);
                    
                    // 알림이 도착할 때마다 alarmCount 업데이트
                    notificationCount = matchingAlarms.alarmCount;
                    // 알람 카운트에 따라 아이콘 업데이트
                    updateNotificationIcon();
                });
            },
            error: function(xhr, status, error) {
                console.error('댓글을 가져오는 중 오류 발생: ' + error);
            }
        });
        
        $.ajax({
			url: '컨펌카운트있는곳',
			type: 'get',
			data
		})
    });
});*/