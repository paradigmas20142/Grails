<%@ page import="personalfinance.save.Management" %>
<!doctype html>
<html>
<head>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);
function drawChart() {
  alert(${spent_list["spentHelth"]});
  var data = google.visualization.arrayToDataTable([
      ['Task', 'Days per Month'],
      ['Work',     11],
      ['Eat',      2],
      ['Commute',  2],
      ['Watch TV', 2],
      ['Sleep',    1000]
      ]);

  var options = {
title: 'My current spents',
       is3D: true,
  };

  var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
  chart.draw(data, options);
}
</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'management.label', default: 'Management')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>


<table class = "table">
  <thead>
    <tr>
      </tr>
      <tr>
      <th>Health</th>
      <th>Education</th>
      <th>Movie</th>
    </tr>    
    </thead>
    <tbody>
      <tr>
       <td>${spent_list["spentHelth"]}</td>
       <td>${spent_list["spentEducation"]}</td>
       <td>${spent_list["spentMovie"]}</td>
      </tr>
    </tbody>
    </table>

<gvisualization:apiImport/>

<div id="piechart_3d" style="width: 900px; height: 500px;"></div>

		<g:each in="${managementInstanceList}" status="i" var="managementInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${managementInstanceTotal}" />
	</div>
</section>

</body>

</html>
