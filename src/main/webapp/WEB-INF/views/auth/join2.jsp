<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="memb">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>HM FUTSAL PARK</title>
	<meta name="keywords" content="HM FUTSAL PARK">
	<meta name="description" content="�����̾� ǲ���� HMǲ����ũ, ���� 11�� ����, ��� ����, ���� �Ը� �� ��ȸ �� ���� ��ȸ ����">
	<meta property="og:type" content="website">
	<meta property="og:image" content="https://hmfutsalpark.com/images/common/link_profile.png">
	<meta property="og:title" content="HM FUTSAL PARK">
	<meta property="og:description" content="�����̾� ǲ���� HMǲ����ũ">
	<meta property="og:url" content="https://hmfutsalpark.com">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<!-- ����css -->
	<link rel="stylesheet" type="text/css" href="../resources/css/commonH.css">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">

	<link rel="manifest" href="/favicon/manifest.json">
	<meta name="msapplication-TileColor" content="#2c3c57">
	<meta name="theme-color" content="#2c3c57">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<!--[if lt IE 9]><script type="text/javascript" src="/js/libs/html5.js"></script><![endif]-->
	<!--[if lt IE 9]><script type="text/javascript" src="/js/libs/respond.min.js"></script><![endif]-->

	<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
	<script type="text/javascript" src="../resources/js/jquery.min.js"></script>  
	<script type="text/javascript" src="../resources/js/common.js"></script>
	<script type="text/javascript" src="../resources/js/form_check.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-116234591-1"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-116234591-1');
	</script>
	<!-- Global site tag (gtag.js) - Google Analytics -->

	<link rel="stylesheet" type="text/css" href="../resources/css/content.css">
<script language="Javascript">
	$(document).ready(function() {
		$('html').addClass('memb');
	});
</script>
</head>

<body>
<div id="wrapper"> 

	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="member_wrap">
				<h1 onclick="document.location.href='${pageContext.request.contextPath }';"><span class="hide">HM SPORTS</span></h1>

				<form name="frmJoin" method="post" action="join2" enctype="multipart/form-data">
				<div class="join_wrap info">
					<dl>
						<dt>아이디 <span>(필수)</span></dt>
						<dd>
							<input type="text"  name="mId" style="width:75%" />
							<span class="t_help">이미 사용중이거나 탈퇴한 아이디 입니다.</span>
							<button id="" type="button" class="btn_check" onclick="cnfm_sms2();">중복확인</button>
							<div id="checkMsg"></div>
						</dd>
						<dt>비밀번호 <span>(필수)</span></dt>
						<dd>
							<input type="password"  name="mPwd" style="width:100%" />
							<span class="t_help">필수 항목 입니다.</span>
						</dd>  
						<dt>비밀번호 재확인 <span>(필수)</span></dt>
						<dd>
							<input type="password"  name="mPwd1" style="width:100%" />
							<span class="t_help">비밀번호는 숫자, 영문, 특수문자 조합으로 8~12자리를 사용해야 합니다.</span>
						</dd>
						<dt>이름 <span>(필수)</span></dt>
						<dd>
							<input type="text"  name="mName" style="width:100%" />
							<span class="t_help">필수 항목 입니다.</span>
						</dd>
						<dt>휴대전화 <span>(필수)</span></dt>   
						<dd> 
							<div class="phone">
							<input type="text"  name="mTel" maxlength=13 onKeyup="inputPhoneNumber(this);"/>
							
							<span class="t_help">필수 항목 입니다.</span>
							</div>
						</dd> 
						<dt>포지션</dt>
						<dd> 
							<div class="position">  
								<select style="width: 100%; height: 60px; font-size: 20px; text-align: center;" name="mPosition">   
									<option>선택하세요</option>
									<option>공격수</option> 
									<option>미드필더</option> 
									<option>수비수</option>
									<option>골키퍼</option>  
								</select>
							</div>
						</dd>
						
						<dt>회원사진</dt>
						<dd> 
							<div class="memberimg">
								<input type="file" name="file" style="width: 100%">
							</div>
						</dd>	
						
						
 					</dl>
<script> 
function cnfm_sms(){ 
	var frm = document.frmJoin;
 
	if (frm.mTel.value == "") {
		alert("[휴대전화]을 입력하세요.");
		frm.mTel.focus();
		return;
	} 
	
	/* if (frm.mTel2.value == "") {
		alert("[휴대전화]을 입력하세요.");
		frm.mTel2.focus();
		return;
	} 
 
	if (frm.mTel3.value == "") {
		alert("[휴대전화]을 입력하세요.");
		frm.mTel3.focus();
		return;
	}  */
	var mTels = frm.mTel.value+frm.mTel2.value+frm.mTel3.value
	window.open("join_confirm_sms_send.asp?mTel="+mTels,"HiddenFrame");
}

function cnfm_sms2(){ 
	var frm = document.frmJoin;
	
	$.ajax({
		url:"join3/"+frm.mId,
		type:"get",
		dataType:"json",
		success:function(res){
			console.log(res); 
			if($.trim(data)==0){
				  $('#checkMsg').html('<p style="color:blue">사용가능</p>');

			}
		}
	})
}

