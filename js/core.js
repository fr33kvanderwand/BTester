/*  core.js
/   autor: freek van der wand
/   description: standard js-file
/   version history:
/   2013-06-04  basic setup
/	2013-06-06	added getData(), changed to api.php
*/

window.log=function(){  "use strict"; window.log.history=window.log.history||[];window.log.history.push(arguments);if(window.console){window.console.log(Array.prototype.slice.call(arguments));}};

(function($) {
	var testid = {	// id from resolutions-table
		id : 0
	};
	var resolutions = {	// resolution info
		orientation : null,
		inner : 
			{
				width : null,
				height : null
			},
		outer :
			{
				width : null,
				height : null
			},
		available : 
			{
				width : null,
				height : null
			},
		screen : 
			{
				width : null,
				height : null
			}
	}
	var dpi = {	// dpi info
		ratio : null,
		pixel : null,
		color : null
	}
	var client =  {	// client info
		ua : null,
		browser : null,
		manufacturer : null,
		model : null
	}

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

		// make th visibly clickable
		$('.result table th[rel]').addClass('clickable');
	}
	// initalize listeners
	function initListeners() {
		// ToDo: implement Event-Listeners
		log("initListeners");

		$('#submit').on('click', function() {	// submit button
			log("submit clicked");
			postData();
		});
		$('#refresh').on('click',function() {
			log("refresh clicked");
			getInfo();
			writeInfo();
		});
		$('#getdata').on('click',function() {	// results button
			log("getData clicked");
			getData('time');
		});
		$('#reload').on('click',function() {
			log("reload clicked");
			reloadData();
		});
		$('.result table th[rel]').on('click',function() {
			log("th clicked");
			reloadData( $(this).attr('rel') );
		});
	}

	// reloads data from DB
	function reloadData(order) {
		// var buffer = $('.result table tr:first-child');
		$('.result').slideUp('slow', function() {
			log("slied up finihed");
			$('.result table tbody').html('');
			console.log(order);
			if(order != null)
				getData(order);
			else
				getData('time');
		});
	}
	// initalize info section
	function getInfo() {
		resolutions.inner.width = window.innerWidth;
		resolutions.inner.height = window.innerHeight;
		resolutions.outer.width = window.outerWidth;
		resolutions.outer.height = window.outerHeight;
		resolutions.available.width = window.screen.availWidth;
		resolutions.available.height = window.screen.availHeight;
		resolutions.screen.width = window.screen.width;
		resolutions.screen.height = window.screen.height;

		dpi.ratio = window.devicePixelRatio;
		dpi.pixel = window.screen.pixelDepth;
		dpi.color = window.screen.colorDepth;

		client.ua = navigator.userAgent;

		// determ orientation
		if(resolutions.inner.width < resolutions.inner.height && resolutions.screen.width < resolutions.screen.height)
			$('.orientation select')[0].selectedIndex = 0;
		else 
			$('.orientation select')[0].selectedIndex = 1;
	}
	// write into info section
	function writeInfo() {
		$('.useragent span').html( client.ua );
		$('.innerresolution span').html( resolutions.inner.width +" x "+resolutions.inner.height );
		$('.outerresolution span').html( resolutions.outer.width +" x "+resolutions.outer.height );
		$('.availresolution span').html( resolutions.available.width +" x "+resolutions.available.height );
		$('.screenresolution span').html( resolutions.screen.width +" x "+resolutions.screen.height );
		$('.pixelratio span').html( dpi.ratio );
		$('.pixeldepth span').html( dpi.pixel );
		$('.colordepth span').html( dpi.color );
	}
	// post data to DB
	function postData() {
		client.model = $('input[name="model"]').val();
		client.manufacturer = $('.manufacturer select').val();
		client.browser = $('.browser select').val();
		resolutions.orientation = $('.orientation select').val();

		$.post("api.php?f=post&i="+testid.id,
			{ manufacturer: client.manufacturer, model: client.model, ua: client.ua, browser: client.browser,
			o: resolutions.orientation, 
			iw: resolutions.inner.width, ih: resolutions.inner.height,
			ow: resolutions.outer.width, oh: resolutions.outer.height,
			aw: resolutions.available.width, ah: resolutions.available.height,
			sw: resolutions.available.width, sh: resolutions.available.height,
			ratio: dpi.ratio, pixeldepth: dpi.pixel, colordepth: dpi.color  }, 
			function(data) {
			log("submit success function");
			testid = JSON.parse(data);
		});
	}
	// get data from DB
	function getData(order) {
		$.ajax({
			url: 'api.php',
			data: "f=get&o="+order,
			dataType: 'json',
			success: function(data) {
				log("ajax.success");
				for(var obj in data) {
					var entry = data[obj];
					$('.result table').append(
						"<tr>"+
							"<td>"+entry[10]+"</td>"+
							"<td>"+entry[11]+"</td>"+
							"<td>"+entry[12]+"</td>"+
							"<td>"+entry[13]+"</td>"+
							"<td>"+entry[1]+"</td>"+
							"<td>"+entry[14]+"</td>"+
							"<td>"+entry[15]+"</td>"+
							"<td>"+entry[16]+"</td>"+
							"<td>"+entry[2]+" x "+entry[3]+"</td>"+
							"<td>"+entry[4]+" x "+entry[5]+"</td>"+
							"<td>"+entry[6]+" x "+entry[7]+"</td>"+
							"<td>"+entry[8]+" x "+entry[9]+"</td>"+
							"<td>"+entry[0]+"</td>"+
						"</tr>"
						);
				}
				$('.result').delay(250).slideDown('slow');
				$('#getdata').off('click').addClass('disabled');
				log("getDatad finished");
			}
		});
	}
}(jQuery));