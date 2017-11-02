<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
div#content {
   margin: 0 auto;
   height: 650px;
   width: 1200px;
}

div.d_title {
   padding-bottom: 30px;
}

div.SignUp {
   margin: 0 auto;
   width: 520px;
   height: 730px;
}

div#d_id_pw {
   border: 1px solid #dadada;
   margin: 20px;
   margin-left: 0px;
   margin-right: 0px;
   margin-top: 0px;
}

#d_id_pw .d_pw1 {
   border-bottom: 1px solid #f0f0f0;
}

#d_profile .d_name {
   border-bottom: 1px solid #f0f0f0;
}

#d_profile .d_phone {
   border-bottom: 1px solid #f0f0f0;
}

#d_profile .d_email {
   border-bottom: 1px solid #f0f0f0;
}

#d_profile .d_blof {
   border-bottom: 1px solid #f0f0f0;
}

div#d_profile {
   border: 1px solid #dadada;
}

.in {
   box-sizing: border-box;
   padding: 15px;
   height: 50px;
   width: 100%;
   border-width: 0px;
}

#d_btn {
   box-sizing: border-box;
   margin-top: 20px;
   height: 60px;
   width: 100%;
   border-width: 0px;
   background-color: #b22222;
   color: #fafafa;
   font-size: 20px;
}

.d_id {
   box-sizing: border-box;
   padding: 15px;
   height: 50px;
   width: 430px;
   border-width: 0px;
   float: left;
}

#double_ch {
   height: 50px;
   border-bottom: 1px solid #f0f0f0;
   bor
}

.double_check {
   float: right;
   margin-right: 15px;
   margin-top: 10px;
   color: #fafafa;
   background-color: #b22222;
   padding: 5px;
   border: 0px;
}
</style>
</head>
<script type="text/javascript">
   function checkForm(myPwd) {
      uPhone = myPwd.value;
      if (document.myform.d_id.value == "") {
         alert("���̵� �Է����ּ���.");
         myform.d_id.focus();
      } else if (document.myform.d_pw1.value == " ") {
         alert("��й�ȣ�� �Է����ּ���.");
         myform.d_pw1.focus();
      } else if (document.myform.d_pw2.value == "") {
         alert("Ȯ���� ���� ��й�ȣ�� �ѹ��� �Է����ּ���.");
         myform.d_pw2.focus();
      } else if (document.myform.d_pw1.value != document.myform.d_pw2.value) {
         document.myform.d_pw2.value = "";
         alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
         myform.d_pw2.focus();
      } else if (document.myform.d_name.value == "") {
         alert("�̸��� �Է����ּ���.");
         myform.d_name.focus();
      } else if (document.myform.d_phone.value == "") {
         alert("�ڵ��� ��ȣ�� �Է����ּ���");
         myform.d_phone.focus();
      } else if (document.myform.d_email.value == "") {
         alert("�̸����� �Է����ּ���.");
         myform.d_email.focus();
      } else if (document.myform.d_blog.value == "") {
         alert("��α� �ּҸ� �Է����ּ���.");
         myform.d_blog.focus();
      } else {
         len = myPwd.value.length;
         if (len <= 8 || len >= 13) {
            alert("��й�ȣ�� 8�� �̻� 12�� ���Ϸ� �Է��ϼ���.");
            document.myform.pw1.value = "";
            document.myform.pw2.value = "";
            myform.pw1.focus();
            return false;
         } else {
            document.myform.submit();
            alert("�����ϼ̽��ϴ�!");
            return true;
         }
         
      }
   }
</script>
<body onload="myform.d_id.focus()">
   <div id="wrap">
      <%@ include file="admin_header.jsp"%>
      <!-- ����Ʈ �κ� -->
      <div id="content">
         <!-- ȸ������ �Է� �κ� -->
         <div class="SignUp" align="center">
            <div class="d_title">
               <h2>�Ϲ� ȸ������</h2>
            </div>

            <!-- ���̵�, ��й�ȣ �Է� �κ� -->
            <!-- �ؽ�Ʈ ũ�� -->
            <form action="designer" id="myform" name="myform" method="post" >
               <div id="d_id_pw">

                  <input type="text" name="d_id" placeholder="���̵�" class="d_id">
                  <div id="double_ch">
                     <input type="button" value="�ߺ�Ȯ��" class="double_check">
                  </div>

                  <input type="text" name="d_pw1" placeholder="��й�ȣ"
                     class="d_pw1 in"> <input type="text" name="d_pw2"
                     placeholder="��й�ȣ Ȯ��" class="d_pw2 in">

               </div>

               <!-- ���ۻ� �� ���� �κ� -->
               <div id="d_profile">

                  <input type="text" name="d_name" placeholder="�̸�"
                     class="d_name in"> <input type="text" name="d_phone"
                     placeholder="�ڵ��� ��ȣ" class="d_phone in"> <input
                     type="text" name="d_email" placeholder="�̸��� �ּ�" class="d_email in">

                  <input type="text" name="d_blog" placeholder="��α� �ּ�"
                     class="d_blog in">


               </div>
               <div id="botton">
                  <input type="submit" value="ȸ������" id="d_btn" onclick="checkForm(myform.d_phone)">
               </div>
            </form>
         </div>
      </div>

      <%@ include file="../footer.jsp"%>

   </div>
</body>
</html>