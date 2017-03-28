=========== from OReilly.Learning.AngularJS.pdf eBook ======================
Steps To Server Files Locally
Using NodeJS
> git clone https://github.com/KenWilliamson/LearningAngularJS_chapter1.git
> cd angularjs-up-and-running
> npm init
   (accept all defaults)
> npm install --save http-server
> node node_modules/http-server/bin/http-server
connect browser to http://localhost:8080 example directory is served
-------------- p.20 Single-Page-Applications ------------------
the entry point of our SPA in the index.html code that follows. The
tag <div ng-view></div> is where all dynamic content is inserted into index.html:
-------------- p.21 Bootstrapping the Application---------------
1. index.html file is analyzed, and the parser looks for the ng-app tag. The line <html
lang="en" ng-app="helloWorldApp"></html> shows how ng-app is defined. 
2.  app.js is where the AngularJS application helloWorldApp is defined as an
AngularJS module, and this is the entry point into the application.
var helloWorldApp = angular.module('helloWorldApp', [
    'ngRoute',     
    'helloWorldControllers' 
]);
---------------------Dependency Injection---------------------------
3. AngularJS uses dependency injection to load module dependencies 
when an application first starts. In app.js code (a) AngularJS ngRoute module, 
which provides routing to the application. (b)helloWorldControllers. 
--------------------------- AngularJS Routers ------------------------
Ref: https://www.w3schools.com/angular/tryit.asp?filename=try_ng_routing
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<body ng-app="myApp">
<p><a href="#/">Main</a></p>
<a href="#red">Red</a>
<a href="#green">Green</a>
<a href="#blue">Blue</a>
<div ng-view></div>
<script>
var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "main.htm"
    })
    .when("/red", {
        templateUrl : "red.htm"
    })
    .when("/green", {
        templateUrl : "green.htm"
    })
    .when("/blue", {
        templateUrl : "blue.htm"
    });
});
</script>
<p>Click on the links to navigate to "red.htm", "green.htm", "blue.htm", or back to "main.htm"</p>
</body>
</html>
-----------------------------------------------------------------------------
AngularJS routes are defined through the $routeProvider API. Routes are depen‐
dent on the ngRoute module,
http://localhost:8080/public_html/#!/ -> Hello World from Leaning AngularJS
http://localhost:8080/public_html/#!/show -> Show The World
As the user clicks on the different links, the value assigned to <div ng-view> is
replaced with the content of the associated template files. 
-------------------------- HTML5 Mode ----------------------------------
The last line in app.js "$locationProvider.html5Mode(false).hashPrefix('!');"
uses the locationProvider service.
This line of code turns off the HTML5 mode and turns on the hashbang mode of
AngularJS. If you were to turn on HTML5 mode instead by passing true, the applica‐
tion would use the HTML5 History API. HTML5 mode also gives the application
pretty URLs like /someAppName/blogPost/5 instead of the standard AngularJS URLs
like /someAppName/#!/blogPost/5 that use the #!, known as the hashbang
-------------------- p.24 AngularJS Templates ( VIEW）-----------------------
AngularJS partials, also called templates, are code sections that contain HTML code
that are bound to the <div ng-view></div></div> tag shown in the index.html file
AngularJS pulls in all the templates defined for
an application and builds the views in the document object model (DOM) for you.
－－－－－－－－－－－－－　AngularJS Models (MVC)　－－－－－－－－－－－－－－－－－
AngularJS has a $scope object that is
used to store the application model. Scopes are attached to the DOM. The way to
access the model is by using data properties assigned to the $scope object.
ex:The line $scope.message = "Hello World" in the
MainCtrl controller is used to create a property named message that is added to the
scope (which holds the model attributes).  We then use the double curly braces
markup ({{}}) inside the main.html template to gain access to and display the value
(scope properties) assigned to $scope.message: <div>{{message}}</div>
－－－－－－－－－－　AngularJS Controllers (MVC)－－－－－－－－－－　
The controller is where you should place all business logic specific to a particular view when
it’s not possible to place the logic inside a REST service. 
--------------- p.26 Controller Business Logic ---------------------
Two new controllers,MainCtrl and ShowCtrl, and attach them to the helloWorldController module.



