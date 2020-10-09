<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!--    20.09.23 유진 -->
        <meta name="description" content="Contacts">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
        <!-- Call App Mode on ios devices -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Remove Tap Highlight on Windows Phone IE -->
        <meta name="msapplication-tap-highlight" content="no">
        <!-- base css -->
        <link rel="stylesheet" media="screen, print" href="/resource/smartadmin/css/vendors.bundle.css">
        <link rel="stylesheet" media="screen, print" href="/resource/smartadmin/css/app.bundle.css">
        <!-- Place favicon.ico in the root directory -->
        <link rel="apple-touch-icon" sizes="180x180" href="/resource/smartadmin/img/favicon/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/resource/smartadmin/img/favicon/favicon-32x32.png">
        <link rel="mask-icon" href="/resource/smartadmin/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
        <link rel="stylesheet" media="screen, print" href="/resource/smartadmin/css/fa-solid.css">
        <link rel="stylesheet" media="screen, print" href="/resource/smartadmin/css/fa-brands.css">
</head>
<body>

<!-- 20.09.23 유진 -->
        <script> 
             /**
              *	This script should be placed right after the body tag for fast execution 
              *	Note: the script is written in pure javascript and does not depend on thirdparty library
              **/
             'use strict';

             var classHolder = document.getElementsByTagName("BODY")[0],
                 /** 
                  * Load from localstorage
                  **/
                 themeSettings = (localStorage.getItem('themeSettings')) ? JSON.parse(localStorage.getItem('themeSettings')) :
                 {},
                 themeURL = themeSettings.themeURL || '',
                 themeOptions = themeSettings.themeOptions || '';
             /** 
              * Load theme options
              **/
             if (themeSettings.themeOptions)
             {
                 classHolder.className = themeSettings.themeOptions;
                 console.log("%c✔ Theme settings loaded", "color: #148f32");
             }
             else
             {
                 console.log("Heads up! Theme settings is empty or does not exist, loading default settings...");
             }
             if (themeSettings.themeURL && !document.getElementById('mytheme'))
             {
                 var cssfile = document.createElement('link');
                 cssfile.id = 'mytheme';
                 cssfile.rel = 'stylesheet';
                 cssfile.href = themeURL;
                 document.getElementsByTagName('head')[0].appendChild(cssfile);
             }
             /** 
              * Save to localstorage 
              **/
             var saveSettings = function()
             {
                 themeSettings.themeOptions = String(classHolder.className).split(/[^\w-]+/).filter(function(item)
                 {
                     return /^(nav|header|mod|display)-/i.test(item);
                 }).join(' ');
                 if (document.getElementById('mytheme'))
                 {
                     themeSettings.themeURL = document.getElementById('mytheme').getAttribute("href");
                 };
                 localStorage.setItem('themeSettings', JSON.stringify(themeSettings));
             }
             /** 
              * Reset settings
              **/
             var resetSettings = function()
             {
                 localStorage.setItem("themeSettings", "");
             }

        </script>



<main id="js-page-content" role="main" class="page-content">
                        <ol class="breadcrumb page-breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">SmartAdmin</a></li>
                            <li class="breadcrumb-item">Page Views</li>
                            <li class="breadcrumb-item active">Contacts</li>
                            <li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
                        </ol>
                        <div class="subheader">
                            <h1 style="color: white;">
                                <i class='subheader-icon fal fa-plus-circle'></i> <strong>ShoppongMall</strong>
