if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

$(document).ready(function(){

  $("label.buyMedicine").children("input[name=medicine]").click(function(){
   $("div.medicine").append('<table border=1 style="width:700px; margin-left:80px;" class = "spentMedicine" "> <tr><td><label for="valorGasto">Gastos</label></td>  <td><input type="number" name="valorGasto" value="" id="_valorGasto"></td></tr></table>');
  });

  $("label.dontBuyMedicine").children("input[name=medicine]").click(function(){
   $("table.spentMedicine").remove();
  });


  $("label.privateHospital").children("input[name=hospital]").click(function(){
   $("div.hospitalType").append('<table border=1 style="width:700px; margin-left:80px;" class = "hospitalSpent" "> <tr><td><label for="valorGasto">Valor da Consulta</label></td>  <td><input type="number" name="valorGasto" value="" id="_valorGasto"></td></tr></table>');
  });
  $("label.publicHospital").children("input[name=hospital]").click(function(){
   $("table.hospitalSpent").remove();
  });
});
