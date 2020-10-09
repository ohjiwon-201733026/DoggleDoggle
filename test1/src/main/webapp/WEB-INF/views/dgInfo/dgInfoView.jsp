<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

img{
   width:400px;
   height:400px;
}
</style>
</head>
<body>

<!-- 수정해보았어요 -->


   <main id="js-page-content" role="main" class="page-content">
      <div class="row" id="js-contacts">
         <!--Menu Aligned to left-->
         <div id="page-head">

            <!--Page Title-->
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <div id="page-title">
               <h1 class="page-header text-overflow">지역 별 유기 동물 찾기</h1>
            </div>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End page title-->
            <!--Breadcrumb-->
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <ol class="breadcrumb">
               <li><a href="#"><i class="demo-pli-home"></i></a></li>
               <li><a href="#">Layouts</a></li>
               <li class="active">Collapsed Navigation</li>
            </ol>
            <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
            <!--End breadcrumb-->

         </div>
         <br />

         <div id="page-content">
            <div class="row">
               <div class="col-sm-4 col-md-3">
                  <!-- Contact Widget -->
                  <!---------------------------------->
                  <div id="whitepanel" class="panel">
                     <!--                     <div class="panel-heading"> -->
                     <h2 class="panel-title">지역 선택</h2>
                     <!--                      </div> -->
                     <div class="panel-body">
                        <div class="form-group pad-ver">
                           <div class="col-md-9">
                              <div class="radio">
                                 <!-- Inline radio buttons -->
                                         <input id="demo-inline-form-radio" class="magic-radio" type="radio" name="inline-form-radio" onclick="sido(6110000)">
                                               <label for="demo-inline-form-radio">서울 특별시</label> 
                                            <input id="demo-inline-form-radio-2" class="magic-radio" type="radio" name="inline-form-radio" onclick="sido(6410000)"> 
                                               <label for="demo-inline-form-radio-2">경기도</label> 
                                           <input id="demo-inline-form-radio-3" class="magic-radio" type="radio" name="inline-form-radio" onclick="sido(6260000)"> 
                                               <label for="demo-inline-form-radio-3">부산 광역시</label>
                                            <input id="demo-inline-form-radio-4" class="magic-radio" type="radio" name="inline-form-radio" onclick="sido(6270000)"> 
                                               <label for="demo-inline-form-radio-4">대구 광역시</label> 
                                            <input id="demo-inline-form-radio-5" class="magic-radio" type="radio" name="inline-form-radio" onclick="sido(6280000)"> 
                                               <label for="demo-inline-form-radio-5">인천 광역시</label> 
                                            <input id="demo-inline-form-radio-6" class="magic-radio" type="radio" name="inline-form-radio" onclick="sido(6290000)"> 
                                               <label for="demo-inline-form-radio-6">광주 광역시</label> 
                                            <input id="demo-inline-form-radio-7" class="magic-radio" type="radio" name="inline-form-radio" onclick="sido(5690000)"> 
                                               <label for="demo-inline-form-radio-7">세종 특별 자치시</label> 
                                            <input id="demo-inline-form-radio-8" class="magic-radio" type="radio" name="inline-form-radio" onclick="sido(6300000)"> 
                                               <label for="demo-inline-form-radio-8">대전 광역시</label> 
                                            <input id="demo-inline-form-radio-9" class="magic-radio" type="radio" name="inline-form-radio" onclick="sido(6310000)"> 
                                               <label for="demo-inline-form-radio-9">울산 광역시</label> 
                                            <input id="demo-inline-form-radio-10" class="magic-radio" type="radio" name="inline-form-radio" onclick="sido(6420000)"> 
                                                <label for="demo-inline-form-radio-10">강원도</label>
                              </div>
                              <div id="gungu"></div>


                           </div>
                        </div>

                     </div>
                     <!-- 화이트 판넬 -->
                     <div id="test">
                        <div class="row">
                           <div id="a" style="margin-left:100px">


                              <div id="ex" class="panel pos-rel">
                                 <!-- ajax로 넣기 -->

                              </div>
                           </div>
                        </div>
                     </div>



                  </div>
               </div>
            </div>
         </div>
      </div>
   </main>


   <script src="/resource/smartadmin/js/vendors.bundle.js"></script>
   <script src="/resource/smartadmin/js/app.bundle.js"></script>
   <script type="text/javascript">
      function sido(orgcode) {
      $.ajax({          
             url: '/dgInfo',
             type: 'POST',
             data:{
               orgcode:orgcode
            },
             dataType: 'text',
             success: function(data){
                
                 console.log("호출성공");
               var a=JSON.parse(data);
                 console.log(a[0].orgCd);
                 str='<div class="btn-group">'+
                       '<div class="dropdown">'+
                           '<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown" type="button">'+
                                '구 선택<i class="dropdown-caret"></i>'+
                           '</button>'+
                           '<ul class="dropdown-menu dropdown-menu-right">'+
                               '<li class="dropdown-header"></li>';
                               
               for(var i=0;i<a.length;++i){
                  str+='<li onclick="sigungu('+orgcode+','+a[i].orgCd+')">'+a[i].orgdownNm+'</li>';
                  };
                   
                  
               str+='</ul>'+
                       '</div>'+
                   '</div>';
                 $('#gungu').html(str);
                 },
             error:function(jqXHR){
                    console.log("실패입니다.");
                }
             
         });    
         
      }

         
