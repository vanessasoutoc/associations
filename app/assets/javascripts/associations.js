$(document).ready(function() {
	//console.log("Document is ready");
	$( "#datepicker" ).datepicker({ dateFormat: "m/d/yy" });
	
	$("#customer-index-table").tablesorter({
		theme: 'bootstrap',
		headerTemplate: '{content}{icon}',
		widgets: ['uitheme'],
		sortList: [[0,0]]
	 });
})
