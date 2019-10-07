<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../views/include/header.jsp"%>
<style>
#video_wrap {
	position: relative;
	width: 100%;
	height: 460px;
}

#video_wrap #main_title {
	position: absolute;
	left: 360px;
	bottom: 15px;
	font-size: 80px;
	color: white;
}

.title_wrap {
	width: 100%;
	height: 85px;
	background-color: #2c3c57;
}

.sub_title {
	width: 1200px;
	margin: 0 auto;
	height: 100%;
}

.sub_title2 {
	width: 400px;
	background: #192336;
	height: 100%;
}

.sub_title2 h2 {
	padding-top: 25px;
	padding-left: 50px;
	color: white;
}

.list_wrap {
	width: 100%;
}

.tab_wrap {
	border: 1px solid #4b4b4b
}

.tab_wrap ul:after {
	content: "";
	display: block;
	clear: both;
}

.tab_wrap ul li {
	position: relative;
	float: left;
	width: 50%;
	list-style: none
}

.tab_wrap ul li>a {
	display: block;
	position: relative;
	border-left: 1px solid #2c3c57;
	background: #fff;
	color: #2c3c57;
	font-size: 22px;
	font-weight: 700;
	line-height: 70px;
	text-align: center;
	text-decoration: none;
}

.tab_wrap ul li:first-child>a {
	border-left: 0
}

.tab_wrap ul li>a:hover {
	background: #2c3c57;
	color: #fff
}

.tab_wrap ul li.on {
	z-index: 10
}

.tab_wrap ul li.on>a {
	background: #2c3c57;
	color: #fff;
	text-decoration: none;
}

.tab_wrap ul li.on>a:after {
	content: "";
	display: block;
	position: absolute;
	left: 50%;
	bottom: -13px;
	margin-left: -6px;
	width: 13px;
	height: 13px;
	background: url('/images/content/bg_tab_arr.png') no-repeat 0 0
}

.tab_wrap ul li .tab_cont {
	display: none;
	margin-top: 60px;
	width: 700%;
}

.tab_wrap ul li.on .tab_cont {
	display: block
}

.h_tit {
	position: relative;
	margin-bottom: 45px;
	margin-top: 50px;
	padding-bottom: 24px;
	font-size: 60px;
	font-family: 'NanumBarunGothicL';
	line-height: 60px;
	text-align: center;
	padding-bottom: 24px;
}

.h_tit:after {
	content: "";
	display: block;
	position: absolute;
	bottom: 0;
	left: 50%;
	margin-left: -49px;
	width: 98px;
	height: 2px;
	background: #bfc4cc;
} 
                   
.h_bar {
	position: relative;
	padding-left: 26px;
	color: #2c3c57;
	font-size: 30px;
	line-height: 40px;
	letter-spacing: -2px
}

.h_bar:before {
	content: "";
	display: block;
	position: absolute;
	top: 5px;
	left: 0;
	width: 5px;
	height: 30px;
	background: #2c3c57
}

.h_bar:after {
	content: "";
	display: block;
	position: absolute;
	top: 5px;
	left: 0;
	width: 5px;
	height: 6px;
	background: #aec8f4
}

.h_bar.line {
	padding-bottom: 13px;
	border-bottom: 2px solid #353535
}

.h_bar_na {
	position: relative;
	padding-left: 26px;
	color: #2c3c57;
	font-size: 30px;
	line-height: 40px;
	letter-spacing: -2px
}

.h_bar_na:before {
	content: "";
	display: block;
	position: absolute;
	top: 5px;
	left: 0;
	width: 5px;
	height: 30px;
}

.h_bar_na:after {
	content: "";
	display: block;
	position: absolute;
	top: 5px;
	left: 0;
	width: 5px;
	height: 6px;
}

.h_bar_na.line {
	padding-bottom: 13px;
	border-bottom: 2px solid #353535;
}

.rese_wrap .rese_start {
	margin: 0 auto;
	max-width: 800px
}

.rese_wrap .rese_start .tit {
	padding-left: 113px;
	background: #2c3c57 url('resources/images/ground/bg_rese_start.png')
		no-repeat 0 0;
	color: #fff;
	font-size: 28px;
	line-height: 113px;
	text-align: center;
	border-radius: 15px 15px 0 0;
	letter-spacing: -0.4px
}

.rese_wrap .rese_start .start_wrap {
	padding: 93px 0 87px 0;
	border: 2px solid #bfc4cc;
	border-top: 0;
	background: #f2f2f2;
	border-radius: 0 0 15px 15px;
}

.rese_wrap .rese_start .start_wrap	.cont {
	margin: 0 auto;
	width: 390px
}

.rese_wrap .rese_start .start_wrap	.cont .select {
	margin-top: 14px;
	height: 47px
}

.rese_wrap .rese_start .start_wrap	.cont .select label {
	line-height: 45px
}

.rese_wrap .rese_start .start_wrap	.cont .select select {
	height: 45px;
	line-height: 45px
}

.rese_wrap .rese_start .start_wrap	.cont .select:first-child {
	margin-top: 0
}

