<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	header {
    text-align: center;
	}
  /* 메뉴 로고 css*/
  #logo{
    float: left;
  }

	/* 메뉴바 css */
  #menubar{
    float: right;
  }
    body, ul, li {
    margin:0;
    padding:0;
    list-style:none;
    }
    a {
    color:inherit;
    text-decoration:none;
    }

    .menu-box-1 {
    text-align:center;
    }

    .menu-box-1 ul {
    background-color:#00d9ff;
    }
    .menu-box-1 > ul {
    display:inline-block;
    padding:0 20px;

    }

    .menu-box-1 > ul > li {
    display:inline-block;
    }
    .menu-box-1 ul > li {
    position:relative;
    }

    .menu-box-1 ul > li > a {
    display:block;
    padding:10px;
    white-space:nowrap;
    }

    .menu-box-1 ul > li:hover > a {
    background-color:rgb(0, 73, 182);
    color:white;
    }

    .menu-box-1 > ul ul {
    display:none;
    position:absolute;
    top:100%;
    left:0;
    }
    .menu-box-1 ul > li:hover > ul {
    display:block;
    }

    .menu-box-1 > ul > li:last-child > ul ul {
    left:auto;
    right:100%;
    }

</style>
</head>
<body>
    <header>
        <div id="logo">
            <img src="resources/img/한림대학교 학생정보 시스템.png" alt="">
        </div>

        <div id="menubar">
            <nav class="menu-box-1">
                <ul>
                    <!-- 학생정보 메뉴 바 -->
                  <li>
                    <a href="#">학생정보 </a>
                    <ul>
                      <li>
                        <a href="#">개인정보 조회</a>
                      </li>
                      <li>
                        <a href="#">성적 조회</a>
      
                      </li>
                      <li>
                        <a href="#">학과</a>
                      </li>
                    </ul>
                  </li>
                  <!--  -->
                  <li>
                    <a href="#">수강신청</a>
                    <ul>
                      <li>
                        <a href="#">수강신청하기</a>
      
                      </li>
                      <li>
                        <a href="#">수강신청 현황</a>
      
                      </li>
                      <li>
                        <a href="#">과목 조회</a>
      
                      </li>
                    </ul>
                  </li>
        
                  <li>
                    <a href="#">지도교수</a>
                    <ul>
                      <li>
                        <a href="#">지도교수 확인</a>
      
                      </li>
                      <li>
                        <a href="#">지도교수 홈페이지</a>
      
                      </li>
                    </ul>
                  </li>
                </ul>
              </nav>
            </div>
        </header>

        <div id="main_img">
          <img src="resources/img/home_main_img01.png" alt="">
        </div>

    
</div>
</body>
</html>