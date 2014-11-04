$(document).ready(function() {
	//console.log("Document is ready");
	$( "#datepicker" ).datepicker({ dateFormat: "m/d/yy" });
	
	$("#customer-index-table").tablesorter({
		theme: 'bootstrap',
		initWidgets: true,
		widgets: ['uitheme'],
		widgetOptions: { uitheme: 'bootstrap' },
		headerTemplate: '{content}{icon}',
		sortList: [[0,0]],	// Default ascending sort on 'NAME' column
		headers: {	// Disable sort on 'Detail', 'Edit' and 'Delete' columns
				2: { sorter: false },
				3: { sorter: false },
				4: { sorter: false }
		}
	})
	.tablesorterPager({
		container: $("#customer-pager")}
	);
	
	$("#user-index-table").tablesorter({
		theme: 'bootstrap',
		initWidgets: true,
		widgets: ['uitheme'],
		widgetOptions: { uitheme: 'bootstrap' },
		headerTemplate: '{content}{icon}',
		sortList: [[0,0]],	// Default ascending sort on 'NAME' column
		headers: {	// Disable sort on 'Show', 'Edit' and 'Delete' columns
				2: { sorter: false },
				3: { sorter: false },
				4: { sorter: false }
		}
	});
	
	$("#order-index-table").tablesorter({
		theme: 'bootstrap',
		initWidgets: true,
		widgets: ['uitheme'],
		widgetOptions: { uitheme: 'bootstrap' },
		headerTemplate: '{content}{icon}',
		sortList: [[0,0]],	// Default ascending sort on 'NAME' column
		headers: {	// Disable sort on 'Show', 'Edit' and 'Delete' columns
				2: { sorter: false },
				3: { sorter: false },
				4: { sorter: false }
		}
	});
	
	$("#product-index-table")
	.tablesorter({
		theme: 'bootstrap',
		initWidgets: true,
		widgets: ['uitheme'],
		widgetOptions: { uitheme: 'bootstrap' },
		headerTemplate: '{content}{icon}',
		sortList: [[0,0]],	// Default ascending sort on 'NAME' column
		headers: {	// Disable sort on 'Show', 'Edit' and 'Delete' columns
				1: { sorter: false },
				4: { sorter: false },
				5: { sorter: false },
				6: { sorter: false },
				7: { sorter: false }
		}
	})
	.tablesorterPager({
		container: $("#product-pager")}
	);
	
	$("#lineitem-index-table").tablesorter({
		theme: 'bootstrap',
		initWidgets: true,
		widgets: ['uitheme'],
		widgetOptions: { uitheme: 'bootstrap' },
		headerTemplate: '{content}{icon}',
		sortList: [[0,0]],	// Default ascending sort on 'NAME' column
		headers: {	// Disable sort on 'Edit' and 'Delete' columns
				6: { sorter: false },
				7: { sorter: false }
		}
	});
})