.rese_wrap .rese_start .start_wrap	.cont .select:hover {
	border: 1px solid #7092cb
}

.rese_wrap .rese_start .start_wrap	.cont .btn_wrap {
	margin-top: 34px
}

.rese_wrap .rese_start .start_wrap	.cont .btn_wrap .btn_big {
	width: 100%
}

.rese_wrap .rese_start .start_wrap  .cont span input {
	width: 100%;
	margin-top: 14px;
	height: 47px
}

.rese_wrap .rese_start .start_wrap  .cont span input:first-child {
	margin-top: 0
}

.rese_wrap .rese_start .start_wrap  .cont span.text {
	padding-bottom: 10px;
}

.rese_wrap .rese_start .start_wrap .cont span.text dt {
	padding-top: 10px;
	margin-bottom: 5px;
	color: #2c3c57;
	font-weight: 700
}

.rese_wrap .rese_start .start_wrap  .cont .fl_wrap dl dt {
	margin-top: 7px;
	font-size: 14px;
	line-height: 30px
}

.rese_wrap .rese_start .start_wrap  .cont .fl_wrap dl dd input {
	height: 38px
}

.rese_wrap.cal {
	padding: 0 !important
}

.rese_wrap .fl_wrap .fl_left {
	width: 584px
}

.rese_wrap .fl_wrap .fl_right {
	width: 584px
}

.rese_wrap .fl_wrap .fl_left .thumb {
	position: relative;
}

.rese_wrap .fl_wrap .fl_left .thumb .tag {
	position: absolute
}

.rese_wrap .fl_wrap .fl_left .thumb .tag {
	position: absolute;
	right: 25px;
	bottom: 87px;
	left: 25px;
	text-align: left
}

.rese_wrap .fl_wrap .fl_left .thumb .tag span {
	display: inline-block;
	margin-right: 12px;
	color: #fff;
	font-size: 30px;
	font-weight: 700;
	line-height: 34px;
	text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5)
}

.rese_wrap .fl_wrap .fl_left .thumb .img {
	
}

.rese_wrap .fl_wrap .fl_left .thumb .img img {
	width: 100%
}

.rese_wrap .fl_wrap .fl_left .thumb .name {
	background: #2c3c57;
	color: #fff;
	font-size: 30px;
	line-height: 76px;
	text-align: center
}

.rese_wrap .fl_wrap .fl_left .info {
	padding: 0 16px 16px 16px;
	border: 1px solid #bfc4cc;
	border-top: 0
}

.rese_wrap .fl_wrap .fl_left .info .tit {
	padding: 36px 0 18px 0;
	color: #383838;
	font-size: 24px;
	font-weight: 700;
	line-height: 36px
}

