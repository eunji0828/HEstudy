<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>HE_site Main</title>
    <link rel="stylesheet" href="resources/static/css/main/signUp.css"> 
</head>

<body>
    <container>
        <lable for="member_id">
            <p>ID</p>
            <input id="member_id" type="text" name="member_id">
        </lable>
        <lable for="member_pw">
            <p>PW</p>
            <input type="text" name="member_pw" id="member_pw">
        </lable>
        <lable for="member_name">
            <p>NAME</p>
            <input type="text" name="member_name" id="member_id">
        </lable>
        <lable for="member_email">
            <p>E-mail</p>
            <input type="email" name="member_email" id="member_eamil">
        </lable>
        <lable for="member_phone">
            <p>Phone</p>
            <input type="number" name="member_phone" id="member_phone">
        </lable>
        <lable for="member_birth">
            <p>Birth</p>
            <input type="date" name="member_birth" id="member_birth">
        </lable>
        <lable for="member_gender">
        <p>Gender</p>
            <input tpye="radio" name="member_gender" value="남자" id="member_gender">
            <input type="radio" name="member_gender" value="여자" id="member_gender">
        </lable>
            <p>Address</p>
    </container>
</body>

<script type="text/script" src="js/main/main.js"></script>
<script>

</script>

</html>