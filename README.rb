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