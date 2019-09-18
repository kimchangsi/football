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
	/* background: url('/images/content/bg_tab_arr.png') no-repeat 0 0 */
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
	background: #2c3c57 url('../resources/images/ground/bg_rese_start.png') no-repeat 0 0; 
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

input[type='text'], input[type='password'] {
	height: 45px;
	margin: 0;
	padding: 3px 9px 3px 9px;
	border: 1px solid #ddd;
	background: #fff;
	color: #383838;
	font-size: 16px;
	line-height: 43px;
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
	width: 390px;
	height: 45px;
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
<script>
	$(function() {

		$(".tab_wrap li").click(function() {
			$(".on").removeClass("on");
			$(this).addClass("on");
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

			<li><a href="${pageContext.request.contextPath}/reservation">대관예약</a></li>

			<li class="on"><a href="${pageContext.request.contextPath}/reservaiton/check">예약확인</a></li>

		</ul>
	</div>
	<div class="rese_wrap">
		<h3 class="h_tit">예약확인</h3>

		<div class="rese_start">
			<p class="tit">예약 시 입력하신 정보를 입력해주십시오.</p>
			<div class="start_wrap">
				<div class="cont">
					<form name="form" method="post" action="rese_content.asp">
						<span class="text"> <input type="text" class="input1"
							name="cm_name" placeholder="아이디"> <input type="password"
							class="input1" name="cm_pwd" placeholder="비밀번호">
						</span>
					</form>

					<div class="btn_wrap">
						<a href="#" class="btn_big">확인</a>
					</div>
				</div>
			</div>
		</div>

	</div>



</div>



<%@ include file="../../views/include/footer.jsp"%>