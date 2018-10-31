<!DOCTYPE html>
<#-- @ftlvariable name="pageModel" type="com.bloomreach.pagemodel.api.model.PageModel" -->
<#-- @ftlvariable name="component" type="com.bloomreach.pagemodel.api.model.ComponentModel" -->
<#-- @ftlvariable name="ts" type="com.bloomreach.pagemodel.api.util.TemplateSupport" -->
<html class="no-js">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>BR Connect 2018</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

  <#--<!-- Place favicon.ico and apple-touch-icon.png in the root directory &ndash;&gt;-->
  <#--<!-- Fonts &ndash;&gt;-->
  <#--<!-- Source Sans Pro &ndash;&gt;-->
  <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400i|Source+Sans+Pro:300,400,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400,600,700" rel="stylesheet">
  <#--<!-- CSS &ndash;&gt;-->
  <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
  <!-- Bootstrap CDN -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">


  <link rel="stylesheet" href="${ts.resourceUrl("/css/themefisher-fonts.css")}">
  <link rel="stylesheet" href="${ts.resourceUrl("/css/owl.carousel.css")}>
  <link rel="stylesheet" href="${ts.resourceUrl("/css/magnific-popup.css")}">
  <link rel="stylesheet" href="${ts.resourceUrl("/css/style.css")}">
  <#--<!-- Responsive Stylesheet &ndash;&gt;-->
  <link rel="stylesheet" href="${ts.resourceUrl("/css/responsive.css")}">
  </head>

  <body id="body">

    <div id="preloader-wrapper">
      <div class="pre-loader"></div>
    </div>

    <!--
    Header start
    ==================== -->
    <div class="container">
      <nav class="navbar navigation " id="top-nav">
        <a class="navbar-brand logo" href="#">
          <h1>BR Connect 2018</h1>
        </a>

        <button class="navbar-toggler hidden-lg-up float-lg-right" type="button" data-toggle="collapse" data-target="#navbarResponsive">
          <i class="tf-ion-android-menu"></i>
        </button>

        <div class="collapse navbar-toggleable-md" id="navbarResponsive">
          <ul class="nav navbar-nav menu float-lg-right" id="top-nav">
            <#list pageModel.page.namedComponents["header"].namedComponents["menu"].models.menu.siteMenuItems as menuItem>
              <li <#if menuItem.selected >class=" active"</#if>>
                <a href="#">${menuItem.name?upper_case}</a>
              </li>
            </#list>
          </ul>
        </div>

      </nav>
    </div>

    <div>
      <div class="container-fluid" ${ts.component(pageModel.page.namedComponents["body"].namedComponents["container"])}>
      <#if pageModel.page.namedComponents["body"].namedComponents["container"].components??>
          <#list pageModel.page.namedComponents["body"].namedComponents["container"].components as component>
            <div>
              <div ${ts.component(component)}>
                 <#if component.models??>

                    <#assign ref>${component.models.document.reference}</#assign>
                      <#assign document=pageModel.contentNode[ref]/>
                   <div class="container">
                     <div class="row" ${ts.content(component.models.document)}>
                       <div class="col-md-6 text-center">
                         <img src="${ts.getImageUrl(pageModel, document.get("image").get("$ref"))}" width="400" alt="">
                       </div>
                       <div class="col-md-6">
                         <div class="block">
                           <h1 class="">${document.get("title").asText()}</h1>
                             ${document.get("content").get("value").asText()}
                           <a class="btn btn-main" href="#about" role="button">Buy Now With $199</a>
                         </div>
                       </div>
                     </div><!-- .row close -->
                   </div>
                 <#else>
                  <div class="container">
                    <div class="row">
                      <div class="col-md-6 text-center">
                        <h2>Currently no model available for ${component.name} of type ${component.label}</h2>
                      </div>

                    </div>
                  </div>
                 </#if>
              </div>
            </div>
          </#list>

      </#if>

      </div>
    </div>
    <footer>
      <div class="container text-center">
        <div class="row">
          <div class="col-md-12">
            <div class="block">
              <a href="" class="footer-logo">BR Connect 2018</a>
              <ul class="menu">
                <li class=" active">
                  <a href="#">HOME</a>
                </li>
                <li class="">
                  <a href="#about">ABOUT</a>
                </li>
                <li class="">
                  <a href="#service">SERVICES</a>
                </li>
                <li class="">
                  <a href="#contact">CONTACT</a>
                </li>
              </ul>

            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- Js -->
  <script src="${ts.resourceUrl("/js/vendor/jquery-2.1.1.min.js")}"></script>
  <script src=https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
  <script src=https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
  <script src="${ts.resourceUrl("/js/vendor/modernizr-2.6.2.min.js")}"></script>
  <script src="${ts.resourceUrl("/js/owl.carousel.min.js")}"></script>
  <script src="${ts.resourceUrl("/js/jquery.magnific-popup.min.js")}"></script>
  <script src="${ts.resourceUrl("/js/main.js")}"></script>

  </body>
</html>