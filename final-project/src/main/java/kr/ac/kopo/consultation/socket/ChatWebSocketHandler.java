package kr.ac.kopo.consultation.socket;

import kr.ac.kopo.member.vo.BankerVO;
import kr.ac.kopo.member.vo.ClientVO;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Component
public class ChatWebSocketHandler extends TextWebSocketHandler {

    HashMap<String, WebSocketSession> sessionMap = new HashMap<>(); //웹소켓 세션을 담아둘 맵
    List<HashMap<String, Object>> rls = new ArrayList<>(); //웹소켓 세션을 담아둘 리스트 ---roomListSessions

    @SuppressWarnings("unchecked")
    @Override // 서버에 접속이 성공했을
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        //소켓 연결

        String bankerId = getBankerId(session);
        if (bankerId != "") {
            sessionMap.put(bankerId, session); // 세션 정보 저장
        }
        System.out.println("현재 banker session Id :" + session.getId());

        String userId = getUserId(session);
        if (userId != "") {
            sessionMap.put(userId, session);
        }
        System.out.println("현재 user session.getId :" + session.getId());

        boolean flag = false;
        String url = session.getUri().toString();
        System.out.println("session url : " + url);
        String roomNumber = url.split("/chatting/")[1];
        int idx = rls.size(); //방의 사이즈를 조사한다.
        if (rls.size() > 0) {
            for (int i = 0; i < rls.size(); i++) {
                String rN = (String) rls.get(i).get("roomNumber");
                if (rN.equals(roomNumber)) {
                    flag = true;
                    idx = i;
                    break;
                }
            }
        }

        if (flag) { //존재하는 방이라면 세션만 추가한다.
            HashMap<String, Object> map = rls.get(idx);
            map.put(session.getId(), session);


        } else { //최초 생성하는 방이라면 방번호와 세션을 추가한다.
            HashMap<String, Object> map = new HashMap<>();
            map.put("roomNumber", roomNumber);
            map.put(session.getId(), session);
            rls.add(map);
        }

        //세션등록이 끝나면 발급받은 세션ID값의 메시지를 발송한다.
        JSONObject obj = new JSONObject();
        obj.put("type", "getId");
        obj.put("sessionId", session.getId());
        session.sendMessage(new TextMessage(obj.toJSONString()));
    }

    @Override
    public void handleTextMessage(WebSocketSession session, TextMessage message) {
        //메시지 발송
        String msg = message.getPayload();
        JSONObject obj = jsonToObjectParser(msg); // msg, roomNumber, sesssionId, type, userName 넘어옴

        String data = (String) obj.get("userName");

        Map<String, Object> httpSession = session.getAttributes();
        ClientVO userVO = (ClientVO) httpSession.get("userVO");
        BankerVO bankerVO = (BankerVO) httpSession.get("bankerVO");

        if (data.length() == 6) {
            obj.replace("userName", userVO.getUsername() + " 손님");
        } else if (data.length() == 4) {
            obj.replace("userName", bankerVO.getPbName() + " PB");
        } else {
            System.out.println("잘못 입력했습니다.");
        }


        System.out.println("in handleText  obj : " + obj);
        String rN = (String) obj.get("roomNumber");
        HashMap<String, Object> temp = new HashMap<>();
        if (rls.size() > 0) {
            for (int i = 0; i < rls.size(); i++) {
                String roomNumber = (String) rls.get(i).get("roomNumber"); //세션리스트의 저장된 방번호를 가져와서
                if (roomNumber.equals(rN)) { //같은값의때방이 존재한다면
                    temp = rls.get(i); //해당 방번호의 세션리스트의 존재하는 모든 object값을 가져온다.
                    break;
                }
            }

            //해당 방의 세션들만 찾아서 메시지를 발송해준다.
            for (String k : temp.keySet()) {
                if (k.equals("roomNumber")) { //다만 방번호일 경우에는 건너뛴다.
                    continue;
                }

                WebSocketSession wss = (WebSocketSession) temp.get(k);
                if (wss != null) {
                    try {
                        wss.sendMessage(new TextMessage(obj.toJSONString()));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }


    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        //소켓 종료
        if (rls.size() > 0) { //소켓이 종료되면 해당 세션값들을 찾아서 지운다.
            for (int i = 0; i < rls.size(); i++) {
                rls.get(i).remove(session.getId());
            }
        }
        super.afterConnectionClosed(session, status);
    }

    private static JSONObject jsonToObjectParser(String jsonStr) {
        JSONParser parser = new JSONParser();
        JSONObject obj = null;
        try {
            obj = (JSONObject) parser.parse(jsonStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return obj;
    }

    // 웹소켓에 user id 가져오기 (Client)
    private String getUserId(WebSocketSession session) {
        Map<String, Object> httpSession = session.getAttributes();
        ClientVO userVO = (ClientVO) httpSession.get("userVO");

        System.out.println("웹소켓 Client VO 잘 가져옴 ? :  " + userVO);
        return userVO.getUserId();
    }

    // 웹소켓에 banker id 가져오기 (banker)
    private String getBankerId(WebSocketSession session) {
        Map<String, Object> httpSession = session.getAttributes();
        BankerVO bankerVO = (BankerVO) httpSession.get("bankerVO");

        System.out.println("웹소켓 banker VO 잘 가져옴 ? :  " + bankerVO);
        return bankerVO.getPbId();
    }


}