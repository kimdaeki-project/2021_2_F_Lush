package com.iu.e1.certify;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class CertifyService {

   public static void certifiedPhoneNumber(String phoneNumber, String cerNum) {
      String api_key = "NCS0JQDOERTZ6DKL";
      String api_secret = "WQIZK0TBPWOAA6UEA1XYHMBP7L63Z6H7";
      Message coolsms = new Message(api_key, api_secret);
      
      HashMap<String, String> params = new HashMap<String, String>();
      params.put("to", phoneNumber);
      params.put("from", "01087681876");
      params.put("type", "SMS");
      params.put("text", "휴대폰인증 테스트 메이지 : 인증번호는" + "[" + cerNum + "]"+"입니다.");
      params.put("app_version", "test app 1.2");
      
      try {
         JSONObject obj = (JSONObject)coolsms.send(params);
         System.out.println(obj.toString());
      } catch (CoolsmsException e) {
         System.out.println(e.getMessage());
         System.out.println(e.getCode());
      }
      
   }

}