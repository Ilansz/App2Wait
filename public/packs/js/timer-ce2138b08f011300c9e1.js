/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/timer.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/timer.js":
/*!***************************************!*\
  !*** ./app/javascript/packs/timer.js ***!
  \***************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _plugins_timer__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../plugins/timer */ "./app/javascript/plugins/timer.js");

Object(_plugins_timer__WEBPACK_IMPORTED_MODULE_0__["enableTime"])();

/***/ }),

/***/ "./app/javascript/plugins/timer.js":
/*!*****************************************!*\
  !*** ./app/javascript/plugins/timer.js ***!
  \*****************************************/
/*! exports provided: enableTime */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "enableTime", function() { return enableTime; });
var enableTime = function enableTime() {
  var firstTime = document.querySelector('#first-level');
  var secondTime = document.querySelector('#second-level');
  var lastTime = document.querySelector('#last-level');
  var enable = document.querySelector('#enable');
  var firsttimer = document.querySelector('.firsttimer');
  var secondtimer = document.querySelector('.secondtimer');
  var lasttimer = document.querySelector('.lasttimer');

  var firstChTime = function firstChTime(firstTime, showDiv) {
    var finishTime = new Date(Date.parse(firstTime.dataset.finishTime));
    var finishSecs = finishTime.getSeconds() + finishTime.getMinutes() * 60 + finishTime.getHours() * 3600;
    setInterval(function () {
      var now = new Date(Date.now());
      var beginSecs = now.getMinutes() * 60 + now.getHours() * 3600 + now.getSeconds(); // 1. get minutes in seconds () and get seoncds
      // 2. subtract finish from begin
      // 3. convert back to mins and seconds

      var difference = finishSecs - beginSecs;
      var diffMin = Math.floor(difference / 60);
      var diffSec = difference % 60;
      showDiv.innerHTML = "".concat(diffMin, ":").concat(diffSec);

      if (difference < 1) {
        firstTime.classList.remove('disabled');
        showDiv.classList.add('d-none');
        firstTime.classList.add('bg-success');
      }

      ;
    }, 1000);
  };

  firstChTime(firstTime, firsttimer);
  firstChTime(secondTime, secondtimer);
  firstChTime(lastTime, lasttimer);
};

 // 1. get time of click
// 2. 3 different variables with  added relevant time (5, 15, 30 min)
// 3. 1 sec interval for clock.
// 4. compare future(challenge finish time) and current time
// 5. and trigger class remove/ add for disabled finished challenge
// 6. display clock in nice way
// 7. 2 different times -> challenge finish time, current countdown
//    ---> subtract future millis from current millis
//    ---> configure back to mins / seconds
// 8. remove interval once time finished

/***/ })

/******/ });
//# sourceMappingURL=timer-ce2138b08f011300c9e1.js.map