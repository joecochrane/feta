$(document).ready(function() {
	$.ajaxSetup({cache: false });
	$('#header').css("background", "#88DD88")
	var d0 = [];var d1 = [];var d2 = [];var d3 = [];
	var legendprice	= [];
	leng = $('#leng').text();
	for (i=0; i<leng; i++) {
		price = $('#cprice_' + i).text();
		
		ps = price.split(',');
		legendprice[i] = ps[0];
		date = $('#ctime_' + i).text();
		ds = date.split(',');
		
		for (j=0; j<ds.length; j++) {
			if (i == 0) {d0.push([ds[j]+'000', ps[j]]) ;  }
			if (i == 1) {d1.push([ds[j]+'000', ps[j]])  ;  }
			if (i == 2) {d2.push([ds[j]+'000', ps[j]])  ;  }
			
		}			
		
	}

		var options = {
					lines: { show: true, steps: true },
					points: { show: true },
					colors: ["#0000FF","#00FF00","#FF0000"] ,			
					xaxis: {mode: "time",ticks: 3,
				 timeformat: "%m/%d"},
				yaxis: {},
				legend: { position: 'nw' }
    };	 
			$.plot($("#chart1"), [ { data: d0, label: $('#company_0').text() + ' ' + legendprice[0] },
									{ data: d1, label: $('#company_1').text() + ' ' + legendprice[1] },
									{ data: d2, label: $('#company_2').text() + ' ' + legendprice[2] },
									
								
								], options );		 			 
		
	})
