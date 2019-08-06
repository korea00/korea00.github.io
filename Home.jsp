<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>

<!DOCTYPE html>
<html>
    <head>
        <title> 알리오 | 중견기업 경영정보 공개시스템 </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,
                                    minimun-scale=0.2,maximun-scale=4.0">
        <meta name="robots" content="all">
        <meta name="keywords" content="알리오, 중견기업 경영정보 공개시스템">
        <meta name="description" content="알리오">
        <meta name="author" content="알리오">
    <style>
        footer {
            background-color:#3c3935;
        }
        .foot_div {
           text-align:center; 
        }
        .foot_div {
            margin-top:5px;
            color:white;
        }

        #menu{margin:0; padding:0;display:inline;}
        #menu li {display:inline;}
        #menu, #toggle {display:none;}
        #toggle:checked + #menu{display: inline;}
        label{display:block;}
        #menu{position: absolut; right:-20em; width:10em;}
        #menu ul > li{display:block;}
        input:checked ~ #menu{right:0;}
        input:checked ~ #content {margin-left: 10.5em; margin-right: -10.5em;}
        #menu, label{
            float: right;
        }
        #menu{
            font-size: 16px;
        }
        h1{
            font-size: 12px;
        }
        
    </style>
    </head>
    <body>
        <div class="wrap">
            <!-- tom menu -->
            <header class ="clearfix">
                <h1>
                    <a href="<c:url value='/alioHome.do'/>">
                        <img src="images\alio\example\alio.jpg" alt="ALIO | 중견기업 경영정보 공개시스템"></a>
                    
                    
                    
                    
                
                    <label for = "toggle"><img src = "images\alio\example/menu.jpg" alt=전체메뉴></label>   <!--메뉴아이콘-->
                    <input type = "checkbox" id = "toggle"> <!--체크박스-->

                    <ul id="menu"> <!--메뉴-->
                        <li><a href = "<c:url value='/alioGongSi.do'/>">기관별 경영공시<br></a></li>
                        <li><a href = "<c:url value='/alioTongGae.do'/>">주요통계<br></a></li>
                        <li>중견기업이란?<br></a></li>
                        <li><a href = "<c:url value='/alioJiJung.do'/>">중견기업 지정근거<br></a></li>
                        <li><a href = "<c:url value='/alioJiJung.do'/>">중견기업 지정현황<br></a></li>
                        <li>정보센터<br></a></li>
                        <li><a href = "<c:url value='/alioChaeYong.do'/>">채용정보<br></a></li>
                        <li><a href = "<c:url value='/alioBogoseo.do'/>">보고서<br></a></li>                            
                    </ul>
                </h1>                  
             
                
            </header>
        <div id="main_cont">
            <div class="slogun">
                <p>
                    <img src="/images/alio/example/main.jpg" alt="중견기업 경영정보 공개시스템">
                </p>
            </div>
            
            
         <!--메인메뉴-->
            
                    <a href="alioJiJung.do">
					<img src="/images/alio/example/gongsiO .jpg" width="169" height="100">
					</a>
             		
                     
                    
                   
                    <a href="alioTongGae.do">
                    <img src="/images/alio/example/TonggaeO.jpg" width="169" height="100" />
                    </a>
              
                  <br>
                    
                    
                    <a href="alioTongGae.do">
                    <img src="/images/alio/example/gongsi2.jpg" width="169" height="100" />
                    </a>
                     
                    <a href="alioTongGae.do">
                    <img src="/images/alio/example/bogoseo.jpg" width="169" height="100" />
                    </a>
                    
                  <br>
                    
                    <a href="alioTongGae.do">
                    <img src="/images/alio/example/HYdnk.jpg" width="169" height="100" />
                    </a>
                            
                    <a href="alioTongGae.do">
                    <img src="/images/alio/example/bogoseo3.jpg" width="169" height="100" />
                    </a>
                    
                
              
     
        <!--메인메뉴-->
        <section class="newArticle">
            <article>
                <d1 class="clearfix">
                    <dt>채용정보</dt>
                    <dd>
                    <a href="https://recruit.bing.co.kr/app/web/recruit/recruit_guide_01.jsp">
                         빙그레 채용 공고</a>
                    </dd>
                </d1>
                <d1 class="clearfix">
                        <dt>채용정보</dt>
                        <dd>
                        <a href="http://recruit.monami.co.kr/recruit_info/recruit_announce_list.asp">
                            모나미 채용 공고</a>
                        </dd>

                    </d1>
                    <d1 class="clearfix">
                            <dt>채용정보</dt>
                            <dd>
                            <a href="https://www.ottogi.co.kr/overview/notice.asp">
                                오뚜기 채용 공고</a>
                            </dd>
                        </d1>
            </article>
        </section>
        <!--footer-->
        <footer>
            <div class="foot_div">
                
                <p> Copyright @ 2019</p>
                <p> (우) 000-000 대전광역시</p>
            </div>
        </footer>
        </div>
    </body>
</html>
