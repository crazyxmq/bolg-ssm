'use strict';
$(function(){
    //下拉框
	$(document).on('click','.dropdown-menu li',function(){
		var sel_box = $(this).parent(".dropdown-menu")
		   ,text_box = sel_box.prev("button").find(".multiselect_text_js")
		   ,txt =  $(this).text()
		   ,span_num = $(this).find("span[class ^= 'icon-']").length;

		if(txt !== '' && txt !== '未选择'){
			$(this).parents('.pop_group_js').removeClass('error');
		}   
		
		if(span_num == 0 && !$(this).hasClass("disabled")){
			sel_box.find("li").removeClass("active");
		    $(this).addClass("active");  
		}
		if(!$(this).hasClass("disabled")){
			text_box.text(txt);
		}
	});
    //left nav
	$(".nav .nav_h3_js").off('click');
	$(".nav .nav_h3_js").on('click',function(){
		var now = $(this);
		var sec_box = now.parent(".section");
		var ul_nums = sec_box.find("ul").length;
		if(ul_nums != 0){
			if(!now.find(".icon_down").hasClass("icon_up")){
				$(".nav").find("ul").slideUp("fast");
				$(".nav").find(".icon_down").removeClass('icon_up');
				sec_box.find(".icon_down").addClass('icon_up');
				sec_box.find("ul").slideDown("fast");
			}else{
				sec_box.find(".icon_down").removeClass('icon_up');
				sec_box.find("ul").slideUp("fast");
			}
		}
	});

	//清除输入框错误提示
	$('.pop_group_js .tab_input').off('focus');
	$('.pop_group_js .tab_input').on('focus',function(){
		var mytip = $(this).parents(".pop_group_js");
		mytip.removeClass('error');
	});

	/*密码弹出层*/
	$('#passwordModalA').off('click');
    $('#passwordModalA').on('click',function(){
        $('#passwordModal').modal('show');
    });

	//修改密码确认
	$("#submitPwd").off("click");
    $("#submitPwd").on("click",function(){
    	var val1 = $.trim($("#oldPwdInput").val());
    	var val2 = $.trim($("#newPwdInput").val());
    	var val3 = $.trim($("#surePwdInput").val());
    	//旧密码检查
    	var flag1 = checkPwdold(val1,'oldPwdInput');
    	//密码检查
    	var flag2 = checkPwd(val2,'newPwdInput');
    	var flag3 = checkPwd(val3,'surePwdInput');
    	if(val2 !== val3){
    		inputVal('两次密码不一致','surePwdInput');
    	}
    	//两次密码不一致
    	if(flag1&&flag2&&flag3&&(val2 === val3)){
			$('#passwordModal').modal('hide');
        	//提示
        	bsalert('修改密码成功',1);
    	}
    });

    //
    $('.calendar').datepicker({
	  format: 'yyyy-mm-dd',
	  autoclose: true
	})
});

//旧密码检查
function checkPwdold(val,objId){
	var flag = true;
	var smg = '';
	if(val === ''){
		flag = false;
		smg = '旧密码不能为空'
	}
	//旧密码是否正确检查
	/*if(val!==){
		flag = false;
		smg = '旧密码不正确'
	}*/
	if(smg !== ''){
		inputVal(smg,objId)
	}
	return flag;
}
//密码检查
function checkPwd(val,objId){
	var flag = true;
	var smg = '';
	if(val === ''){
		flag = false;
		smg = '密码不能为空'
	}
	if(smg !== ''){
		inputVal(smg,objId)
	}
	return flag;
}

//选择框检查
function checkSlect(objId){
	var flag = true;
	var obj = $('#'+objId+'');
	var val = obj.find('.multiselect_text_js').text();
	var smg = '';
	if(val === '' || val === '未选择'){
		flag = false;
		smg = '请选择'
	}
	if(smg !== ''){
		inputVal(smg,objId)
	}
	return flag;
}

//input 出错赋值
//text 出错提示
//obj  input 对像
function inputVal(text,objId){
	var obj = $('#'+objId+'');
	var box = obj.parents('.pop_group_js');
	box.addClass('error');
	
	box.find('.trip_erro').html('<span>'+text+'</span>');
	var h = box.find('.trip_erro span').height();

	if(h>14){
		box.find('.trip_erro').addClass('multi_line');
	}else{
		box.find('.trip_erro').removeClass('multi_line');
	}
}


//为空时显示
function empty_box(objId,text){
	var e_html = '';
	var obj = $('#'+objId+'');
	var nums = obj.find('.empty_box').length;
	e_html += '<div class="empty_box">';
	e_html += '<span class="empty_txt">'+text+'</span>';
	e_html += '</div>';
	if(nums == 0){
		obj.append(e_html)
	}
}

//alert
//type 类型
function bsalert(text,type){
	var a_html = '';
	var a_class = 'alert-success';
	switch(type){
		case '1':{
			//成功
			a_class = 'alert-success'
			break;
		}
		case '2':{
			//提示
			a_class = 'alert-info'
			break;
		}
		case '3':{
			//警告
			a_class = 'alert-warning'
			break;
		}
		case '4':{
			//出错
			a_class = 'alert-danger'
			break;
		}
	}
	a_html += '<div class="alert '+a_class+' alert-dismissible fade in" role="alert">';
	a_html += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>';
	a_html += '<span class="text">'+text+'</span></div>';
	var nums = $('body').find('.alert').length;
	if(nums == 0){
		$('body').append(a_html);
		$('.alert').animate({
			"opacity": 1
		},800,function(){
			$('.alert').animate({
				"opacity": .3
			},1200,function(){
				$('.alert').remove();
			});
		});
	}  
}




