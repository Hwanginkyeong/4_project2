<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet" href="/bookproject/asset/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="/bookproject/asset/css/mybook_review.css">
        <link rel="stylesheet" href="/bookproject/asset/css/book_detail_modal.css">

        <script src="/bookproject/asset/js/jquery-1.12.4.js"></script>
        <script src="/bookproject/asset/bootstrap/js/bootstrap.js"></script>
    </head>

    <body>
        <div id="wrap">
            <!-- ------헤더------ -->
            <div id="header" class="clearfix">
                <a href=""> <img src="/bookproject/asset/img/1_logo.png">
                </a>
                <!-- 로그인전 -->
                <ul class="list-unstyled">
                    <a class="btn btn-link" role="button" href="#">기록하기</a>
                    <a class="btn btn-link" role="button" href="#">로그인</a>
                </ul>
                <!-- 로그인후 -->
                <!-- <ul class="list-unstyled">
                        <a class="btn btn-link" role="button" href="#">기록하기</a>
                        <span onclick="location.href='http://'">
                            <img src="../img/login/user.jpg" class="img-circle">
                            <a class="btn btn-link" role="button" href="#">황태형</a>
                        </span>
                    </ul> -->
            </div>
            <!-- ------헤더------ -->
            
            <!-- ------nav------ -->
            <div id="nav" class="clearfix" >
                <ul class="nav nav-tabs">
                    <!-- 작성자아이디와 세션아이디가 동일할 시 -->  
                    <li role="presentation" class="active"><a href="#">내 서평</a></li>
                    <!-- 작성자아이디와 세션아이디가 다를경우 -->  
                    <!-- <li role="presentation" class="active"><a href="#">'유저이름'님의 서평</a></li> -->
                    <li role="presentation"><a href="#">취향저격</a></li>
                    <!--세션 아이디와 사이트아이디 같을때-->
                    <li role="presentation"><a href="#">통계</a></li>
                </ul>
            </div>
            <!-- ------nav------ -->
            
            <!--content-->
            <div class="container">
                <div class="row">
                    <!-- col-xs-8 -->
                    <div id="content" class="col-xs-8">
                        <!--기록하기 박스-->
                        <!-- 작성자아이디와 세션아이디가 동일할 시에만 보이게 -->  
                        <div id="writebox" class="jumbotron">
                            <h1>서평 기록하기</h1>
                            <p>'유저이름'님 오늘은 어떤 책을 읽으셨나요?</p>
                            <p><a class="btn btn-primary btn-md" href="#" role="button">기록하기</a></p>
                        </div>
                        <!-- list -->
                        <div id="list">
                            <ul>
                                <li><a><span>최신순</span></a></li>
                                <li><a><span>인기순</span></a></li>
                            </ul>
                            <span class="glyphicon glyphicon-filter" aria-hidden="true"></span>
                            <div id="category" class="dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                                  카테고리
                                  <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">즐거운</a></li>
                                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">우울한</a></li>
                                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">화난</a></li>
                                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">감성적인</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- list -->
                        
                        <!-- 서평 리스트 -->
                        <div id="reviews">
                            <div id="reviews-header">
                                <div class="left"><p><a>데미안</a></p></div>
                                <!-- 작성자아이디와 세션아이디가 동일할 시에만 보이게 -->  
                                <div class="right">
                                    <a>수정</a>
                                    <a>삭제</a>
                                </div>
                            </div>
                            <!-- 작성자아이디와 세션아이디가 동일할 경우에는 안보이게 -->  
                            <div id="reviewer"><a>돈까스먹는 오리</a></div>
                            <div id="reviews-content">
                                <p>새는 알에서 빠져나오려고 몸부림친다. 알은 세계이다. 태어나려는 자는 누구든 한 개의 세계를 부숴야 한다. 그 새는 신을 향해 날아간다. 그 신의 이름은 아브락사스다.</p>
                                <span class="label label-default">우울한</span>
                                <span class="label label-default">#mood</span>
                            </div>
                            <div id="reviews-footer">
                                <div class="left">
                                    <span id="heart" class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span>16.5k</span>
                                    <span>2022/02/22</span>
                                </div>
                                <div class="right">
                                    <div class="dropup">
                                        <a id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            더보기
                                            <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
                                            <li role="presentation"><a id="" role="menuitem" tabindex="-1" href="#">플레이리스트에 추가<span id="plus">+</span></a></li>
                                            <li role="presentation" class="divider"></li>
                                            <li role="presentation"><a id="share_review" role="menuitem" tabindex="-1" href="#">서평 공유하기<span class="glyphicon glyphicon-share" aria-hidden="true"></span></a></li>
                                            <li role="presentation" class="divider"></li>
                                            <li role="presentation"><a id="save_img" role="menuitem" target="_blank" tabindex="-1" href="/bookproject/imgpreview">이미지 저장하기<span class="glyphicon glyphicon-save" aria-hidden="true"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 서평 리스트 -->
                        <div id="reviews">
                            <div id="reviews-header">
                                <div class="left"><p><a>데미안</a></p></div>
                                <!-- 작성자아이디와 세션아이디가 동일할 시에만 보이게 -->  
                                <div class="right">
                                    <a>수정</a>
                                    <a>삭제</a>
                                </div>
                            </div>
                            <!-- 작성자아이디와 세션아이디가 동일할 경우에는 안보이게 -->  
                            <div id="reviewer"><a>돈까스먹는 오리</a></div>
                            <div id="reviews-content">
                                <p>새는 알에서 빠져나오려고 몸부림친다. 알은 세계이다. 태어나려는 자는 누구든 한 개의 세계를 부숴야 한다. 그 새는 신을 향해 날아간다. 그 신의 이름은 아브락사스다.</p>
                                <span class="label label-default">우울한</span>
                                <span class="label label-default">#mood</span>
                            </div>
                            <div id="reviews-footer">
                                <div class="left">
                                    <span id="heart" class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
                                    <span>16.5k</span>
                                    <span>2022/02/22</span>
                                </div>
                                <div class="right">
                                    <div class="dropup">
                                        <a id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            더보기
                                            <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">플레이리스트에 추가<span id="plus">+</span></a></li>
                                            <li role="presentation" class="divider"></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">서평 공유하기<span class="glyphicon glyphicon-share" aria-hidden="true"></span></a></li>
                                            <li role="presentation" class="divider"></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">이미지 저장하기<span class="glyphicon glyphicon-save" aria-hidden="true"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 서평 리스트 -->
                        <div id="reviews">
                            <div id="reviews-header">
                                <div class="left"><p><a>데미안</a></p></div>
                                <!-- 작성자아이디와 세션아이디가 동일할 시에만 보이게 -->  
                                <div class="right">
                                    <a>수정</a>
                                    <a>삭제</a>
                                </div>
                            </div>
                            <!-- 작성자아이디와 세션아이디가 동일할 경우에는 안보이게 -->  
                            <div id="reviewer"><a>돈까스먹는 오리</a></div>
                            <div id="reviews-content">
                                <p>새는 알에서 빠져나오려고 몸부림친다. 알은 세계이다. 태어나려는 자는 누구든 한 개의 세계를 부숴야 한다. 그 새는 신을 향해 날아간다. 그 신의 이름은 아브락사스다.</p>
                                <span class="label label-default">우울한</span>
                                <span class="label label-default">#mood</span>
                            </div>
                            <div id="reviews-footer">
                                <div class="left">
                                    <span id="heart" class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                                    <span>16.5k</span>
                                    <span>2022/02/22</span>
                                </div>
                                <div class="right">
                                    <div class="dropup">
                                        <a id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            더보기
                                            <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">플레이리스트에 추가<span id="plus">+</span></a></li>
                                            <li role="presentation" class="divider"></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">서평 공유하기<span class="glyphicon glyphicon-share" aria-hidden="true"></span></a></li>
                                            <li role="presentation" class="divider"></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">이미지 저장하기<span class="glyphicon glyphicon-save" aria-hidden="true"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- //col-xs-8 -->
                    
                    

                    <!-- col-xs-4:프로필 -->
                    <div id="aside" class="col-xs-4">
                        <div id="profile-box" class="panel panel-default">
                            <div class="panel-heading">
                              <h3 id="profile-title" class="panel-title">내 프로필</h3>
                            </div>
                            <div class="panel-body">
                                <div id="profile">
                                    <img id="profile-image" src="/bookproject/asset/img/profile.png">
                                </div>
                                <p id="username">황태형</p>
                                <p id="level">Lv.0</p>
                                <div id="info">
                                    <a>회원정보수정</a>
                                    <a>로그아웃</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //col-xs-4 -->

                </div>
            </div>
            <!--content-->

            
            <!-- 모달창 -->
            <div id="myModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">공유하기</h4>
                        </div>
                        <div class="modal-body">
                            <p>playbook의 서평을 SNS에 공유해 보세요 :)</p>
                            <a id="kakao-link-btn" href="javascript:kakaoShare()">
                                <img src="/bookproject/asset/img/share/kakao.jpg" />
                            </a>
                            <a id="facebook-link-btn" href="">
                                <img src="/bookproject/asset/img/share/facebook.jpg" />
                            </a>
                            <a id="twitter-link-btn" href="">
                                <img src="/bookproject/asset/img/share/twitter.png" />
                            </a>
                            <a id="kakaostory-link-btn" href="">
                                <img src="/bookproject/asset/img/share/kakaostory.png" />
                            </a>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!-- Modal -->
            
            <!-- footer -->
            <div id="footer">
                <div>
                    copyright ⓒ 2022 Randombook Player. All right reserved<br>

                    4조 Randombook ｜ 황희원 이영림 황인경 김지연 장서윤
                </div>
                <a href="">FAQ</a><a href="">서비스소개</a>
            </div>            
        </div> 
    </body>

    <script type="text/javascript">
        $('#share_review').on('click',function(){
            console.log('클릭');

            $('#myModal').modal('show');

        });


        // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('JAVASCRIPT_KEY');

        // SDK 초기화 여부를 판단합니다.
        console.log(Kakao.isInitialized());

        function kakaoShare() {
            Kakao.Link.sendDefault({
                objectType: 'feed',
                content: {
                    title: '카카오공유하기 시 타이틀',
                    description: '카카오공유하기 시 설명',
                    imageUrl: '카카오공유하기 시 썸네일 이미지 경로',
                    link: {
                    mobileWebUrl: '카카오공유하기 시 클릭 후 이동 경로',
                    webUrl: '카카오공유하기 시 클릭 후 이동 경로',
                    },
                },
                buttons: [
                    {
                        title: '웹으로 보기',
                        link: {
                        mobileWebUrl: '카카오공유하기 시 클릭 후 이동 경로',
                        webUrl: '카카오공유하기 시 클릭 후 이동 경로',
                        },
                    },
                ],
                // 카카오톡 미설치 시 카카오톡 설치 경로이동
                installTalk: true,
            })
        }


    </script>
    
</html>