.rese_wrap .fl_wrap .fl_left .info p, .rese_wrap .fl_wrap .fl_left .info li
	{
	color: #555;
	font-size: 16px;
	line-height: 26px
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap {
	padding: 26px 17px 29px 17px;
	border: 1px solid #bfc4cc;
	background: #f2f2f2;
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .top {
	text-align: center
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .top .btn_prev {
	display: inline-block;
	width: 36px;
	height: 36px;
	background: url('/images/content/btn_cal_prev.png') no-repeat center
		center;
	vertical-align: top
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .top .btn_next {
	display: inline-block;
	width: 36px;
	height: 36px;
	background: url('/images/content/btn_cal_next.png') no-repeat center
		center;
	vertical-align: top
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .top .btn_prev:hover {
	background: url('/images/content/btn_cal_prev_ov.png') no-repeat center
		center;
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .top .btn_next:hover {
	background: url('/images/content/btn_cal_next_ov.png') no-repeat center
		center;
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .top .year {
	display: inline-block;
	width: 180px;
	color: #383838;
	font-size: 28px;
	line-height: 36px;
	vertical-align: top
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .table_calendar {
	margin-top: 25px;
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .table_calendar table {
	border-bottom: 1px solid #d8d8d8
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .table_calendar table thead tr th
	{
	height: 55px;
	color: #111;
	font-size: 16px;
	line-height: 55px;
	text-align: center
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .table_calendar table tbody tr td
	{
	padding: 0;
	height: 60px;
	border-top: 1px solid #d8d8d8;
	border-right: 1px solid #d8d8d8;
	text-align: center
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .table_calendar table tbody tr td:first-child
	{
	border-left: 1px solid #d8d8d8
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .table_calendar table tbody tr td button
	{
	display: block;
	position: relative;
	width: 100%;
	height: 60px;
	line-height: 60px;
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .table_calendar table tbody tr td button span
	{
	display: block;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	height: 60px;
	font-size: 16px;
	line-height: 60px;
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .table_calendar table tbody tr td button:disabled span
	{
	color: #d9d9d9 !important
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .table_calendar table tbody tr td.holi button span
	{
	color: #ff0000
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .table_calendar table tbody tr td button.on span
	{
	top: -1px;
	right: -1px;
	bottom: -1px;
	left: -1px;
	height: 62px;
	color: #fff;
	line-height: 62px;
	background: #2c3c57
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .bot {
	margin-top: 32px;
	text-align: center
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .bot span {
	display: inline-block;
	position: relative;
	margin-left: 27px;
	color: #555;
	font-size: 16px;
	padding-left: 40px;
	line-height: 23px;
	vertical-align: top
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .bot span:first-child {
	margin-left: 0
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .bot span:after {
	content: "";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 23px;
	height: 23px;
	background: #2c3c57
}

.rese_wrap .fl_wrap .fl_right .calendar_wrap .bot span.imp:after {
	width: 21px;
	height: 21px;
	border: 1px solid #c1c1c1;
	background: #d9d9d9
}

.rese_wrap .fl_wrap .fl_right .info_wrap {
	padding: 0 17px;
	border-right: 1px solid #bfc4cc;
	border-left: 1px solid #bfc4cc;
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap {
	position: relative;
	padding: 21px 0;
	border-bottom: 1px solid #bfc4cc;
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap span {
	display: inline-block;
	line-height: 46px;
	vertical-align: top
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .tit {
	width: 116px;
	color: #111;
	font-size: 20px;
	line-height: 46px
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .date {
	font-weight: 700
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .select {
	width: 100%;
	height: 46px;
	line-height: 45px
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .select label {
	height: 44px;
	line-height: 44px
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .select select {
	height: 44px;
	line-height: 44px
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .t_help {
	float: right;
	color: #555;
	font-size: 16px
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .btn_oc {
	display: none
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .sec_time {
	
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .sec_time ul {
	margin-left: -4px
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .sec_time ul:after {
	content: "";
	display: block;
	clear: both
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .sec_time ul li {
	float: left;
	margin-top: 9px;
	margin-left: 4px;
	width: 180px
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .sec_time ul li button
	{
	display: block;
	padding: 10px 0;
	width: 100%;
	background: #989898;
	color: #fff;
	font-size: 16px;
	line-height: 20px;
	text-align: center
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .sec_time ul li button.on
	{
	background: #2c3c57
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .op_list {
	
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .op_list ul {
	
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .op_list ul li {
	padding: 17px 0;
	border-top: 1px solid #dbdde0
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .op_list ul li:first-child
	{
	border-top: 0
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .op_list ul li:last-child
	{
	padding-bottom: 0
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .op_list ul li input {
	height: 46px;
	text-align: center
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .op_list ul li .price {
	float: right;
	color: #383838;
	font-size: 16px;
	font-weight: 700
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .op_list ul li .price em
	{
	font-style: normal
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .op_list ul li .btn_pm
	{
	margin-left: 5px;
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .total {
	float: right;
	color: #111;
	font-size: 20px;
	font-weight: 700;
	line-height: 24px;
	text-align: right
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap .total .i_txt {
	display: block;
	font-size: 16px;
	line-height: 24px
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .tit {
	display: block;
	width: auto;
	line-height: 32px
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .t_help {
	float: none;
	line-height: 24px;
	padding: 0 0 10px 0
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list {
	
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list ul {
	
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list ul li
	{
	padding: 17px 0;
	border-top: 1px solid #dbdde0
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list ul li:first-child
	{
	border-top: 0
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list ul li:last-child
	{
	padding-bottom: 0
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list ul li .select
	{
	width: 70%
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list ul li textarea
	{
	width: 100%;
	height: 100px;
	font-size: 14px;
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list .phone
	{
	font-size: 0;
	line-height: 0 font-size:14px;
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list .phone input
	{
	width: 20%
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list .phone span:first-child
	{
	width: 14%;
}

.rese_wrap .fl_wrap .fl_right .info_wrap .t_wrap.match .match_list .phone span
	{
	display: inline-block;
	width: 2%;
	font-size: 14px;
	vertical-align: middle;
}

.rese_wrap .fl_wrap .fl_right .info_wrap .info_txt {
	margin: -1px -17px 0 -17px;
	padding: 17px;
	border-top: 1px solid #bfc4cc;
	border-bottom: 1px solid #bfc4cc;
	background: #f2f2f2
}

.rese_wrap .fl_wrap .fl_right .info_wrap .info_txt .tit {
	padding: 22px 0 8px 30px;
	background: url('/images/content/icon_info_tit.png') no-repeat 0 26px;
	color: #ff0000;
	font-size: 20px;
	line-height: 30px
}

.rese_wrap .fl_wrap .fl_right .info_wrap .info_txt p, .rese_wrap .fl_wrap .fl_right .info_wrap .info_txt li
	{
	color: #555;
	font-size: 14px;
	line-height: 26px
}

.rese_wrap .fl_wrap .fl_right .int_wrap {
	margin-top: 15px
}

.rese_wrap .fl_wrap .fl_right .int_wrap .tit {
	padding-left: 18px;
	background: #2c3c57;
	color: #fff;
	font-size: 20px;
	line-height: 70px;
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap {
	margin: 0
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table {
	border: 1px solid #c4c4c4;
	border-top: 0
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table tbody tr th {
	padding: 0 20px;
	padding-top: 12px;
	border: 0;
	font-size: 16px;
	text-align: left;
	vertical-align: top
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table tbody tr td {
	padding: 3px 16px;
	border: 0;
	height: 49px;
	font-size: 18px;
	text-align: left
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table tbody tr td .price
	{
	font-weight: 700
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table tbody tr td textarea
	{
	width: 100%;
	height: 100px
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table tbody tr:first-child th
	{
	padding-top: 25px
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table tbody tr:first-child td
	{
	padding-top: 16px
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table tbody tr:last-child td
	{
	padding-bottom: 16px
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table tbody .phone {
	font-size: 0;
	line-height: 0
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table tbody .phone input
	{
	width: 31.333333%
}

.rese_wrap .fl_wrap .fl_right .int_wrap .table_wrap table tbody .phone span
	{
	display: inline-block;
	width: 3%;
	font-size: 11px;
	text-align: center;
	vertical-align: middle;
}

.rese_wrap .fl_wrap .fl_right .int_wrap .chk {
	margin-top: 22px
}

.rese_wrap .fl_wrap .fl_right .int_wrap .btn_wrap {
	margin-top: 33px
}

.rese_wrap .fl_wrap .fl_right .int_wrap .btn_wrap .btn_big {
	width: 100%
}

.rese_wrap .fl_wrap .fl_right .int_wrap .btn_wrap .btn_big span {
	display: inline-block;
	padding-left: 50px;
	background: url('/images/content/icon_btn_rese.png') no-repeat 0 center;
}

select {
	margin: 0;
	border: 1px solid #999;
	line-height: 22px;
	height: 22px;
	color: #a6a6a6;
	font-weight: bold;
}

.select {
	display: inline-block;
	position: relative;
	padding: 0;
	height: 40px;
	border: 1px solid #e0e0e0;
	background: #fff;
	box-sizing: border-box;
	-moz-box-sizing: border-box
}

.select:after {
	content: "";
	display: block;
	position: absolute;
	right: 12px;
	top: 50%;
	margin-top: -4px;
	width: 13px;
	height: 8px;
	background: url('/images/common/select_arrow.png') no-repeat center
		center;
	background-size: 11px auto;
}

#select02 {
	width: 100%;
	height: 35px; 
	margin-bottom: 20px; 
}

.btn_wrap {
	margin-top: 20px;
	text-align: center;
	font-size: 0;
	line-height: 0;
}

.btn_wrap .btn_base, .btn_wrap .btn_big {
	margin-left: 10px
}

.btn_wrap .btn_base:first-child, .btn_wrap .btn_big:first-child {
	margin-left: 0 !important
}

.btn_wrap .btn_base, .btn_wrap .btn_middle {
	margin-left: 10px
}

.join_wrap .btn_wrap .btn_middle {
	margin-left: 0
}

.btn_wrap .btn_base:first-child, .btn_wrap .btn_middle:first-child {
	margin-left: 0 !important
}

.btn_wrap:after {
	content: "";
	display: block;
	clear: both
}

.btn_wrap.side {
	text-align: right
}

.btn_wrap.side button {
	display: inline-block;
}

.btn_wrap.side button:first-child {
	float: left
}

.btn_wrap.right {
	font-size: 0;
	line-height: 0;
	text-align: right
}

.btn_wrap.right a {
	float: none;
	margin: 0 0 0 5px;
}

.btn_wrap.right a:first-child {
	margin: 0
}

.btn_wrap.right button {
	float: none;
	margin: 0 0 0 5px;
}

.btn_wrap.right button:first-child {
	margin: 0
}

.btn_wrap.left {
	text-align: left
}

button {
	display: inline-block;
	padding: 0;
	border: 0;
	background: transparent;
	font-family: 'Nanum Gothic', '맑은 고딕', 'AppleGothic', '돋움', 'Dotum',
		sans-serif;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	white-space: nowrap;
	-webkit-transition: all 0.25s ease-out;
	-moz-transition: all 0.25s ease-out;
	-ms-transition: all 0.25s ease-out;
	-o-transition: all 0.25s ease-out;
	transition: all 0.25s ease-out;
}

button.dis, button.dis	span {
	cursor: default
}

button.dis:hover	span {
	background-position: 0 0;
}

button.dis:hover	span	span {
	background-position: right 0
}

.gray {
	background: #868686 !important
}

.cancel {
	background: #868686 !important
}

.red {
	background: #e3212b !important
}

.btn_base {
	position: relative;
	display: inline-block;
	padding: 0 15px;
	min-width: 180px;
	background: #2c3c57;
	color: #fff;
	font-size: 18px;
	line-height: 47px;
	text-align: center;
	vertical-align: middle;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-transition: all 0.25s ease-out;
	-moz-transition: all 0.25s ease-out;
	-ms-transition: all 0.25s ease-out;
	-o-transition: all 0.25s ease-out;
	transition: all 0.25s ease-out;
}

.btn_base:hover {
	background: #003f96 !important
}

.btn_middle {
	position: relative;
	display: inline-block;
	padding: 0 15px;
	min-width: 180px;
	background: #2c3c57;
	color: #fff;
	font-size: 20px;
	line-height: 60px;
	text-align: center;
	vertical-align: middle;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-transition: all 0.25s ease-out;
	-moz-transition: all 0.25s ease-out;
	-ms-transition: all 0.25s ease-out;
	-o-transition: all 0.25s ease-out;
	transition: all 0.25s ease-out;
}

.btn_middle:hover {
	background: #003f96 !important
}

.btn_big {
	position: relative;
	display: inline-block;
	padding: 0 15px;
	width: 333px;
	background: #2c3c57;
	color: #fff;
	font-size: 23px;
	line-height: 80px;
	text-align: center;
	vertical-align: middle;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-transition: all 0.25s ease-out;
	-moz-transition: all 0.25s ease-out;
	-ms-transition: all 0.25s ease-out;
	-o-transition: all 0.25s ease-out;
	transition: all 0.25s ease-out;
	text-decoration: none;
}

.btn_big:hover {
	background: #003f96 !important
}

.btn_red {
	display: inline-block;
	position: relative;
	margin-top: 38px;
	padding: 0 32px;
	height: 60px;
	background: #d20c26;
	color: #fff;
	font-size: 18px;
	line-height: 60px;
	text-align: center
}

.btn_red.go span {
	display: inline-block;
	padding-right: 20px;
	background: url('/images/common/btn_find_arr.png') no-repeat right
		center;
	line-height: 60px .btn_big{
    position: relative;
	display: inline-block;
	padding: 0 15px;
	width: 333px;
	background: #2c3c57;
	color: #fff;
	font-size: 23px;
	line-height: 80px;
	text-align: center;
	vertical-align: middle;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-transition: all 0.25s ease-out;
	-moz-transition: all 0.25s ease-out;
	-ms-transition: all 0.25s ease-out;
	-o-transition: all 0.25s ease-out;
	transition: all 0.25s ease-out;
}
</style>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />

<style>
.ui-datepicker {
	display: none;
	background-color: #f2f2f2;
	border-radius: 5px;
	padding: 20px;
	width: 560px;    
}

#datepicker:focus>.ui-datepicker {
	display: block;
}

.ui-datepicker-prev, .ui-datepicker-next {
	cursor: pointer;
}

.ui-datepicker-next {
	float: right;
}

.ui-state-disabled {
	cursor: auto;
	color: hsla(0, 0%, 80%, 1);
}

.ui-datepicker-title {
	text-align: center;
	padding: 10px;
	font-weight: 100;
	font-size: 20px;
}

.ui-datepicker-calendar {
	width: 100%;
}

.ui-datepicker-calendar>tbody td.ui-datepicker-week-end:first-child a {
	color: red;
}

.ui-datepicker-calendar>tbody td.ui-datepicker-week-end:last-child a {
	color: blue;
}

/* day of week cell */
.ui-datepicker-calendar>thead>tr>th {
	padding: 5px;
	font-size: 20px;
	font-weight: 400;
}
/* day cell */
.ui-datepicker-calendar>tbody>tr>td {
	width: 44px;
	height: 44px;
	cursor: pointer;
	padding: 5px;
	font-weight: 100;
	text-align: center;
	border: 1px solid #d9d9d9;
}

.ui-datepicker-calendar>tbody>tr>td:hover {
	background-color: #2c3c57;
}

.ui-datepicker-calendar>tbody>tr>td .ui-state-active {
	color: white;
}

.ui-datepicker-calendar>tbody>tr>.ui-datepicker-current-day {
	background-color: #2c3c57;
}

.ui-datepicker-calendar>tbody>tr>.ui-datepicker-current-day {
	background-color: #2c3c57;
}

.ui-datepicker-calendar>tbody>tr>td:hover>.ui-state-default {
	color: white;
}

.ui-datepicker-calendar>tbody>tr>td>a {
	color: black;
	font-size: 18px;
	font-weight: 400;
	text-decoration: none;
}

/* past days */
.ui-datepicker-calendar>tbody>tr>.ui-state-disabled {
	color: #d9d9d9;
}

.ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover {
	cursor: auto;
	background-color: red;
	color: white;
}


/* 예약 안 */

#ground_rese{ 
	width: 1400px;
	margin: 0 auto;
	position: relative;
	overflow:hidden;
}

#ground_rese_content1{
	width: 600px;
	border: 1px solid #ccc;
	float: left;
	padding: 10px;
}

#ground_rese_content2{
	margin-left:50px;
	width: 600px;
	border: 1px solid #ccc;
	float: left;
	padding: 10px;
}

.content2_1{
	width:90%;
	margin: 0 auto;
	border-bottom: 1px solid #ccc;
}

.sel_span{
	width: 116px;
	margin: 20px 0;
	font-size: 20px;
	line-height: 64px;
}

#sel_date{
	margin-left: 15px;
	font-size: 18px;
	font-weight: bold;
}

.p_notice{
	color:red;
	margin-left: 50px;
	 
}


/* 시간선택 */
#time_wrap{
	width: 100%;
	overflow: hidden;
	margin-bottom: 15px;
	display: none;    
}

.time_wrap_item{
	float: left;
	width: 120px;
	height: 40px;
	border: 1px solid gray;
	margin-right: 5px;
	margin-bottom: 5px;
	padding: 2px; 
	background: red;
	color:white;
}
.time_wrap_item_ok{
	border: 1px solid gray;
	background: #989898;
}

.time_wrap_item p{
	text-align: center;
	
}




/* 예약정보 */

.content2_1  .tit	{padding-left:18px; background:#2c3c57; color:#fff; font-size:20px; line-height:70px;}
.content2_1  .table_wrap	{margin:0}
.content2_1  .table_wrap table	{border:1px solid #c4c4c4; border-top:0}
.content2_1  .table_wrap table tbody tr th	{ padding-top:20px; border:0; font-size:16px; text-align:left; vertical-align:top;  padding-left: 20px;}
.content2_1  .table_wrap table tbody tr td	{padding:3px 20px; border:0;  height:49px; font-size:18px; text-align:left;} 
.content2_1  .table_wrap table tbody tr td .price	{font-weight:700} 
.content2_1  .table_wrap table tbody tr td textarea	{width:100%; height:100px}
.content2_1  .table_wrap table tbody tr:first-child th	{padding-top:25px}
.content2_1  .table_wrap table tbody tr:first-child td	{padding-top:16px}
.content2_1  .table_wrap table tbody tr:last-child td	{padding-bottom:16px}


.content2_1  .table_wrap table tbody .phone	{font-size:0; line-height:0}
.content2_1  .table_wrap table tbody .phone input	{width:31.333333%}
.content2_1  .table_wrap table tbody .phone span	{display:inline-block; width:3%; font-size:11px; text-align:center; vertical-align:middle;}
.content2_1  .chk	{margin-top:22px}
.content2_1  .btn_wrap	{margin-top:33px}
.content2_1  .btn_wrap .btn_big	{width:100%}
.content2_1  .btn_wrap .btn_big span	{display:inline-block; padding-left:50px; background:url('/images/content/icon_btn_rese.png') no-repeat 0 center;}

#gg span{
	margin: 0;
	padding: 0;
}

#ttt{
	width: 100%;
	margin: 0;
	padding: 0;
}

#ttt tbody{
	width: 100%;
	margin: 0;
	padding: 0;
}


.time_wrap_item_check{
	background-color: blue;
}

/* 지점유의사항 */

.tit_2{
    background: #2c3c57;
    color: #fff;
    font-size: 20px;
    line-height: 70px;
    text-align: center;
}

#img_wrap img{
	width: 100%;
}

.red_color{
	color:red;
}

.green_color{
	color:green;
}

#notice_wrap{
	margin-bottom: 15px;
	margin-top: 15px;
}

</style>
<script
	src="${pageContext.request.contextPath}/resources/js/popupWindow.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/popupWindow.css" />
<script>

	//오늘 날짜 구하는 함수 (00년00월00일)
	function getTodayDate() {
		var date = new Date();
	    var year = date.getFullYear();
	    var month = date.getMonth()+1
	    var day = date.getDate();
	    if(month < 10){
	        month = "0"+month;
	    }
	    if(day < 10){
	        day = "0"+day;
	    }
	 
	    var today = year+"-"+month+"-"+day;
	    return today;
	}


	$(function() {
		
		
		
		
		var sNo = ${sNo};
		
		$(".tab_wrap li").click(function() {
			$(".on").removeClass("on");
			$(this).addClass("on");
		})

		$.datepicker.setDefaults({
			closeText : "닫기",
			prevText : "이전달",
			nextText : "다음달",
			currentText : "오늘",
			monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
					"9월", "10월", "11월", "12월" ],
			monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
					"9월", "10월", "11월", "12월" ],
			dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
			dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
			dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
			weekHeader : "주",
			dateFormat : "yy-mm-dd",
			firstDay : 0,
			isRTL : false,
			showMonthAfterYear : true,
			yearSuffix : "년"
		})
		$("#datepicker").datepicker(
				{
					minDate : 0,

					/* to use in wix */
					onSelect : function(selected, event) {
						console.log(selected);
						$(".ui-datepicker-current-day").css("background-color",
								"green");
						$(".ui-state-active").css("color", "white");
						$("#sel_date").text(selected); 
						$("#select02 option").eq(0).prop("selected", true);
						$("#time_wrap").hide();	
						$(".time_wrap_item_ok").removeClass("time_wrap_item_check");
						

						
					}
				})
				
				var date= getTodayDate()
				$("#sel_date").text(date); 
				
		
		
		//구장선택박스 체인지 이벤트
		
		$("#select02").on("change", function() {
			var gNo = $("#select02 :selected").val(); //선택된값 가져오기
			var sDate = $("#sel_date").text();
			
			if(gNo!=0){
				$("#time_wrap").slideDown(500); 
				$(".time_wrap_item").removeClass('reserved_time ');
				$(".time_wrap_item").addClass('time_wrap_item_ok');
				$(".time_wrap_item_ok").removeClass("time_wrap_item_check");
			
				$.ajax({
					url:"form2/"+sNo+"/"+sDate+"/"+gNo,
					type:"get",
					dataType:"json",
					success:function(res){
						console.log(res); 
						console.log(res[0].rTime); 
						for (var i = 0; i < res.length; i++) {
							var text = res[i].rTime;
							var subText = text.substr(11, 13);
							for (var j = 0; j < $(".ptime").length; j++) {
								var $a = $(".ptime:contains("+subText+")").eq(j);
								
								if ( $a.text() != '' ) {
									$a.parent().removeClass('time_wrap_item_ok');
									$a.parent().addClass('reserved_time');
								}
							}
							/*  */
						}
					}
				})
			}else{
				$("#time_wrap").slideUp(500);					
			}
			
			
		})
		
		
		/* 시간 클릭시 */
		$(".time_wrap_item_ok").click(function() {
			if(  $(this).hasClass('reserved_time')==false  ){
				$(".time_wrap_item_ok").removeClass("time_wrap_item_check");
				$(this).addClass("time_wrap_item_check");
				$("#tdDate").text($("#sel_date").text());
				$("#tdGround").text($("#select02 :selected").attr("data-a"));
				$("#tdTime").text($(this).find(".ptime").text());
				
				var pPrice = $(this).find(".pPrice").text();
				$("#tdPrice").text(pPrice.substring(0, pPrice.length-1));	
			}else{
				//alert("이미 예약된 시간입니다. 다른 시간을 선택해주세요");
				
				$.popupWindow({
					  type:'alert',
					  title:'알림',
					  content:'이미 예약된 시간입니다. 다른 시간을 선택해주세요',
					  onClosed:function(arg){
					  }
					});

				
			}
		})
		
		//예약하기 버튼 클릭시
		$("#gg").click(function() {
			 var subDate = $("#tdDate").text()+" "+	$("#tdTime").text();
			 var gNo = $("#select02 :selected").val(); //선택된값 가져오기
			 
			 $("input[name='rTime']").val(subDate);
			 $("input[name='rGno.gNo']").val(gNo);
			 
			 if( $("#select02 :selected").val()==0 ||  $("#tdDate").text()=="" || 	$("#tdTime").text()==""){ 
				// alert("구장 예약자 정보를 확인해주세요.");
				 $.popupWindow({
					  type:'alert',
					  title:'알림',
					  content:'구장 예약자 정보를 확인해주세요.',
					  onClosed:function(arg){
					  }
					});
			 }else {
				 $.popupWindow({
					   type:'confirm',
					   title:'예약',
					   content:'정말 예약하시겠습니까?',
					   cancelText:'취소',
					   confirmText:'확인',
					   onClosed:function(arg){
													   
					   }
					 });
				 $(".popConfirm").click(function() {
					 $("#f1").submit();
				 })
			}
			 
		})

	})
</script>
<div id="video_wrap">
	<video id="v"
		src="${pageContext.request.contextPath}/resources/media/video element.mp4"
		muted autoplay loop="loop">
	</video>
	<h2 id="main_title">구장</h2>
</div>

<div class="list_wrap">
	<div class="tab_wrap">
		<ul>

			<li class="on"><a
				href="http://localhost:8080/football/reservation">대관예약</a></li>

			<li><a href="http://localhost:8080/football/reservation/check">예약확인</a></li>

		</ul>
	</div>
	<div class="rese_wrap">
		<h3 class="h_tit">구장예약</h3>
		<div id="ground_rese">
			<div id="ground_rese_content1">
				<div id="img_wrap">
					<img
						src="${pageContext.request.contextPath }/resources/images/spot/${s.sImg}" alt="">			
				</div>
				<div>
					<p class="tit_2">${s.sName }</p>
				</div>
				<div id="notice_wrap">
					<h3>유의사항</h3>
					<br>
					<p>
						<span class="red_color">1. 주의사항</span><br>
							<span class="red_color">* 예약후 진행이 어려울실경우 사이트에서 꼭 취소 해주셔야 합니다.</span><br>
							* 예약자와 입금자 이름이 다를 경우 반드시 전화주세요.<br>
							<span class="red_color">* 우천시에는  풋살화는 대여 하지 않습니다.</span><br>
							<span class="green_color">* 예약 시 이름과 전화번호 정확하게 기입 부탁드립니다.[연락처가 정확하지않을 경우(연락이안될시) 대관이 취소됩니다]</span><br>
							3. 행사 목적 대관 신청 시 담당자와 사전 문의 바랍니다.<br>
							4. 전 구역 금연지역입니다.<br>
							(흡연은 지정된 장소를 이용해 주세요, (경기장내 흡연 적발 시 대관 취소 및 환불 불가)<br>
							<span class="red_color">5. 화장실은 매장 2층에 위치해 있습니다.(노상방뇨 적발시 대관 취소 및 환불 불가) 전구역CCTV작동중입니다.</span><br>
							6. 경기장 내 음료 및 음식물 반입 금지 (경기장 밖에서 드세요)<br>
							7. 주차는 경기장 앞 7층 주차장을 이용하시기 바랍니다.<br>
							8. 현장 카드결재 가능합니다. 현금영수증 발행은 현장 결제 시 가능합니다.<br>
							9. 본 풋살파크는 CCTV 촬영되고 있습니다.<br>
							10.분실물에 대한 책임은 본인에게 있습니다.<br>
							11. 개인장비는 직접 지참하시기 바랍니다.(풋살화 등....) 조끼,공은 험멜 매장사무실로 오시면 빌려드립니다.<br>
							12. 풋살화 이외 축구화 는 착용불가합니다. (잔디보호) 풋살화는 험멜 매장사무실로 오시면 대여해 드립니다. (비용발생)<br>
							13. 야간 대관 이용 시 소음 관련 민원이 발생 할 수 있으니 고성, 욕설 등은 삼가해 주시기 바랍니다.<br>
					</p>
				</div>
			</div>
			
			<div id="ground_rese_content2">
				<div id="datepicker"></div>
				<div class="content2_1">
					<span class="sel_span">날짜 선택</span> <span id="sel_date"></span>  
				</div>
				<div class="content2_1">
					<span class="sel_span">구장 선택</span><span class="p_notice">*구장을 선택해야 시간이 표출됩니다.</span> <bR>
					
					<select id="select02" name="branch_code">
							 <option value="0">구장을 선택해주세요</option> 
							 <c:forEach var="gr" items="${gList }">
							 	<option data-a="${gr.gName }" value="${gr.gNo }">${gr.gName }</option>
							 </c:forEach>
								

						</select> 
				</div>
				<div class="content2_1">
					<span class="sel_span">시간 선택</span>
					<div id="time_wrap">
						<div class="time_wrap_item time_wrap_item_ok"  style="cursor: pointer">
							<p class="ptime">08:00 ~ 10:00</p>
							<p class="pPrice">80000원</p>
						</div>
						<div class="time_wrap_item time_wrap_item_ok"  style="cursor: pointer">
							<p class="ptime">10:00 ~ 12:00</p>
							<p class="pPrice">80000원</p>
						</div>
						<div class="time_wrap_item time_wrap_item_ok"  style="cursor: pointer">
							<p class="ptime">12:00 ~ 14:00</p>
							<p class="pPrice">80000원</p>
						</div>
						<div class="time_wrap_item time_wrap_item_ok" style="cursor: pointer">
							<p class="ptime">14:00 ~ 16:00</p>
							<p class="pPrice">80000원</p>
						</div>
						<div class="time_wrap_item time_wrap_item_ok" style="cursor: pointer" >
							<p class="ptime">16:00 ~ 18:00</p>
							<p class="pPrice">80000원</p>
						</div>
						<div class="time_wrap_item time_wrap_item_ok" style="cursor: pointer">
							<p class="ptime">18:00 ~ 20:00</p>
							<p class="pPrice">80000원</p>
						</div>
						<div class="time_wrap_item time_wrap_item_ok" style="cursor: pointer">
							<p class="ptime">20:00 ~ 22:00</p>
							<p class="pPrice">80000원</p>
						</div>
						<div class="time_wrap_item time_wrap_item_ok" style="cursor: pointer">
							<p class="ptime">22:00 ~ 24:00</p>
							<p class="pPrice">80000원</p>
						</div>
					</div>
				</div>
				<div class="content2_1">
					<span class="sel_span">예약 정보</span> <span id="sel_date"></span>
					<br>
					
					<div class="table_wrap">
					<p class="tit">구장 예약자 정보 입력</p>
								<table id="ttt">
								<colgroup>
									<col style="width:25%">
									<col style="">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">신청자</th>
										<td><span id="tdMember">${login.mName }</span></td>
									</tr>
									<tr>
										<th scope="row">연락처</th>
										<td>
											<span id="tdTel">${login.mTel}</span>
										</td>
									</tr>
								  
								
									<tr>
										<th scope="row">예약일자</th>
										<td id="dateBottom" ><span id="tdDate"></span></td>
									</tr>
									<tr>
										<th scope="row">선택구장</th>
										<td id="stadiumBottom" ><span id="tdGround"></span></td>
									</tr>
									<tr>
										<th scope="row">예약시간</th>
										<td id="timeBottom" ><span id="tdTime"></span></td>
									</tr>
									
									<tr>
										<th scope="row">총 결제금액</th>
										<td><span id="tdPrice"></span>원</td>
									</tr>
								
								</tbody>
								</table>
							</div>

							  

							<div class="btn_wrap">
							<form action="${pageContext.request.contextPath}/reservation/ok" id="f1" method="POST" enctype="multipart/form-data">
								 <input type="hidden" name="rMember.mId" value="${login.mId} "> 
								<input type="hidden" name="rTime">
								 <input type="hidden" name="rGno.gNo">  
							</form>
								<button type="button" class="btn_big gray" id="gg"><span>구장예약하기</span></button>
							</div>
				</div>
				
				
				
			</div>
			
		</div>
	</div>



</div>
<%@ include file="../../views/include/footer.jsp"%>