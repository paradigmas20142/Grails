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
  
$("label.creditcard").children("input[name=forPayment]").click(function(){
  alert("entrou");
  $.ajaxSetup({url:"cartao.gsp",async:false,sucess:function(result){
    $("div.payment").html(result);
  }});
  $.ajax();
  });

  $("label.buyMedicine").children("input[name=medicine]").click(function(){
   $("div.medicine").append('<table border=1 style="width:700px; margin-left:80px;" class = "spentOnMedicine" "> <tr><td><label for="valorGasto">Gastos</label></td>  <td><input type="number" name="spentOnMedicine" value="spentOnMedicine" id="_valorGasto"></td></tr></table>');
  });

  $("label.dontBuyMedicine").children("input[name=medicine]").click(function(){
   $("table.spentMedicine").remove();
  });


  $("label.privateHospital").children("input[name=hospitalType]").click(function(){
   $("div.hospitalType").append('<table border=1 style="width:700px; margin-left:80px;" class = "hospitalSpent" "> <tr><td><label for="valorGasto">Valor da Consulta</label></td>  <td><input type="number" name="spentOnConsult" value="" id="_valorGasto"></td></tr></table>');
  });
  $("label.publicHospital").children("input[name=tipoHospital]").click(function(){
   $("table.hospitalSpent").remove();
  });
});

