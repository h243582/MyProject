<!DOCTYPE html>
<%@page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="Model.BasicInfo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="ch">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/addInformation/addInformation.css">
</head>
<body>
<form action="AddInformationServlet?method=Compile" method="post">
    <img src="image/information/bacg.jpg" alt="" width="100%" class="backImg">

    <div class="mainBack">
        <div class="resume_left">
        <div class="all_resume">
            <div class="table_style" style="width: 80%; background-color: rgb(238, 238, 238)">
                <div class="star">
                    <img src="image/information/star.png" alt="" class="" width="100px" height="100px">
                    在线问卷调查<br>系统
                </div>
                <div class="resume_title">
                    <div>我的个人信息</div>
                </div>
                <table cellspacing="10" bgcolor="#EEEEEE">
                    <tr>
                        <th width="90px" align="right" bgcolor="#F8F8F8">姓名：</th>
                        <td border ="0"><input type="text" name="realName" value="${BasicInfo.basicInfoName}"></td>
                    </tr>
                    <tr class="gender">
                        <th  >性别：</th>
                        <td width="90px">
                        <c:if test="${BasicInfo.basicInfoGender == '男'}">
                            <input type="radio" name="gender" value="男" checked>&nbsp;男&nbsp;&nbsp;
                            <input type="radio" name="gender" value="女">&nbsp;女
                        </c:if>
                        <c:if test="${BasicInfo.basicInfoGender == '女'}">
                            <input type="radio" name="gender" value="男">&nbsp;男&nbsp;&nbsp;
                            <input type="radio" name="gender" value="女" checked>&nbsp;女
                        </c:if>
                        </td>
                    </tr>
                    <tr>
                        <th width="90px" align="right">年龄：</th>
                        <td><input type="text" name="birthday" value="${BasicInfo.basicInfoAge}"></td>
                    </tr>
                    <tr>
                        <th width="90px" align="right">手机号：</th>
                        <td><input type="text" name="telephone" value="${BasicInfo.basicInfoTelephone}"></td>
                    </tr>
                    <tr>
                        <th width="90px" align="right">QQ：</th>
                        <td><input type="text" name="qq" value="${BasicInfo.basicInfoQQ}"></td>
                    </tr>
                </table>
                <div style="margin-left:100px;">
                    <input name="" type="submit" class="save" value="保存">
                    <input name="" type="button" class="cancel" value="取消" onclick="window.location.href='information.jsp'">
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    </div>

</form>
</body>
</html>