<!--          <script type="text/javascript"> -->
         function sigungu(si, gungu) { // 구 코드 보내기
            
            $.ajax({
                  url : '/sigunguInfo',
                  type : 'GET',
                  data : {
                     si : si,
                     gungu : gungu
                  },
                  dataType : 'text',
                  success : function(data) {
                     console.log("성공");
                     var a = JSON.parse(data);
                     console.log(a);
                  str='<table>';
                     
                     for (var i = 0; i < a.length; i+=3) {
                        str+='<tr>'
                        for(var j=0;j<3;j++){
                           str+='<td><div id="ex"class="panel pos-rel">'+
                              '<div class="pad-all text-center"><div class="widget-control"><a href="#" class="add-tooltip btn btn-trans" data-original-title="Favorite"><span class="favorite-color"><i class="demo-psi-star icon-lg"></i></span></a>'+
                                  '<div class="btn-group dropdown">'+
                                   '<a href="#" class="dropdown-toggle btn btn-trans" data-toggle="dropdown" aria-expanded="false"><i class="demo-psi-dot-vertical icon-lg"></i></a>'+
                                   '<ul class="dropdown-menu dropdown-menu-right" style="">'+
                                   '<li><a href="#"><i class="icon-lg icon-fw demo-psi-pen-5"></i> Edit</a></li>'+
                                   '<li><a href="#"><i class="icon-lg icon-fw demo-pli-recycling"></i> Remove</a></li>'+
                                   '<li class="divider"></li>'+
                                   '<li><a href="#"><i class="icon-lg icon-fw demo-pli-mail"></i> Send a Message</a></li>'+
                                   '<li><a href="#"><i class="icon-lg icon-fw demo-pli-calendar-4"></i> View Details</a></li>'+
                                   '<li><a href="#"><i class="icon-lg icon-fw demo-pli-lock-user"></i> Lock</a></li>'+
                                   '</ul>'+
                                  '</div>'+
                                 '</div>'+
                                 '<a href="#">'+
                                  '<img style="width:200px;height:200px;" alt="Profile Picture" class="img-lg img-circle mar-ver" src="'+a[i+j].popfile+'">'+
                                  '<p class="text-lg text-semibold mar-no text-main">'+a[i+j].kindCd+'</p>'+
                                  '<p class="text-sm">Marketing manager</p>'+
                                  '<p class="text-sm">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean massa.</p>'+
                                 '</a>'+
                                 '<div class="pad-top btn-groups">'+
                                  '<a href="#" class="btn btn-icon demo-pli-facebook icon-lg add-tooltip" data-original-title="Facebook" data-container="body"></a>'+
                                  '<a href="#" class="btn btn-icon demo-pli-twitter icon-lg add-tooltip" data-original-title="Twitter" data-container="body"></a>'+
                                  '<a href="#" class="btn btn-icon demo-pli-google-plus icon-lg add-tooltip" data-original-title="Google+" data-container="body"></a>'+
                                  '<a href="#" class="btn btn-icon demo-pli-instagram icon-lg add-tooltip" data-original-title="Instagram" data-container="body"></a>'+
                                 '</div>'+
                                '</div></div></td>';
                             }
                             str+='</tr>';
                     }

                     str+='<table>'

                     $('#a').html(str);

                  },
                  error : function(jqXHR) {
                     console.log("실패입니다.");
                  }

               });

      }
   </script>

</body>
</html>