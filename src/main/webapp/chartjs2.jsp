<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chartjs2</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
</head>
<body>
	<div style="width: 100%;">
		<canvas id="canvas"></canvas>
	</div>

	<script>

	new Chart(document.getElementById("canvas"), {
	    type: 'line',
	    data: {
	        labels: ['1', '2', '3', '4', '5', '6', '7'],
	        datasets: [{
	            label: '테스트 데이터셋',
	            data: [
	                10,
	                3,
	                30,
	                23,
	                10,
	                5,
	                50
	            ],
	            borderColor: "rgba(255, 201, 14, 1)",
	            backgroundColor: "rgba(255, 201, 14, 0.5)",
	            fill: false,
	            lineTension: 0
	        },{
	            label: '데이터셋2',
	            pointRadius: 1,
	            data: [
	                3,
	                10,
	                10,
	                13,
	                30,
	                2,
	                30
	            ],
	            borderColor: "rgba(0, 141, 185, 1)",
	            backgroundColor: "rgba(0, 141, 185, 0.5)",
	            fill: false,
	            lineTension: 0
	        }]
	    },
	    options: {
	        responsive: true,
	        title: {
	            display: true,
	            text: '라인 차트 테스트'
	        },
	        tooltips: {
	            mode: 'index',
	            intersect: false,
	        },
	        hover: {
	            mode: 'nearest',
	            intersect: true
	        },
	        scales: {
	            xAxes: [{
	                display: true,
	                scaleLabel: {
	                    display: true,
	                    labelString: 'x축'
	                }
	            }],
	            yAxes: [{
	                display: true,
	                ticks: {
	                    suggestedMin: 0,
	                },
	                scaleLabel: {
	                    display: true,
	                    labelString: 'y축'
	                }
	            }]
	        }
	    }
	});


	</script>
</body>
</html>