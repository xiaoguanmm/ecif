//给分页栏重新赋值
function reSetPageParams(prefixCode,htmlStr,pageObj) {
	$("#"+prefixCode+"_tbodyId > tr").remove();
	$("#"+prefixCode+"_tbodyId").hide();
	$("#"+prefixCode+"_pager_list").hide();
	
	$("#"+prefixCode+"_upPageInput").val(pageObj.upPage);
	$("#"+prefixCode+"_searchPage").val(pageObj.curPage);
	$("#"+prefixCode+"_sp_1_pager_list").text(pageObj.totalPage);
	$("#"+prefixCode+"_nextPageInput").val(pageObj.nextPage);
	$("#"+prefixCode+"_lastPageInput").val(pageObj.endPage);
	$("#"+prefixCode+"_totalCountId").text("共 "+pageObj.totalCount+"条");
	$("#"+prefixCode+"_corPageSelect").find("option[value="+pageObj.pageSize+"]").prop("selected",true);
	
	$("#"+prefixCode+"_tbodyId").append(htmlStr);
	$("#"+prefixCode+"_tbodyId").show();
	$("#"+prefixCode+"_pager_list").show();
}


//初始化翻页栏
function installPageHtml(prefixCode) {
	var pageHtmlStr =""+
		"<div id='pager_list' class='ui-jqgrid-pager' dir='ltr'>"+
		    "<div id='"+prefixCode+"_pager_list' class='ui-pager-control' role='group'>"+
		        "<table class='ui-pg-table ui-common-table ui-pager-table'>"+
		            "<tbody>"+
			            "<tr>"+
			                "<td id='"+prefixCode+"_pager_list_left' align='left'>"+
			                   "<table class='ui-pg-table navtable ui-common-table'>"+
			                       "<tbody>"+
				                       "<tr>"+
				                           "<td class='ui-pg-button' title='刷新表格' id='"+prefixCode+"_refresh_table_list'>"+
				                               "<div class='ui-pg-div'>"+
				                                   "<span class='glyphicon glyphicon-refresh'></span>"+
				                               "</div>"+
				                           "</td>"+
				                       "</tr>"+
			                       "</tbody>"+
			                   "</table>"+
			                "</td>"+
			                "<td id='pager_list_center' align='center' style=' width: 373px;'>" +
			                    "<table class='ui-pg-table ui-common-table ui-paging-pager'>" +
			                        "<tbody>"+
				                        "<tr>"+
				                            "<td id='"+prefixCode+"_first_pager_list' onclick='getObjListByPage(&quot;"+prefixCode+"_firstPageInput&quot;)' class='ui-pg-button ui-disabled' title='首页' style='cursor: default;'>"+
				                                "<input type='text'  id='"+prefixCode+"_firstPageInput' hidden='hidden' name='firstPageInput' value='1'>"+
				                                "<span class='glyphicon glyphicon-step-backward'></span>"+
				                            "</td>"+
				                            "<td id='"+prefixCode+"_prev_pager_list'  onclick='getObjListByPage(&quot;"+prefixCode+"_upPageInput&quot;)' class='ui-pg-button ui-disabled' title='上一页' style='cursor: default;'>"+
				                            	"<input type='text'  id='"+prefixCode+"_upPageInput' hidden='hidden' name='upPageInput' value='1'>"+
				                                "<span class='glyphicon glyphicon-backward'></span>"+
				                            "</td>"+
				                            "<td class='ui-pg-button ui-disabled' style='cursor: default;'>"+
				                                "<span class='ui-separator'></span>"+
				                            "</td>"+
				                            "<td id='input_pager_list' dir='ltr'>"+
				                                "<input id='"+prefixCode+"_searchPage' name='searchPage'  class='ui-pg-input form-control' type='text' size='2' maxlength='7' value='1' role='textbox'>"+
												"共<span id='"+prefixCode+"_sp_1_pager_list'>0</span>页"+
				                            "</td>"+
				                            "<td class='ui-pg-button ui-disabled' style='cursor: default;'>"+
				                                "<span class='ui-separator'></span>"+
				                            "</td>"+
				                            "<td id='"+prefixCode+"_next_pager_list' onclick='getObjListByPage(&quot;"+prefixCode+"_nextPageInput&quot;)' class='ui-pg-button ui-disabled' title='下一页'>"+
				                            	"<input type='text' id='"+prefixCode+"_nextPageInput' name='nextPageInput' hidden='hidden' value='1'>"+
				                                "<span class='glyphicon glyphicon-forward'></span>"+
				                            "</td>"+
				                            "<td id='"+prefixCode+"_last_pager_list' onclick='getObjListByPage(&quot;"+prefixCode+"_lastPageInput&quot;)' class='ui-pg-button ui-disabled' title='尾页'>"+
				                            	"<input id='"+prefixCode+"_lastPageInput' name='lastPageInput' hidden='hidden' value='1' type='text'>"+
				                                "<span class='glyphicon glyphicon-step-forward'></span>"+
				                            "</td>"+
				                            "<td dir='ltr'>"+
				                                "<select id='"+prefixCode+"_corPageSelect' name='corPageSelect' class='ui-pg-selbox form-control' >"+
				                                    "<option  value='10' >10</option>"+
				                                    "<option  value='20' >20</option>"+
				                                    "<option  value='30' >30</option>"+
				                                "</select>"+
				                            "</td>"+
				                        "</tr>"+
			                        "</tbody>"+
			                    "</table>"+
			                "</td>"+
			                "<td id='pager_list_right' align='right'>"+
			                    "<div dir='ltr' style='text-align: right' class='ui-paging-info' id='"+prefixCode+"_totalCountId'>共 0 条</div>"+
			                "</td>"+
			             "</tr>"+
		            "</tbody>"+
		        "</table>"+
		    "</div>"+
		"</div>";
	
	$('#'+prefixCode+"_tableId").after(pageHtmlStr);
}