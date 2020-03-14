//校验必填项并对必填项为空做提示:true表示是,false表示否
function cheackAndShowWarns(targetElemsId) {
	var spanWarnHtml = "<span  class='warn_span'>*必填</span>";
	var flag = false;
	if(targetElemsId != null && targetElemsId.length > 0){
		for(var i=0;i<targetElemsId.length;i++){
			var targetElemId = targetElemsId[i];
			var elmIdVal = $("#"+targetElemId).val();
			
			$('#'+targetElemId+"_warnSpanDivId"+" > span").remove();
			if(elmIdVal == ''){
				$('#'+targetElemId+"_warnSpanDivId").append(spanWarnHtml);
				$('#'+targetElemId+"_warnSpanDivId"+" > span").show();
				flag = true;
			}else{
				$('#'+targetElemId+"_warnSpanDivId"+" > span").hide();
				$('#'+targetElemId+"_warnSpanDivId"+" > span").remove();
			}
		}
	}
	return flag;
}


//鼠标自动聚焦到必填空值input
function focusWarnInput(tags) {
	if(tags != null && tags.length > 0){
		for(var i=0;i<tags.length;i++){
			var tag = tags[i];
			var elmId = "#"+tag;
			var elmIdVal = $(elmId).val();
			if(elmIdVal == ''){
				$(elmId).focus();
				break;
			}
		}
	}
}


//校验是否为数值类型并显示提示框:true表示是,false表示否
function cheackIsNumAndShowWarns(targetElemsId) {
	var spanWarnHtml = "<span  class='warn_span'>*格式错误</span>";
	
	var allIsNum = false;
	var catchOneFlag = 0;
	if(targetElemsId != null && targetElemsId.length > 0){
		for(var i=0;i<targetElemsId.length;i++){
			var targetElemId = targetElemsId[i];
			var elmIdVal = $("#"+targetElemId).val();
			
			$('#'+targetElemId+"_warnSpanDivId"+" > span").remove();
			if(!cheackIsNum(elmIdVal)){
				$('#'+targetElemId+"_warnSpanDivId").append(spanWarnHtml);
				$('#'+targetElemId+"_warnSpanDivId"+" > span").show();
				var curIsNum = false;
				if(catchOneFlag == 0){
					allIsNum = curIsNum;
					catchOneFlag = 1;
				}
			}else{
				$('#'+targetElemId+"_warnSpanDivId"+" > span").hide();
				$('#'+targetElemId+"_warnSpanDivId"+" > span").remove();
				var curIsNum = true;
				if(catchOneFlag == 0){
					allIsNum = curIsNum;
				}
			}
		}
	}
	
	return allIsNum;
}


//校验掺入值是否为数值类型:true表示是,false表示否
function cheackIsNum(targetElemVal) {
	var reg = /^\d$/;
	var reg2 = /^\.{2,}$/;
	var flag = false;
	
	if(reg2.test(targetElemVal)){
		flag = false;
	}else if(targetElemVal == "."){
		flag = false;
	}else{
		targetElemVal = targetElemVal.replace(".","");
		if(targetElemVal != ''){
			for(var i=0;i<targetElemVal.length;i++){
				var everyLetterVal = targetElemVal[i];
				if(reg.test(everyLetterVal)){
					flag = true;
				}else{
					flag = false;
					break;
				}
			}
		}else{
			flag = true;
		}
		
	}
	return flag;
}


//鼠标自动聚焦到数值格式不正确的input
function focusWarnNumInput(tags) {
	if(tags != null && tags.length > 0){
		for(var i=0;i<tags.length;i++){
			var tag = tags[i];
			var elmId = "#"+tag;
			var elmIdVal = $(elmId).val();
			if(!cheackIsNum(elmIdVal)){
				$(elmId).focus();
				break;
			}
		}
	}
}

//校验是否为手机号码:true表示是,false表示否
function cheackPhoneAndShowWarns(targetElemsId) {
	var spanWarnHtml = "<span  class='warn_span'>*格式错误</span>";
	var flag = false;
	if(targetElemsId != null && targetElemsId.length > 0){
		for(var i=0;i<targetElemsId.length;i++){
			var targetElemId = targetElemsId[i];
			var elmIdVal = $("#"+targetElemId).val();
			
			$('#'+targetElemId+"_warnSpanDivId"+" > span").remove();
			if(!isMobiel(elmIdVal)){
				$('#'+targetElemId+"_warnSpanDivId").append(spanWarnHtml);
				$('#'+targetElemId+"_warnSpanDivId"+" > span").show();
				flag = false;
			}else{
				$('#'+targetElemId+"_warnSpanDivId"+" > span").hide();
				$('#'+targetElemId+"_warnSpanDivId"+" > span").remove();
				flag = true;
			}
		}
	}
	return flag;
}

//校验手机号码:true表示是正确的手机号码,false表示非正确的手机号码
function isMobiel(str) {
	var myReg = /^1[3456789][0-9]{9}$/;
	var rst = false;
	if(str == ''){
		rst = true;
	}else{
		if ($.trim(str) == ''){
			rst = false;
		}else if(!myReg.test(str)){
			rst = false;
		}else{
			rst = true;
		}
	}
	return rst;
}