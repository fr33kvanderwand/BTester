/*  core.js
/   autor: freek van der wand
/   description: standard js-file
/   version history:
/   2013-06-04  basic setup
*/

window.log=function(){  "use strict"; window.log.history=window.log.history||[];window.log.history.push(arguments);if(window.console){window.console.log(Array.prototype.slice.call(arguments));}};

(function($) {
	var ua, vp, ires, ores, ares, sres;
	var hwm = "not defined",
		cha = "not defined",
		bat = "not supported",
		con = "not supported";

	// document ready
	$(document).ready(function() {
		if( BrowserDetect.browser != "Explorer")	// IE doesn't support console.log
			console.log("document.ready core.js");
		initPage();
		initListeners();
	});

	// initalize page
	function initPage() {
		// ToDo: implement page initalization
		log("initPage");

		getInfo();
		writeInfo();
	}

	// initalize listeners
	function initListeners() {
		// ToDo: implement Event-Listeners
		log("initListeners");

		$('#submit').on('click', function() {
			log("submit clicked");
			hwm = $('input[name="hw"]').val();	// Hardwaremodel
			cha = $('input[name="charging"]')[0].checked;


			$.post("submit.php",{useragent: ua,viewport: vp, innerres: ires, outerres: ores, availres: ares, screenres: sres, hardware: hwm, charging: cha, battery: bat, connection: con}, 
				function() {
					log("submit success function");
					$('#submit').off('click').addClass('disabled');
					$('input[name="hw"]').attr('disabled','disabled');
					$('input[name="charging"]').attr('disabled','disabled');
				});
		});
	}

	// initalize info section
	function getInfo() {
		ua = navigator.userAgent;	// user agent
		vp = $("meta[name=viewport]").attr('content');	// viewport
		ires = window.innerWidth + "x" + window.innerHeight;	// inner Resolution
		ores = window.outerWidth + "x" + window.outerHeight;	// outer Resolution
		ares = window.screen.availWidth + "x" + window.screen.availHeight;	//available Resolution
		sres = window.screen.width + "x" + window.screen.height;	// screen Resolution

		if( navigator.battery ) bat = navigator.battery.charging + " - " + navigator.battery.level;	// battery chargin - battery level
		if( navigator.mozConnection ) con = navigator.mozConnection.bandwidth;	// connection bandwidth
	}
	// write into info sectin
	function writeInfo() {
		$('.useragent span').html( ua );
		$('.viewport span').html( vp );
		$('.innerresolution span').html( ires );
		$('.outerresolution span').html( ores );
		$('.availresolution span').html( ares );
		$('.resolution span').html( sres );
		$('.battery span').html( bat );
		$('.connection span').html( con );
	}
}(jQuery));