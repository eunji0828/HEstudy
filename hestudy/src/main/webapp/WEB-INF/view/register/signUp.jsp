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
    <link rel="stylesheet" href="resources/static/css/register/signUp.css"> 
</head>

<body>
    <form action="signUp" method="post">
        <container>
            <div class="singUp_box">
                
                <div class="box_margin">
                    <lable for="member_id">
                        <p>ID</p>
                    </lable>
                        <input type="text" id="member_id"  name="member_id" class="box side_button"><button id="button_margin">ID 중복확인</button>           
                        <p class="test_color"></p>
                </div>

                <div class="box_margin">
                    <lable for="member_pw">
                        <p>PW</p>
                    </lable>
                        <input type="password" name="member_pw" id="member_pw" class="box">
                        <p class="test_color"></p>
                </div>

                <div class="box_margin">
                    <lable for="member_name">
                        <p>NAME</p>
                    </lable>
                        <input type="text" name="member_name" id="member_name" class="box">
                        <p class="test_color"></p>
                </div>

                <div class="box_margin">
                    <lable for="member_nickName">
                        <p>Nick Name</p>
                    </lable>
                        <input type="text" name="member_nickName" id="member_nickName" class="box side_button"><button id="button_margin2">닉네임 중복확인</button>
                        <p class="test_color"></p>
                </div>   

                <div class="box_margin">
                    <lable for="member_email">
                        <p>E-mail</p>
                    </lable>
                        <input type="email" name="member_email" id="member_email" class="box">
                        <p class="test_color"></p>
                </div>

                <div class="box_margin">
                    <lable for="member_phone">
                        <p>Phone</p>
                    </lable>
                        <input type="text" name="member_phone" id="member_phone" class="box">
                        <p class="test_color"></p>
                </div>

                <div class="box_margin">
                    <lable for="member_birth">
                        <p>Birth</p>
                    </lable>
                        <input type="date" name="member_birth" id="member_birth">
                </div>

                <div class="box_margin" id="gender_box">
                    <p>Gender</p>
                        <input type="radio" id="member_gender1" name="member_gender" ><lable for="member_gender1">여자</lable>
                        <input type="radio" id="member_gender2" name="member_gender"><lable for="member_gender2">남자</lable>
                </div>

                <!-- 카카오 주소 api 사용 -->
                <div class="box_margin">
                    <p>Address</p>
                    <input type="text" onclick="sample6_execDaumPostcode()" id="sample6_postcode" placeholder="우편번호" class="box side_button">
                    <br>
                    <input type="text" id="sample6_address" placeholder="주소" class="box"><br>
                    <input type="text" id="sample6_extraAddress" placeholder="참고항목" class="box">
                    <input type="text" id="sample6_detailAddress" placeholder="상세주소" class="box">
                </div>

                <div class="button_box">
                    <button type="submit" id="signUp_button">회원가입</button>
                    <button id="signUp_cancel">취소</button>
                </div>
            </div>
        </container>
    </form>
</body>

<!-- 카카오 주소 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

let id = document.querySelector('#member_id');                  // 아이디
let password = document.querySelector('#member_pw');            // 비밀번호
let name = document.querySelector('#member_name');              // 이름
let nickName = document.querySelector('#member_nickName');      // 닉네임
let gender = document.querySelector('#gender_box');             // 성별
let email = document.querySelector('#member_email');            // 이메일
let phone = document.querySelector('#member_phone');            // 핸드폰번호
let birth = document.querySelector('#member_birth');            // 생일
let address = document.querySelector('#sample6_postcode');      // 주소
let signUp = document.querySelector('#signUp_button');          // 회원가입 버튼
let sign_cancel = document.querySelector('#signUp_cancel');     // 취소 버튼