function cnfm_sms_no(e){ 
	var frm = document.frmJoin;
 
	if (frm.sms_cnfm.value == "") {
		alert("[문자 인증 수신번호]을 입력하세요.");
		frm.sms_cnfm.focus();
		return;
	}  

	window.open("join_confirm_sms_ok.asp?sms_cnfm="+frm.sms_cnfm.value  ,"HiddenFrame");
} 

function not_sms_cnfmed(){
	$("#sms_cnfm").val('');
	$("#sms_cnfm").focus();
}



function inputPhoneNumber(obj) {

   
 
    var number = obj.value.replace(/[^0-9]/g, "");
    var phone = "";
	
   
    if(number.length < 4) {
        return number;
    } else if(number.length < 7) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3);
    } else if(number.length < 11) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 3);
        phone += "-";
        phone += number.substr(6);
    } else {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 4);
        phone += "-";
        phone += number.substr(7); 
    }
    
   
   
   
    obj.value = phone;
}
</script>
					<div class="btn_wrap">
						<button type="button" class="btn_middle" onCLick="checkForm();">가입하기</button>
					</div>
					</div>
					</form>

					<div class="bot_info">
						<span class="logo"><em class="hide">HM SPORTS</em></span>
						<p class="copy">COPYRIGHT©  HM SPORTS. ALLRIGHT RESERVED</p>
					</div>


				</div>
			</div>

			<!-- Layer popup - 가입완료 -->
			<div class="layer_popup find" id="">
				<div class="layer_cont">
					<div class="find_comp comp">
						<p><em>흠스포</em>님 회원가입을 축하합니다.<br />회원님의 아이디는 <span>hmsports1</span> 입니다.</p>

						<div class="btn_wrap">
							<button type="button" class="btn_middle">확인</button>
						</div>
					</div>
				</div>
			</div>
			<!-- //Layer popup - 가입완료 -->

			<div class="layer_dim"></div>

		</div>
		<!-- //Contents -->
	</section>

 
<script>
function CheckEmail(mStr){
	var frm = document.frmJoin;
	if (mStr !== "etc") {
		frm.email2.readOnly = true;
		frm.email2.value = mStr;
	} else {
		frm.email2.value = "";
		frm.email2.readOnly = false;
		frm.email2.focus();
	}
}

function checkForm(){
	var frm = document.frmJoin;
 
	if (frm.mId.value == "") {
		alert("[아이디]을 입력하세요.");
		frm.mId.focus();
		return;
	}
	if (EmptyChk(frm.mPwd.value) < 4) {
		alert("[비밀번호]는 4이상 입력되어야 합니다.");
		frm.mPwd.focus();
		return;
	}
	if (EmptyChk(frm.mPwd1.value) < 4) {
		alert("[비밀번호]는 4이상 입력되어야 합니다.");
		frm.mPwd1.focus();
		return;
	}
	if (frm.mPwd.value !== frm.mPwd1.value) {
		alert("[비밀번호]가 일치하지 않습니다.");
		frm.mPwd1.focus();
		return;
	}
	if (frm.mName.value == "") {
		alert("[이름]을 입력하세요.");
		frm.mName.focus();
		return;
	}  
	if (frm.mTel.value == "") {
		alert("[핸드폰번호]를 입력하세요.");
		frm.mTel1.focus();
		return;
	}
	if (frm.mTel.value.length < 12){
		alert("[핸드폰번호]를 확인해주세요.");
		frm.mTel1.focus();
		return;
	}
	/* if (frm.mTel2.value == "") {
		alert("[핸드폰번호]를 입력하세요.");
		frm.mTel2.focus();
		return;
	}
	if (frm.mTel3.value == "") {
		alert("[핸드폰번호]를 입력하세요.");
		frm.mTel3.focus();
		return;
	}  */
	/*
	if (CheckEmailTail(frm.email1.value) == false) {
		alert("[이메일] 형식이 맞지 않습니다.");
		frm.email1.value = "";
		frm.email1.focus();
		return;
	}
	if (CheckEmailTail(frm.email2.value) == false) {
		alert("[이메일] 형식이 맞지 않습니다.");
		frm.email2.value = "";
		frm.email2.focus();
		return;
	}
	*/
 	alert("회원가입 되셨습니다!")
	frm.target="/auth/login";
	frm.submit();
}
//-->
</script>

	<!-- Footer -->
	<footer id="footer">
		<div class="footer_wrap">
			<span class="logo"></span>
			<div class="foot_util">
				<ul>
					<li><a href="/member/privacy.asp">개인정보처리방침</a></li>
					<li><a href="/member/tos.asp">이용약관</a></li>
					<li><a href="/member/emailcollection.asp">이메일무단수집거부</a></li>
				</ul>
			</div>
			<p class="info">서울시 성동구 왕십리로 58 FORHU 512호(성수동 1가)<span>TEL : 02-332-7807</span><span>FAX : 02-2061-0373</span></p>
			<p class="copy">COPYRIGHT© HM SPORTS. ALLRIGHT RESERVED</p>
		</div>
	</footer>
	<!-- //Footer -->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>
</body>
</html>