//上传附件
function installLayuiUpload(elemId,demoListViewId,bindActionId,fileUploadDivId,uploadUrl,targetFlag){
	var files;
	var uploadTotal;
	var uploadListIns;
	var uploadSuccess;
	var demoListView = $('#'+demoListViewId);
	
	uploadListIns = upload.render({
	    elem: '#'+elemId,
	    url: uploadUrl,
	    accept: 'file',
	    multiple: true,
	    auto: false,
	    bindAction: '#'+bindActionId,
	    choose: function(obj){   
	    	if(uploadTotal == uploadSuccess && uploadSuccess !='' && uploadTotal !='' && uploadSuccess != null && uploadTotal != null){
	        	for(var p in files){
	        		delete files[p];
	        	}
		    	demoListView.find('tr').remove();
			    uploadListIns.config.elem.next()[0].value = '';
			    uploadTotal = '';
			    uploadSuccess = '';
	        }
	    	files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
	    	//读取本地文件
	    	obj.preview(function(index, file, result){
	    		var tr = $(['<tr id="upload-'+ index +'">',
	    		            '<td>'+ file.name +'</td>',
	    		            '<td>'+ (file.size/1014).toFixed(1) +'kb</td>',
	    		            '<td>等待上传</td>',
	    		            '<td>',
	           					'<button class="layui-btn layui-btn-xs demo-reload layui-hide">重传</button>',
	            				'<button class="layui-btn layui-btn-xs layui-btn-danger demo-delete">删除</button>',
	            			'</td>',
	          				'</tr>'].join(''));
	        
	        //单个重传
	        tr.find('.demo-reload').on('click', function(){
	        	obj.upload(index, file);
	        });
	        
	        //删除
	        tr.find('.demo-delete').on('click', function(){
	        	delete files[index]; //删除对应的文件
	        	tr.remove();
	        	uploadListIns.config.elem.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
	        });
	        
	        demoListView.append(tr);
	      });
	    	$('#'+fileUploadDivId).css('display','block');
	    },
	    before: function(obj){
	    	//项目管理--外层项目进度
	    	if(targetFlag == 'out_projectProgress'){
	    		uploadListIns.config.data.progressId = $('#progressId').val();
	    	}
	    	
	    	//项目管理--内层项目进度
	    	if(targetFlag == 'in_projectProgress'){
	    		uploadListIns.config.data.progressId = $('#updateAndSee_progressId').val();
	    	}
	    	
	    	//项目管理--项目合同
	    	uploadListIns.config.data.contractName = $('#project_contractName').val();
	    	uploadListIns.config.data.projectPid = $('#pid').val();
	    	
	    	//项目管理--项目预算
	    	if(targetFlag == 'out_projectBudget'){
	    		uploadListIns.config.data.projectBudgetPid = $('#projectBudgetPid').val();
	    	}
	    	
	    	//项目管理--内层项目预算
	    	if(targetFlag == 'in_projectBudget'){
	    		uploadListIns.config.data.projectBudgetPid = $('#updateAndSee_projectBudgetPid').val();
	    	}
	    	
	    	//项目股东付款期请求管理--附件
	    	if(targetFlag == 'project_stockHolder_pay'){
	    		uploadListIns.config.data.payMentPid = $('#stockPaymentPid').val();
	    	}
	    },
	    done: function(res, index, upload){
	      if(res.success == 's'){ //上传成功
	        var tr = demoListView.find('tr#upload-'+ index);
	        tds = tr.children();
	        tds.eq(2).html('<span style="color: #5FB878;">上传成功</span>');
	        tds.eq(3).html(''); 					
	        
	        //项目管理--刷新项目进度及进度附件列表
	        if(res.refreshType == 'progress'){
	        	
	        	var projectPid = $('#pid').val();
	        	var options =$("#progress_corPageSelect option:selected");
	        	var pageSize = options.val();
	        	getProProgressList(projectPid,"1",pageSize);
	        	
	        	if(targetFlag == 'in_projectProgress'){
	        		var updateAndSee_progressId = $('#updateAndSee_progressId').val();
	        		var fileListOfeachOneProgress_options=$("#fileListOfeachOneProgress_corPageSelect option:selected");
	        		var fileListOfeachOneProgress_pageSize = fileListOfeachOneProgress_options.val();
	        		
	        		getProgressFileList(updateAndSee_progressId,"",fileListOfeachOneProgress_pageSize,"2");
	        	}
	        }
	        
	        //项目管理--刷新项目合同附件列表
	        if(res.refreshType == 'contract'){
	        	var projectPid = $('#pid').val();
	        	var options=$("#contract_corPageSelect option:selected");
	        	var pageSize = options.val();
	        	getContractList(projectPid,"1",pageSize);
	        }
	        
	        //项目管理--刷新项目预算记录及附件列表
	        if(res.refreshType == 'budget'){
	        	var projectPid = $('#pid').val();
	        	var options=$("#budget_corPageSelect option:selected");
	        	var pageSize = options.val();
	        	getBudgetList(projectPid,"1",pageSize);
	        	
	        	if(targetFlag == 'in_projectBudget'){
	        		var updateAndSee_projectBudgetPid = $('#updateAndSee_projectBudgetPid').val();
	        		var fileListOfeachOneBudget_options=$("#fileListOfeachOneBudget_corPageSelect option:selected");
	        		var fileListOfeachOneBudget_pageSize = fileListOfeachOneBudget_options.val();
	        		
	        		getBudgetFileList(updateAndSee_projectBudgetPid,"",fileListOfeachOneBudget_pageSize,"2");
	        	}
	        }
	        
	        //刷新股东付款请求附件列表
	        if(res.refreshType == 'stockHolderPay'){
	        	var payMentPid = $('#stockPaymentPid').val();
	        	var options=$("#stockHolderPayFile_corPageSelect option:selected");
	        	var pageSize = options.val();
	        	getStockHolderVoucherList(payMentPid,"1",pageSize);
	        }
	        
	        return delete files[index];
	      }
	      
	      this.error(index, upload);
	    },
	    allDone: function(obj){ //当文件全部被提交后，才触发
	        uploadTotal = obj.total;
	        uploadSuccess = obj.successful;
	        if(uploadTotal == uploadSuccess && uploadSuccess !='' && uploadTotal !='' && uploadSuccess != null && uploadTotal != null){
	        	$('#'+fileUploadDivId).delay(2000).slideUp(4000);
	        }
	    },
	    error: function(index, upload){
	       var tr = demoListView.find('tr#upload-'+ index);
	       tds = tr.children();
	       tds.eq(2).html('<span style="color: #FF5722;">上传失败</span>');
	       tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
	    }
	  });
}