// 정규표현식
const idInput = /^[a-zA-Z0-9]*$/;
// 아이디 - 영문(대,소문자상관없이) 숫자 작성해야함
const pwInput = /(?=.*\d)+(?=.*[~`!@#$%\^&*()-+=])+(?=.*[a-z])+.{1,}$/;
// 비밀번호 - 영문(소문자), 특수문자, 숫자 1개 이상 작성해야함
const nameInput = /^[a-zA-Z가-힣]*.{3,}$/;
// 이름 - 영어(대, 소문자 상관없이), 한글만 3글자 이상 작성해야함
const birthDay = /^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$/;
// 생일 생년월일 앞자리 1-2 확인, 년도 3자리 작성, [0-1]{1}[0-9]{1} 01,12 같이 '월' 확인 [0-3]{1}[0-9]{1} '일' 확인
const emailInput =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
// 이메일 - 주소 영문(대,소문자 상관없이)과 숫자 작성 
// @ 도메인주소 작성 시 .이 하나 이상 들어가야 하고 맨 뒤(com/net) 이기 때문에 2~3글자 작성해야함
const phoneInput = /^01([0|1|6|7|8]?)-([0-9]{4})-([0-9]{4})$/;
// 핸드폰 - 번호 010,011,016,017,018 중에 작성, 중간번호(4자리), 끝 번호(4자리) 작성해야함

const passCheck = /(pass){9,9}/;
// 가입하기 버튼 눌렀을 시 pass가 9개 들어있는지 확인

let flag = ['fail', 'fail', 'fail', 'fail', 'fail', 'fail', 'fail', 'fail', 'fail']
// 각 양식에 flag를 줘서 모두 pass가 될 경우 회원 가입 가능

// nextElementSibling 다음 형제 요소 노드를 사용할 수 있도록 해주는 속성
// test() 메소드는 정규식과 특정 문자열 사이의 일치에 대한 검색을 수행 true 또는 false 반환

// 아이디 확인
id.addEventListener("keyup", function(){

    if(id.value.length == 1){  
        id.nextElementSibling.nextElementSibling.innerHTML = '아이디를 입력하세요';
        id.nextElementSibling.nextElementSibling.style.color = 'red';
        flag[0] = 'fail';
    } else if(idInput.test(id.value) != true){
        id.nextElementSibling.nextElementSibling.innerHTML = '아이디는 영문과 숫자를 사용해주세요';
        id.nextElementSibling.nextElementSibling.style.color = 'red';
        flag[0] = 'fail';
    } else if(id.value > 15 || id.value.length < 5){
        id.nextElementSibling.nextElementSibling.innerHTML = '아이디는 5~15자로 작성해주세요';
        id.nextElementSibling.nextElementSibling.style.color = 'red';
        flag[0] = 'fail';
    } else if(idInput.test(id.value) == true){
        id.nextElementSibling.nextElementSibling.innerHTML = 'ID 중복 확인 버튼을 눌러주세요';
        id.nextElementSibling.nextElementSibling.style.color = 'blue';
        flag[0] = 'pass';
    }

});

// 비밀번호 확인
password.addEventListener("keyup", function(){

    if(password.value.length == 1){
        password.nextElementSibling.innerHTML = '비밀번호를 입력하세요';
        password.nextElementSibling.style.color = 'red';
        flag[1] = 'fail';
    } else if(pwInput.test(password.value) != true){
        password.nextElementSibling.innerHTML = '비밀번호는 영문(소문자), 특수문자, 숫자를 사용해주세요';
        password.nextElementSibling.style.color = 'red';
        flag[1] = 'fail';
    } else if(pwInput.test(password.value) == true){
        password.nextElementSibling.innerHTML = '사용 가능합니다';
        password.nextElementSibling.style.color = 'blue';
        flag[1] = 'pass';
    }

});

// 이름 확인
name.addEventListener("keyup", function(){

    if(name.value.length == 1){
        name.nextElementSibling.innerHTML = '이름을 입력하세요';
        name.nextElementSibling.style.color = 'red';
        flag[2] = 'fail';
    } else if(nameInput.test(name.value) != true) {
        name.nextElementSibling.innerHTML = '영문 또는 한글을 이용해 이름을 입력해주세요';
        name.nextElementSibling.style.color = 'red';
        flag[2] = 'fail';
    } else if(nameInput.test(name.value) == true){
        name.nextElementSibling.innerHTML = '사용 가능합니다';
        name.nextElementSibling.style.color = 'blue';
        flag[2] = 'pass';
    }

});

// 닉네임 확인
nickName.addEventListener("keyup", function(){

    if(nickName.value.length == 1){
        nickName.nextElementSibling.nextElementSibling.innerHTML = '별명을 입력하세요';
        nickName.nextElementSibling.nextElementSibling.style.color = 'red';
        flag[3] = 'fail';
    } else if(nameInput.test(nickName.value) != true){
        nickName.nextElementSibling.nextElementSibling.innerHTML = '영문 또는 한글로 닉네임을 작성해주세요';
        nickName.nextElementSibling.nextElementSibling.style.color = 'red';
        flag[3] = 'fail';
    } else if(nameInput.test(nickName.value) == true){
        nickName.nextElementSibling.nextElementSibling.innerHTML = '닉네임 중복 확인 버튼을 눌러주세요';
        nickName.nextElementSibling.nextElementSibling.style.color = 'blue';
        flag[3] = 'pass';
    }

});

// 성별 체크
var radios = document.querySelectorAll('input[name="member_gender"]');   // 라디오버튼 배열로 가져옴..

for(let i = 0; i < radios.length; i++){

    radios[i].addEventListener("change", function(){
        let val = this.value;       // 체크된 라디오 값이 val에 대입
        console.log(val);           // 콘솔창 확인
        flag[4] = 'pass';
    });

}

// 이메일 확인
email.addEventListener("keyup", function(){

    if(email.value.length == 1){
        email.nextElementSibling.innerHTML = '이메일을 입력하세요';
        email.nextElementSibling.style.color = 'red';
        flag[5] = 'fail';
    } else if(emailInput.test(email.value) != true){
        email.nextElementSibling.innerHTML = '사용할 수 있는 이메일을 입력해주세요';
        email.nextElementSibling.style.color = 'red';
        flag[5] = 'fail';
    } else if(emailInput.test(email.value) == true){
        email.nextElementSibling.innerHTML = '사용 가능합니다';
        email.nextElementSibling.style.color = 'blue';
        flag[5] = 'pass';
    }

});

// 핸드폰 번호 확인
phone.addEventListener("keyup", function(){

    if(phone.value.length == 1){
        phone.nextElementSibling.innerHTML = '휴대전화(-포함)를 입력하세요';
        phone.nextElementSibling.style.color = 'red';
        flag[6] = 'fail';
    } else if(phoneInput.test(phone.value) != true){
        phone.nextElementSibling.innerHTML = '사용할 수 있는 번호를 입력해주세요';
        phone.nextElementSibling.style.color = 'red';
        flag[6] = 'fail';
    } else if(phoneInput.test(phone.value) == true){
        phone.nextElementSibling.innerHTML = '사용 가능합니다';
        phone.nextElementSibling.style.color = 'blue'
        flag[6] = 'pass';
    }

});

// 생일 확인
birth.addEventListener("click", function(){

        let val = this.vlaue;
        console.log(val);
        flag[7] = 'pass';

});

// address
function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }

// 주소 확인
if(address.value.length <= 1){
    flag[8] = 'pass';
}

// 회원가입 버튼 클릭 시 
signUp.addEventListener("click", function(){

    let check = '';
    for(let i = 0; i < flag.length; i++){

        check += flag[i];

    }

    console.log(flag);
    console.log(check);

    if(passCheck.test(check) != true){
        alert("가입 양식을 다시 확인해주세요");
        window.addEventListener('beforeunload', (event) => {  
            // 표준에 따라 기본 동작 방지  
            event.preventDefault();  // Chrome에서는 returnValue 설정이 필요함  
            event.returnValue = '';});

        
    } else if(passCheck.test(check) == true){
        alert("가입을 축하합니다");
        location.href("sigIn.html");
    }

});

</script>

</html>