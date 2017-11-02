<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
   div#wrapper{
      margin: 0 auto;
      width: 1200px;
   }
   div#menu_line{
      width: 100%;
      height: 70px;
      background-color: #333333;
      color: #ffffff;
      padding: 25px 0px 25px 100px;
      box-sizing: border-box;
   }
   div#container{
      width: 100%;
      height: auto;   
   }
   div#container > table{
      margin: 0 auto;
      width: 1000px;
   }
   div#container > #c_post_top{
      height: 55px;
      border-top: 3px solid #333333;
      border-bottom: 1px solid #333333;   
   }
   div#container > .c_line{
      height: 50px;
      border-bottom: 1px solid #333333;
   }
   div#container > #c_post_bottom{
      height: 380px;
      border-bottom: 3px solid #333333;
      margin-bottom: 50px;
   }
   div#container > #c_post_re{
      height: 300px;
      border-top: 3px solid #333333;
      border-bottom: 3px solid #333333;
   }
   .p_text{
      text-align: center;
      width: 130px;
   }
   #p_name{
      width: 260px;
      height: 30px;
      margin: 10px 20px;
   }
   #p_date{
      width: 260px;
      height: 30px;
      margin: 10px 20px;
   }
   #p_title{
      width: 600px;
      height: 30px;
      margin: 10px 20px;
   }
   #p_content{
      margin: 10px 20px;
   }
   
   #p_list{
      float: right;
      padding: 18px 15px 0 0;
   }
   #p_list > a{
      text-decoration: none;
      color: #000000;
   }
   #p_re{
      width: 600px;
      height: 280px;
      margin: 10px 20px;
      line-height: 280px;
   }
   div.c_btn{
      width: 100px;
      height: 50px;
      background-color: #333333;
      border-radius: 10px;
      line-height: 50px;
      margin-bottom: 100px;
      margin-left: 450px;
   }
</style>
</head>
<body>
   <%@ include file="admin_header.jsp" %>
   <div id="wrapper">
      <div id="menu_line">
         <span>Home > Q & A</span>
      </div>
      <div id="container">
         <table>
            <tr>
               <td style="height: 70px;"></td>
            </tr>
            <tr>
               <td style="height: 70px; text-align: center;"><h1>Q & A</h1></td>
            </tr>
            <tr>
               <td style="height: 50px;"></td>
            </tr>
         </table>
         <table id="c_post_top">
            <tr>
               <td class="p_text"><span>NAME</span></td>
               <td>
                  <span id="p_name">김소진</span>
               </td>
               <td class="p_text"><span>DATE</span></td>
               <td>
                  <span id="p_date">2017/07/09</span>
               </td>
            </tr>
         </table>
         <table class="c_line">
            <tr>
               <td class="p_text"><span>TITLE</span></td>
               <td colspan="3">
                  <p id="p_title">디자인 초안은 어떻게 채택되는 건가요?</p>
               </td>
            </tr>
         </table>
         <table id="c_post_bottom">
            <tr>
               <td class="p_text"><span>CONTENT</span></td>
               <td colspan="3">
                  <p id="p_content">
                     디자인 초안이 어떻게 채택되는지 <br><br>
                     대량생산과 소량생산이 어떻게 되는지<br><br>
                     궁금합니다!  
                  </p>
               </td>
            </tr>
         </table>
         <table id="c_post_re">
            <tr>
               <td class="p_text">
                  <img src="img/arrow.png" alt="화살표" >
                  <span>RE : </span></td>
               <td colspan="3">
                  <p id="p_re">답변드립니다!</p>
               </td>
            </tr>
         </table>
         <table style="text-align: center;">
            <tr>
               <td style="height: 40px;" id="p_list">
                  <a href="QA_main.jsp"><span>목록보기</span></a>
               </td>
            </tr>
            <tr>
               <td>
                  <a href="QA_main.jsp"  style="text-decoration: none; color: #ffffff;">
                     <div class="c_btn">
                        <span>확인</span>
                     </div>
                  </a>
               </td>
            </tr>
         </table>
   </div>
   <%@ include file="../footer.jsp" %>
</body>
</html>