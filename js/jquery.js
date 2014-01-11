
/*
* Delete Index.php for other system
*/
function loadProvince(){
	var coddep  =$('#departamento').val();
	$.getJSON('http://localhost/biscarra/show/provincias?',{id:coddep}, function(resp){
		$('#sProv').empty();
		$.each(resp,function(pid,title){
			option = $('<option></option>',{
				value: pid,
				text: title,
			});
			$('#sProv').append(option);
		});	
	});
}
function loadDistrito(){
	var codprov  =$('#provincias').val();
	
	$.getJSON('http://localhost/vivirahi/distritoc/getToSelect',{id:codprov}, function(resp){
		$('#distritos').empty();
		$.each(resp,function(pid,nombre){
			option = $('<option></option>',{
				value: pid,
				text: nombre
			});
			$('#distritos').append(option);
		});	
	});
}