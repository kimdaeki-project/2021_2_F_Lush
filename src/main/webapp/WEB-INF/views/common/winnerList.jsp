<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

    
<div id="contents-inner cs-page">
							<div class="section">
								<div class="table1 type2" align="center">
									<table class="eventclass" style="width:100%">
								<colgroup>
				                    <col style="width:150px">
				                    <col>
				                    <!-- <col style="width:81px"/>
				                    <col style="width:86px"/> -->
				                    <col style="width:160px">
				                </colgroup>
								<thead>
									<tr>
										<th class="eventtd">번호</th>
										<th class="eventtd">제목</th>
										<th class="eventtd">날짜</th>
									</tr>
								</thead>
									<tbody>
									
										<c:forEach items="${winnerList}" var="eventVO" varStatus="i">
										<tr style="height:50px">
											<td class="ta-c">${fn:length(winnerList)-i.index}</td>
											<td class="tit"><a href="./selectOne?num=${eventVO.num}">${eventVO.title}</a></td>
											<td class="c-gray ta-c">${eventVO.regDate}</td>
										</tr>
										</c:forEach>
									
									
									</tbody>
									
								</table>
								</div>
								
								<div class="paging-result">

									<!-- Paging -->
									<ul class="pagination-sm">
								
										<!-------------------------- pager ------------------------------>
				
				
								
						
							
								<!-------------------------- pager ------------------------------>
								
									</ul>
								
								</div>
							</div>
						</div>