<!--                                 <small> -->
<!--                                     A simple contact page -->
<!--                                 </small> -->
                            </h1>
                        </div>
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="border-faded bg-faded p-3 mb-g d-flex">
                                    <input type="text" id="js-filter-contacts" name="filter-contacts" class="form-control shadow-inset-2 form-control-lg" placeholder="Filter contacts">
                                    <div class="btn-group btn-group-lg btn-group-toggle hidden-lg-down ml-3" data-toggle="buttons">
                                        <label class="btn btn-default active">
                                            <input type="radio" name="contactview" id="grid" checked="" value="grid"><i class="fas fa-table"></i>
                                        </label>
                                        <label class="btn btn-default">
                                            <input type="radio" name="contactview" id="table" value="table"><i class="fas fa-th-list"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="js-contacts">
                            <div class="col-xl-4">
                                <div id="c_1" class="card border shadow-0 mb-g shadow-sm-hover" data-filter-tags="oliver kopyov">
                                    <div class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
                                        <div class="d-flex flex-row align-items-center">
                                            <span class="status status-success mr-3">
                                                <span class="rounded-circle profile-image d-block " style="background-image:url('/resource/smartadmin/img/demo/avatars/avatar-b.png'); background-size: cover;"></span>
                                            </span>
                                            <div class="info-card-text flex-1">
                                                <a href="javascript:void(0);" class="fs-xl text-truncate text-truncate-lg text-info" data-toggle="dropdown" aria-expanded="false">
                                                    Oliver Kopyov
                                                    <i class="fal fa-angle-down d-inline-block ml-1 fs-md"></i>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Send Email</a>
                                                    <a class="dropdown-item" href="#">Create Appointment</a>
                                                    <a class="dropdown-item" href="#">Block User</a>
                                                </div>
                                                <span class="text-truncate text-truncate-xl">IT Director, Gotbootstrap Inc.</span>
                                            </div>
                                            <button class="js-expand-btn btn btn-sm btn-default d-none" data-toggle="collapse" data-target="#c_1 > .card-body + .card-body" aria-expanded="false">
                                                <span class="collapsed-hidden">+</span>
                                                <span class="collapsed-reveal">-</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body p-0 collapse show">
                                        <div class="p-3">
                                            <a href="tel:+13174562564" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mobile-alt text-muted mr-2"></i> +1 317-456-2564</a>
                                            <a href="mailto:oliver.kopyov@smartadminwebapp.com" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mouse-pointer text-muted mr-2"></i> oliver.kopyov@smartadminwebapp.com</a>
                                            <address class="fs-sm fw-400 mt-4 text-muted">
                                                <i class="fas fa-map-pin mr-2"></i> 15 Charist St, Detroit, MI, 48212, USA</address>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div id="c_2" class="card border shadow-0 mb-g shadow-sm-hover" data-filter-tags="sesha gray">
                                    <div class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
                                        <div class="d-flex flex-row align-items-center">
                                            <span class="status status-warning mr-3">
                                                <span class="rounded-circle profile-image d-block " style="background-image:url('/resource/smartadmin/img/demo/avatars/avatar-c.png'); background-size: cover;"></span>
                                            </span>
                                            <div class="info-card-text flex-1">
                                                <a href="javascript:void(0);" class="fs-xl text-truncate text-truncate-lg text-info" data-toggle="dropdown" aria-expanded="false">
                                                    Sesha Gray
                                                    <i class="fal fa-angle-down d-inline-block ml-1 fs-md"></i>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Send Email</a>
                                                    <a class="dropdown-item" href="#">Create Appointment</a>
                                                    <a class="dropdown-item" href="#">Block User</a>
                                                </div>
                                                <span class="text-truncate text-truncate-xl">Project Manager, Gotbootstrap Inc.</span>
                                            </div>
                                            <button class="js-expand-btn btn btn-sm btn-default d-none" data-toggle="collapse" data-target="#c_2 > .card-body + .card-body" aria-expanded="false">
                                                <span class="collapsed-hidden">+</span>
                                                <span class="collapsed-reveal">-</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body p-0 collapse show">
                                        <div class="p-3">
                                            <a href="tel:+13174562564" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mobile-alt text-muted mr-2"></i> +1 313-461-1347</a>
                                            <a href="mailto:oliver.kopyov@smartadminwebapp.com" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mouse-pointer text-muted mr-2"></i> sesha.gray@smartadminwebapp.com</a>
                                            <address class="fs-sm fw-400 mt-4 text-muted">
                                                <i class="fas fa-map-pin mr-2"></i> 134 Hamtrammac, Detroit, MI, 48314, USA</address>
           
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div id="c_3" class="card border shadow-0 mb-g shadow-sm-hover" data-filter-tags="dr john cook">
                                    <div class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
                                        <div class="d-flex flex-row align-items-center">
                                            <span class="status status-danger mr-3">
                                                <span class="rounded-circle profile-image d-block " style="background-image:url('/resource/smartadmin/img/demo/avatars/avatar-e.png'); background-size: cover;"></span>
                                            </span>
                                            <div class="info-card-text flex-1">
                                                <a href="javascript:void(0);" class="fs-xl text-truncate text-truncate-lg text-info" data-toggle="dropdown" aria-expanded="false">
                                                    Dr. John Cook PhD
                                                    <i class="fal fa-angle-down d-inline-block ml-1 fs-md"></i>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Send Email</a>
                                                    <a class="dropdown-item" href="#">Create Appointment</a>
                                                    <a class="dropdown-item" href="#">Block User</a>
                                                </div>
                                                <span class="text-truncate text-truncate-xl">Human Resources, Gotbootstrap Inc.</span>
                                            </div>
                                            <button class="js-expand-btn btn btn-sm btn-default d-none" data-toggle="collapse" data-target="#c_3 > .card-body + .card-body" aria-expanded="false">
                                                <span class="collapsed-hidden">+</span>
                                                <span class="collapsed-reveal">-</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body p-0 collapse show">
                                        <div class="p-3">
                                            <a href="tel:+13174562564" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mobile-alt text-muted mr-2"></i> +1 313-779-1347</a>
                                            <a href="mailto:oliver.kopyov@smartadminwebapp.com" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mouse-pointer text-muted mr-2"></i> john.cook@smartadminwebapp.com</a>
                                            <address class="fs-sm fw-400 mt-4 text-muted">
                                                <i class="fas fa-map-pin mr-2"></i> 55 Smyth Rd, Detroit, MI, 48341, USA</address>
                                          
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div id="c_4" class="card border shadow-0 mb-g shadow-sm-hover" data-filter-tags="jim ketty">
                                    <div class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
                                        <div class="d-flex flex-row align-items-center">
                                            <span class="status status-success mr-3">
                                                <span class="rounded-circle profile-image d-block " style="background-image:url('/resource/smartadmin/img/demo/avatars/avatar-k.png'); background-size: cover;"></span>
                                            </span>
                                            <div class="info-card-text flex-1">
                                                <a href="javascript:void(0);" class="fs-xl text-truncate text-truncate-lg text-info" data-toggle="dropdown" aria-expanded="false">
                                                    Jim Ketty
                                                    <i class="fal fa-angle-down d-inline-block ml-1 fs-md"></i>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Send Email</a>
                                                    <a class="dropdown-item" href="#">Create Appointment</a>
                                                    <a class="dropdown-item" href="#">Block User</a>
                                                </div>
                                                <span class="text-truncate text-truncate-xl">Staff Orgnizer, Gotbootstrap Inc.</span>
                                            </div>
                                            <button class="js-expand-btn btn btn-sm btn-default d-none" data-toggle="collapse" data-target="#c_4 > .card-body + .card-body" aria-expanded="false">
                                                <span class="collapsed-hidden">+</span>
                                                <span class="collapsed-reveal">-</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body p-0 collapse show">
                                        <div class="p-3">
                                            <a href="tel:+13174562564" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mobile-alt text-muted mr-2"></i> +1 313-779-3314</a>
                                            <a href="mailto:oliver.kopyov@smartadminwebapp.com" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mouse-pointer text-muted mr-2"></i> jim.ketty@smartadminwebapp.com</a>
                                            <address class="fs-sm fw-400 mt-4 text-muted">
                                                <i class="fas fa-map-pin mr-2"></i> 134 Tasy Rd, Detroit, MI, 48212, USA</address>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div id="c_5" class="card border shadow-0 mb-g shadow-sm-hover" data-filter-tags="aaron tellus">
                                    <div class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
                                        <div class="d-flex flex-row align-items-center">
                                            <span class="status status-success mr-3">
                                                <span class="rounded-circle profile-image d-block " style="background-image:url('/resource/smartadmin/img/demo/avatars/avatar-g.png'); background-size: cover;"></span>
                                            </span>
                                            <div class="info-card-text flex-1">
                                                <a href="javascript:void(0);" class="fs-xl text-truncate text-truncate-lg text-info" data-toggle="dropdown" aria-expanded="false">
                                                    Dr. John Oliver
                                                    <i class="fal fa-angle-down d-inline-block ml-1 fs-md"></i>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Send Email</a>
                                                    <a class="dropdown-item" href="#">Create Appointment</a>
                                                    <a class="dropdown-item" href="#">Block User</a>
                                                </div>
                                                <span class="text-truncate text-truncate-xl">Oncologist, Gotbootstrap Inc.</span>
                                            </div>
                                            <button class="js-expand-btn btn btn-sm btn-default d-none" data-toggle="collapse" data-target="#c_5 > .card-body + .card-body" aria-expanded="false">
                                                <span class="collapsed-hidden">+</span>
                                                <span class="collapsed-reveal">-</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body p-0 collapse show">
                                        <div class="p-3">
                                            <a href="tel:+13174562564" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mobile-alt text-muted mr-2"></i> +1 313-779-8134</a>
                                            <a href="mailto:oliver.kopyov@smartadminwebapp.com" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mouse-pointer text-muted mr-2"></i> john.oliver@smartadminwebapp.com</a>
                                            <address class="fs-sm fw-400 mt-4 text-muted">
                                                <i class="fas fa-map-pin mr-2"></i> 134 Gallery St, Detroit, MI, 46214, USA</address>
                                     
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div id="c_6" class="card border shadow-0 mb-g shadow-sm-hover" data-filter-tags="sarah mcbrook">
                                    <div class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
                                        <div class="d-flex flex-row align-items-center">
                                            <span class="status status-success mr-3">
                                                <span class="rounded-circle profile-image d-block " style="background-image:url('/resource/smartadmin/img/demo/avatars/avatar-h.png'); background-size: cover;"></span>
                                            </span>
                                            <div class="info-card-text flex-1">
                                                <a href="javascript:void(0);" class="fs-xl text-truncate text-truncate-lg text-info" data-toggle="dropdown" aria-expanded="false">
                                                    Sarah McBrook
                                                    <i class="fal fa-angle-down d-inline-block ml-1 fs-md"></i>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Send Email</a>
                                                    <a class="dropdown-item" href="#">Create Appointment</a>
                                                    <a class="dropdown-item" href="#">Block User</a>
                                                </div>
                                                <span class="text-truncate text-truncate-xl">Xray Division, Gotbootstrap Inc.</span>
                                            </div>
                                            <button class="js-expand-btn btn btn-sm btn-default d-none" data-toggle="collapse" data-target="#c_6 > .card-body + .card-body" aria-expanded="false">
                                                <span class="collapsed-hidden">+</span>
                                                <span class="collapsed-reveal">-</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body p-0 collapse show">
                                        <div class="p-3">
                                            <a href="tel:+13174562564" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mobile-alt text-muted mr-2"></i> +1 313-779-7613</a>
                                            <a href="mailto:oliver.kopyov@smartadminwebapp.com" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mouse-pointer text-muted mr-2"></i> sarah.mcbrook@smartadminwebapp.com</a>
                                            <address class="fs-sm fw-400 mt-4 text-muted">
                                                <i class="fas fa-map-pin mr-2"></i> 13 Jamie Rd, Detroit, MI, 48313, USA</address>
                                 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div id="c_7" class="card border shadow-0 mb-g shadow-sm-hover" data-filter-tags="jimmy fellan">
                                    <div class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
                                        <div class="d-flex flex-row align-items-center">
                                            <span class="status status-success mr-3">
                                                <span class="rounded-circle profile-image d-block " style="background-image:url('/resource/smartadmin/img/demo/avatars/avatar-i.png'); background-size: cover;"></span>
                                            </span>
                                            <div class="info-card-text flex-1">
                                                <a href="javascript:void(0);" class="fs-xl text-truncate text-truncate-lg text-info" data-toggle="dropdown" aria-expanded="false">
                                                    Jimmy Fellan
                                                    <i class="fal fa-angle-down d-inline-block ml-1 fs-md"></i>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Send Email</a>
                                                    <a class="dropdown-item" href="#">Create Appointment</a>
                                                    <a class="dropdown-item" href="#">Block User</a>
                                                </div>
                                                <span class="text-truncate text-truncate-xl">Accounting, Gotbootstrap Inc.</span>
                                            </div>
                                            <button class="js-expand-btn btn btn-sm btn-default d-none" data-toggle="collapse" data-target="#c_7 > .card-body + .card-body" aria-expanded="false">
                                                <span class="collapsed-hidden">+</span>
                                                <span class="collapsed-reveal">-</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body p-0 collapse show">
                                        <div class="p-3">
                                            <a href="tel:+13174562564" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mobile-alt text-muted mr-2"></i> +1 313-779-4314</a>
                                            <a href="mailto:oliver.kopyov@smartadminwebapp.com" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mouse-pointer text-muted mr-2"></i> jimmy.fallan@smartadminwebapp.com</a>
                                            <address class="fs-sm fw-400 mt-4 text-muted">
                                                <i class="fas fa-map-pin mr-2"></i> 55 Smyth Rd, Detroit, MI, 48341, USA</address>
                                    
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4">
                                <div id="c_8" class="card border shadow-0 mb-g shadow-sm-hover" data-filter-tags="arica grace">
                                    <div class="card-body border-faded border-top-0 border-left-0 border-right-0 rounded-top">
                                        <div class="d-flex flex-row align-items-center">
                                            <span class="status status-success mr-3">
                                                <span class="rounded-circle profile-image d-block " style="background-image:url('/resource/smartadmin/img/demo/avatars/avatar-j.png'); background-size: cover;"></span>
                                            </span>
                                            <div class="info-card-text flex-1">
                                                <a href="javascript:void(0);" class="fs-xl text-truncate text-truncate-lg text-info" data-toggle="dropdown" aria-expanded="false">
                                                    Arica Grace
                                                    <i class="fal fa-angle-down d-inline-block ml-1 fs-md"></i>
                                                </a>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Send Email</a>
                                                    <a class="dropdown-item" href="#">Create Appointment</a>
                                                    <a class="dropdown-item" href="#">Block User</a>
                                                </div>
                                                <span class="text-truncate text-truncate-xl">Accounting, Gotbootstrap Inc.</span>
                                            </div>
                                            <button class="js-expand-btn btn btn-sm btn-default d-none" data-toggle="collapse" data-target="#c_8 > .card-body + .card-body" aria-expanded="false">
                                                <span class="collapsed-hidden">+</span>
                                                <span class="collapsed-reveal">-</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body p-0 collapse show">
                                        <div class="p-3">
                                            <a href="tel:+13174562564" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mobile-alt text-muted mr-2"></i> +1 313-779-3347</a>
                                            <a href="mailto:oliver.kopyov@smartadminwebapp.com" class="mt-1 d-block fs-sm fw-400 text-dark">
                                                <i class="fas fa-mouse-pointer text-muted mr-2"></i> arica.grace@smartadminwebapp.com</a>
                                            <address class="fs-sm fw-400 mt-4 text-muted">
                                                <i class="fas fa-map-pin mr-2"></i> 798 Smyth Rd, Detroit, MI, 48341, USA</address>
                                      
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                            
                            
                        </div>
                    </main>


        <script src="/resource/smartadmin/js/vendors.bundle.js"></script>
        <script src="/resource/smartadmin/js/app.bundle.js"></script>
        <script>
            $(document).ready(function()
            {

                $('input[type=radio][name=contactview]').change(function()
                {
                    if (this.value == 'grid')
                    {
                        $('#js-contacts .card').removeClassPrefix('mb-').addClass('mb-g');
                        $('#js-contacts .col-xl-12').removeClassPrefix('col-xl-').addClass('col-xl-4');
                        $('#js-contacts .js-expand-btn').addClass('d-none');
                        $('#js-contacts .card-body + .card-body').addClass('show');

                    }
                    else if (this.value == 'table')
                    {
                        $('#js-contacts .card').removeClassPrefix('mb-').addClass('mb-1');
                        $('#js-contacts .col-xl-4').removeClassPrefix('col-xl-').addClass('col-xl-12');
                        $('#js-contacts .js-expand-btn').removeClass('d-none');
                        $('#js-contacts .card-body + .card-body').removeClass('show');
                    }

                });

                //initialize filter
                initApp.listFilter($('#js-contacts'), $('#js-filter-contacts'));
            });

        </script>

</body>
</html>