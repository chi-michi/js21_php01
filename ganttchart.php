
<html>
<head>
<h1>家事スケジュール</h1>


<!-- DB接続処理 -->
<?php
try {
    $db = new PDO('mysql:dbname=HWgantt;host=127.0.0.1;charset=utf8',
    'root', 'root');
}catch(PDOException $e){
    echo 'DB接続エラー： '. $e->getMessage();

}
// <!-- DB接続処理以上 -->

$records = $db ->query('SELECT * FROM Items');
while ($record = $records->fetch()){
    echo($record['housework'] . $record['charge'] . $record['stime']. "〜" . $record['ftime'] . "<br/>\n");
}

?>

<!-- ---トライアルの跡----授業後にどうやって対処すれば良いか質問させてください… -->
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load('current', {'packages':['gantt']});
    google.charts.setOnLoadCallback(drawChart);

    function daysToMilliseconds(days) {
      return days * 24 * 60 * 60 * 1000;
    }

    function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Task ID');
      data.addColumn('string', 'Task Name');
      data.addColumn('date', 'Start time');
      data.addColumn('date', 'End time');
      data.addColumn('number', 'Duration');
      data.addColumn('number', 'Percent Complete');
      data.addColumn('string', 'Dependencies');

      data.addRows([
       <?php
        global $ConnectingDB;
        $sql = "SELECT * FROM Items";
        $stmt = mysqli_query($ConnectingDB, $sql);
        while($datarows =  mysqli_fetch_assoc($stmt)){
            echo "['". $datarows['id']. " ','". $datarows['housework']. "', '".$record['sdate']."', '" . $record['fdate'] ."' , 'null' , 'null','" .$datarows['charge']."' ]";   
    }
    ?>
      ]);

      var options = {
        height: 400
      };

      var chart = new google.visualization.Gantt(document.getElementById('chart_div'));

      chart.draw(data, options);
    }
  </script>
</head>
<body>
  <div id="chart_div"></div>
</body>
</html>

<a href="input_ganttchart.html">入力画面に戻る</a>

