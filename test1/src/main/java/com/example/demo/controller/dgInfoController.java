package com.example.demo.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dgInfo.mapper.dgInfoMapper;

import groovyjarjarpicocli.CommandLine.Model;

@Controller
@EnableAutoConfiguration
public class dgInfoController {

    @Autowired
    dgInfoMapper dgInfoMapper;
    public static int INDENT_FACTOR = 4;

      @RequestMapping(value = "/dgInfoView")
          public String dgInfoView() {

             return "dgInfoView";

          }


    @ResponseBody
    @RequestMapping(value = "/dgInfo",method= {RequestMethod.GET,RequestMethod.POST})
    public String dgInfo(Model model,int orgcode ) {
       String orgcodeStr=Integer.toString(orgcode);
       StringBuilder sb = new StringBuilder();
       String jsonPrettyPrintString="";
       JSONObject xmlJSONObj = null;
       JSONArray item = null;
       JSONObject items=null;
       try {
          StringBuilder urlBuilder = new StringBuilder("http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sigungu"); /*URL*/
             urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8")
              + "=RzYLjd6TYOYe%2BvlUhneLf9R7ulHCeM0ij%2FTyIYG%2FlrFOkKmKsWu8VGmk2guL4RZKAIri0e303TTmxFXcq%2BQ%2FHQ%3D%3D"); /*Service Key*/
             urlBuilder.append("&" + URLEncoder.encode("upr_cd","UTF-8") + "=" + URLEncoder.encode(orgcodeStr, "UTF-8"));


              URL url = new URL(urlBuilder.toString());
              HttpURLConnection conn = (HttpURLConnection) url.openConnection();

              conn.setRequestMethod("GET");
              conn.setRequestProperty("Content-type", "application/json");
              System.out.println("Response code: " + conn.getResponseCode());
              BufferedReader rd;
              if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
                  rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
              } else {
                  rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
              }

              String line;
              while ((line = rd.readLine()) != null) {
                  sb.append(line);
              }
              rd.close();
              conn.disconnect();
              //System.out.println(sb.toString());
              xmlJSONObj=XML.toJSONObject(sb.toString());
              jsonPrettyPrintString= xmlJSONObj.toString(INDENT_FACTOR);
//              System.out.println(xmlJSONObj.toString());
              JSONObject response=(JSONObject)xmlJSONObj.get("response");
              JSONObject body=(JSONObject)response.get("body");
              items=(JSONObject)body.get("items");
              item=(JSONArray)items.get("item");
//              JSONObject tmp=item.toJSONObject(item);
//              System.out.println(xmlJSONObj);

//              System.out.println(tmp.toString());

                 System.out.println(item);
                 System.out.println(item.getClass().getName());

                }catch(Exception e) {
                   e.printStackTrace();
                }

//      return xmlJSONObj;
       return item.toString();

    }

    @ResponseBody
    @RequestMapping(value = "/sigunguInfo",method= {RequestMethod.GET,RequestMethod.POST})
    public String sigunguInfo(Model model,int si, int gungu) {
       String orgcodeStr=Integer.toString(si);
       String orgCd=Integer.toString(gungu);
       StringBuilder sb = new StringBuilder();
       JSONObject xmlJSONObj = null;
       JSONArray item = null;
       JSONObject items=null;
       try {
          StringBuilder urlBuilder = new StringBuilder("http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic"); /*URL*/
             urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8")
              + "=RzYLjd6TYOYe%2BvlUhneLf9R7ulHCeM0ij%2FTyIYG%2FlrFOkKmKsWu8VGmk2guL4RZKAIri0e303TTmxFXcq%2BQ%2FHQ%3D%3D"); /*Service Key*/
             urlBuilder.append("&" + URLEncoder.encode("upr_cd","UTF-8") + "=" + URLEncoder.encode(orgcodeStr, "UTF-8"));
             urlBuilder.append("&" + URLEncoder.encode("org_cd","UTF-8") + "=" + URLEncoder.encode(orgCd, "UTF-8"));
             urlBuilder.append("&" + URLEncoder.encode("state","UTF-8") + "=" + URLEncoder.encode("notice", "UTF-8"));
             urlBuilder.append("&" + URLEncoder.encode("org_cd","UTF-8") + "=" + URLEncoder.encode("protect", "UTF-8"));
//             urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8"));
             urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("100", "UTF-8"));


              URL url = new URL(urlBuilder.toString());
              HttpURLConnection conn = (HttpURLConnection) url.openConnection();

              conn.setRequestMethod("GET");
              conn.setRequestProperty("Content-type", "application/json");
              System.out.println("Response code: " + conn.getResponseCode());
              BufferedReader rd;
              if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
                  rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
              } else {
                  rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
              }

              String line;
              while ((line = rd.readLine()) != null) {
                  sb.append(line);
              }
              rd.close();
              conn.disconnect();
              xmlJSONObj=XML.toJSONObject(sb.toString());
              String jsonPrettyPrintString = xmlJSONObj.toString(INDENT_FACTOR);
              JSONObject response=(JSONObject)xmlJSONObj.get("response");
              JSONObject body=(JSONObject)response.get("body");
              items=(JSONObject)body.get("items");
              item=(JSONArray)items.get("item");


                }catch(Exception e) {
                   e.printStackTrace();
                }

//      return xmlJSONObj;
       return item.toString();

    }



}