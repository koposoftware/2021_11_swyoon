package kr.ac.kopo.reservation.socket;


import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.util.*;

@Controller
public class EchoHandler extends TextWebSocketHandler {

    // 로그인한 유저 전체
    List<WebSocketSession> sessions = new ArrayList<>();
    // 1대1
    Map<String, WebSocketSession> userSessionsMap = new HashMap<>();


    // 서버에 접속이 싱공했을 때
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        sessions.add(session);
        // 세션 2개 이상이 넘어올 경우 인식 안됨??

        userSessionsMap.put(session.getId(), session);


//        for (String key : userSessionsMap.keySet()) {
//            WebSocketSession value = (WebSocketSession) userSessionsMap.get(key);
//            System.out.println("key : " + key + " value : " + value);
//        }

    }

    // 소켓에 메세지를 보냈을 때
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String msg = message.getPayload();

        System.out.println("넘어온 msg 값 : " + msg);

        if (msg.trim().length() == 3) {
            TextMessage text2 = new TextMessage(msg);
            for (WebSocketSession s : sessions) {
                s.sendMessage(text2);
            }

        }


        String[] msgList = msg.split(",");
        String clientName = msgList[0];
        String pbName = msgList[1];
        String consultTime = msgList[2];
        String comment = msgList[3];

        for (String d : msgList)
            System.out.println("msg List :" + d);


        // 손님 -> PB sendMsg
        String sendMsg = pbName + " 님, " + clientName + " 손님의 상담 신청이 왔습니다." + "<br>" + "상담 시간 : " + consultTime;
        sendMsg += "<br>" + "Comment : " + comment;
        System.out.println("sendMsg : " + sendMsg);

//        String sendMsg2 = pbName + " PB 님께서 상담 요청을 수락하셨습니다. " + "<br>" + clientName
//                + " 손님 께서는 시간이 되면 온라안 상담실에 입장해주세요" + "<br>" + "상담 시간 : " + consultTime;

        TextMessage text = new TextMessage(sendMsg);

        for (WebSocketSession s : sessions) {
            s.sendMessage(text);
        }


    }

//    // 웹소켓에 user id 가져오기 (Client)
//    private String getUserId(WebSocketSession session) {
//        Map<String, Object> httpSession = session.getAttributes();
//
//        }
//        ClientVO userVO = (ClientVO) httpSession.get("userVO");
//
//        System.out.println("userVO 잘 가져옴 ? :  " + userVO);
//        return userVO.getUserId();
//    }


    // 연결 해제될 때
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        sessions.remove(session);
    }

    // 에러 발생시
    @Override
    public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
        log(session.getId() + " 익셉션 발생: " + exception.getMessage());

    }

    // 로그 메시지
    private void log(String logmsg) {
        System.out.println(new Date() + " : " + logmsg);
    }


}
