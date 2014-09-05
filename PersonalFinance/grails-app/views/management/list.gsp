<%@ page import="personalfinance.save.Management" %>
<!doctype html>
<html>
<head>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">

function calcChartVisualization(list,salary){
    
    var spentTotalCategory = 0;
    var data
    for (var k in list){
        spentTotalCategory += list[k];
    }
    
    if (spentTotalCategory >= salary){
     data  = google.visualization.arrayToDataTable([
            ['Category', 'Spent on salary'],
            ['Broked',     spentTotalCategory]
            ]);
    }

    else{
     var remain = salary - spentTotalCategory;
     data  = google.visualization.arrayToDataTable([
            ['Category', 'Spent on salary'],
            ['Health',     list["spentHelth"]],
            ['Education',     list["spentEducation"]],
            ['Movie',     list["spentMovie"]],
            ['Theater',     list["spentTheater"]],
            ['Remain',     remain]
            ]);

    }

    return data;
}

function convToHash(){

  var new_hash = {};
  new_hash["spentHelth"] = ${spent_list["spentHelth"]};
  new_hash["spentEducation"] = ${spent_list["spentEducation"]};
  new_hash["spentMovie"] = ${spent_list["spentMovie"]};
  new_hash["spentTheater"] = ${spent_list["spentTheater"]};
  return new_hash;
}


google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);
function drawChart() {

  var data = calcChartVisualization(convToHash(),3000);
  var options = {
title: 'My Daily Activities'
  };

  var chart = new google.visualization.PieChart(document.getElementById('piechart'));

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
      <th>Theater</th>
    </tr>    
    </thead>
    <tbody>
      <tr>
       <td>${spent_list["spentHelth"]}</td>
       <td>${spent_list["spentEducation"]}</td>
       <td>${spent_list["spentMovie"]}</td>
       <td>${spent_list["spentTheater"]}</td>
      </tr>
    </tbody>
    </table>



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

<gvisualization:apiImport/>
<div id="piechart" style="width: 900px; height: 500px;"></div>
</body>

</html>
