<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<canvas id=chart-area></canvas>
</body>
<script>



var ctx = document.getElementById("chart-area").getContext("2d");
var myPie = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["FAISAL","muhammadfaisali","faisaliqbal3699"],
    datasets: [{
      backgroundColor: ["#00b638","#efaa30","#50c8ea"],
      data: [500000, 75000, 100000]
    }],
  },
  options: {
    title: {
      display: true,
      text: 'Employee Overview',
      fontStyle: 'bold',
      fontSize: 20
    },
    tooltips: {
      callbacks: {
        // this callback is used to create the tooltip label
        label: function(tooltipItem, data) {
          // get the data label and data value to display
          // convert the data value to local string so it uses a comma seperated number
          var dataLabel = data.labels[tooltipItem.index];
          var value = ': ' + data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index].toLocaleString();

          // make this isn't a multi-line label (e.g. [["label 1 - line 1, "line 2, ], [etc...]])
          if (Chart.helpers.isArray(dataLabel)) {
            // show value on first line of multiline label
            // need to clone because we are changing the value
            dataLabel = dataLabel.slice();
            dataLabel[0] += value;
          } else {
            dataLabel += value;
          }

          // return the text to display on the tooltip
          return dataLabel;
        }
      }
    }
  }
});


/*    
new Chart(document.getElementById("clientChart"), {
type: 'doughnut',
data: {
  labels: ["예금", "펀드", "랩어카운트", "주식", "채권"],
  datasets: [
    {
      label: "${userVO.username} 고객님의 자산 보유 현황",
      backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
      data: [deposit,fund,wrap,stock,bond]
    }
  ]
},
options: {
  title: {
    display: true,
    text: '${userVO.username} 고객님의 자산 보유 현황'
  }
}
}); */
















</script>
</html>