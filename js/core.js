/*  core.js
/   autor: freek van der wand
/   description: standard js-file
/   version history:
/   2013-06-04  basic setup
/	2013-06-06	added getData(), changed to api.php
*/

window.log=function(){  "use strict"; window.log.history=window.log.history||[];window.log.history.push(arguments);if(window.console){window.console.log(Array.prototype.slice.call(arguments));}};

(function($) {
	var ua, vp, ires, ores, ares, sres, ratio, pd;
	var hwm = "not defined",
		cha = "0",
		bat = "not supported",
		con = "not supported",
		browser = "",
		orientation = "";


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

		$('#submit').on('click', function() {	// submit button
			log("submit clicked");
			postData();
		});
		$('#getdata').on('click',function() {	// results button
			log("getData clicked");
			getData();
		});
		$('#refresh').on('click',function() {
			log("refresh clicked");
			var buffer = $('.result table tr:first-child').html();
			$('.result').slideUp('slow', function() {
				$('.result table').html('').append(buffer);
				getData();
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
		ratio = window.devicePixelRatio;	// Devices PixelRatio
		pd = window.screen.pixelDepth;	// "Display screen color resolution (bits per pixel)"

		// orientation
		if( window.innerWidth < window.innerHeight && window.screen.availWidth < window.screen.availHeight ) {
			$('.orientation select')[0].selectedIndex = 0;
		} else {
			$('.orientation select')[0].selectedIndex = 1;
		}

		if( navigator.battery ) bat = navigator.battery.charging + " - " + navigator.battery.level;	// battery chargin - battery level
		if( navigator.mozConnection ) con = navigator.mozConnection.bandwidth;	// connection bandwidth
	}
	// write into info section
	function writeInfo() {
		$('.useragent span').html( ua );
		$('.viewport span').html( vp );
		$('.innerresolution span').html( ires );
		$('.outerresolution span').html( ores );
		$('.availresolution span').html( ares );
		$('.resolution span').html( sres );
		$('.battery span').html( bat );
		$('.connection span').html( con );
		$('.pixelratio span').html( ratio );
		$('.pixeldepth span').html( pd );
	}
	// post data to DB
	function postData() {
		hwm = $('input[name="hw"]').val();	// Hardwaremodel
		browser = $('.browser select').val();	// Browser
		orientation = $('.orientation select').val();	// Orientation

		if($('input[name="charging"]')[0].checked)	// charging 1=true;0=false;
			cha = 1;
		$.post("api.php?f=post",{useragent: ua,viewport: vp, innerres: ires, outerres: ores, availres: ares, screenres: sres, hardware: hwm, charging: cha, battery: bat, connection: con, brow: browser, orient: orientation, pratio: ratio, pdepth: pd}, 
			function() {
			log("submit success function");
			$('#submit').off('click').addClass('disabled');
			$('input[name="hw"]').attr('disabled','disabled');
			$('input[name="charging"]').attr('disabled','disabled');
			$('.browser select').attr('disabled','disabled');
			$('.orientation select').attr('disabled','disabled');
		});
	}
	// get data from DB
	function getData() {
		$.ajax({
			url: 'api.php',
			data: "f=get",
			dataType: 'json',
			success: function(data) {
				log("ajax.success");
				for(var obj in data) {
					var entry = data[obj];
					$('.result table').append(
						"<tr>"+
							"<td>"+entry[0]+"</td>"+
							"<td>"+entry[10]+"</td>"+
							"<td>"+entry[12]+"</td>"+
							"<td>"+entry[13]+"</td>"+
							"<td>"+entry[2]+"</td>"+
							"<td>"+entry[4]+"</td>"+
							"<td>"+entry[5]+"</td>"+
							"<td>"+entry[6]+"</td>"+
							"<td>"+entry[7]+"</td>"+
							"<td>"+entry[14]+"</td>"+
							"<td>"+entry[15]+"</td>"+
							"<td>"+entry[8]+"</td>"+
							"<td>"+entry[9]+"</td>"+
							"<td>"+entry[1]+"</td>"+
							"<td>"+entry[3]+"</td>"+
							"<td>"+entry[11]+"</td>"+
						"</tr>"
						);
					$('.result').delay(250).slideDown('slow');
					$('#getdata').off('click').addClass('disabled');
				}
			}
		});
	}
}(jQuery));