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
		
	<script type="text/javaScript" language="javascript" defer="defer">
    
    /* pagination 페이지 링크 function */
    function fn_egov_link_page(pageNo){
    	document.listForm.pageIndex.value = pageNo;
    	document.listForm.action = "<c:url value='/alioBogoseo.do'/>";
       	document.listForm.submit();
    }
    </script>


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
                            
                            
                            <a href="<c:url value='/alioHome.do'/>">홈</a>
                            <a>전체메뉴</a>
                        
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
            <div id ="sub_cont">
                    <div class="title">
                        <h2>
                        <a href = "<c:url value='/alioHome.do'/>" onclick="historyBack();" class="pre_page">
                            <img src="images\alio\example/back.png" alt="이전">
                        </a>
                        <a>주요통계</a>
                    </h2>
                    </div>
                    <div class="public">
                        <dl class="public_list">

          <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
        	<div id="content_pop">
				<!-- List -->
        		<div id="table">
        			<table width="100%" border="1" cellpadding="0" cellspacing="0" summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
        				<caption style="visibility:hidden">카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블</caption>
        				
        				<colgroup>
        				<col width="5%"/>
        				<col width="18%"/>
        				<col width="18%"/>
        				<col width="18%"/>
        				<col width="18%"/>
        				<col width="18%"/>
        				<col width="5%"/>
        				</colgroup>
        	
        				<tr>
        				<th align="center">No</th>
        				<th align="center">기업명</th>
        				<th align="center">임직원현황</th>
        				<th align="center">임원평균연봉</th>
        				<th align="center">직원평균연봉</th>
        				<th align="center">재무정보</th>	
        				</tr>
        				<c:forEach var="result" items="${resultList}" varStatus="status">
            				<tr>
            				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            				<td align="center" class="listtd"><c:out value="${result.statisticsCode}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.memberPresentCondition}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.executiveAnnualIncome}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.employeePay}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.financeInformation}"/>&nbsp;</td>
            				</tr>
        				</c:forEach>
        			</table>
        			</div>
        		
                        </dl>
                    </div>
            </div>
            <!-- /List -->
        	<div id="paging">
        		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
        		<form:hidden path="pageIndex" />
        	</div>
            
            </form:form>
            <footer>
                <div class="foot_div">
                    
                    <p> Copyright @ 2019</p>
                    <p> (우) 000-000 대전광역시</p>
                </div>
            </footer>

        </div>
    </body>

</html>
