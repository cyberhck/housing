<?php $address=$_GET['address']; ?>
<?php
  require_once("../config.php");
  $lat=$_GET['lat'];
  $lon=$_GET['lon'];
  $sql="SELECT sqrt((lat-$lat)*(lat-$lat)+(lon-$lon)*(lon-$lon)) as distance,id,name,lat,lon FROM property ORDER BY distance;";
  $con=mysql_connect($DB_HOST,$DB_USER,$DB_PASS);
  mysql_select_db($DB_NAME);
  $query=mysql_query($sql);
  $data=mysql_fetch_object($query);
  $id=$data->id;
  $property_display=$id;
  $sql="SELECT * FROM prices WHERE property_id=$id;";
  $query=mysql_query($sql);
  $a=array();
  $i=0;
  while($data=mysql_fetch_object($query)){
    $a[$i]='[new Date("'.$data->time.'"),'.$data->price.']';
      // $a[$i]=$a[$i].'"),'.$data->price.']';
      $i++;
  }
  $b=implode(",\n", $a);
  //echo "<pre>";
  //die(var_dump($b));
?>
<main>
<script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1','packages':['annotationchart']}]}"></script>
<link rel="stylesheet" type="text/css" href="style.css" />

<script type='text/javascript'>
      google.load('visualization', '1', {'packages':['annotationchart']});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var dataTable= new google.visualization.DataTable();
        dataTable.addColumn('datetime', 'Time');
        dataTable.addColumn('number', 'Price');
        dataTable.addRows([
         <?php echo $b; ?>
      ]);

       // For some reason, it doesn't work correctly
       var formatter = new google.visualization.DateFormat({pattern: 'dd:MM:YYYY'});
        //formatter.format(dataTable, 0);

        // Create and draw the visualization.
         var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
      chart.draw(dataTable, {curveType: "function"});   
      }
    </script>

<header></header>

<section class="card">
	
  <h1>Property recomendation</h1>
  <h3><strong><?php echo $address; ?></strong></h3>
</section>

<section class="card">
  <h1><strong>Appreciation Rate</strong></h1>
  <div id="chart_div" style='width: 100%; height: 500px;'></div>
  	
  </iframe>

  <h1><strong>Trending</strong></h1>
	<iframe width="960" height="400" src="//www.google.com/trends/fetchComponent?hl=en-US&q=<?php echo $address; ?>&tz&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330" style="border: none;"></iframe>
  <p class="expert" style="font-weight:bold;margin-bottom:20px;">
  <?php
  $id=$property_display;


  require_once("../alchemy.php");
  $sql="SELECT * FROM reviews WHERE property=$id AND isExpert=1;";
  $query=mysql_query($sql,$con);
  $data=mysql_fetch_object($query) or die(mysql_error());

  echo $data->message."<br>";
  require_once("../alchemy.php");
  $alchemyapi = new AlchemyAPI();
  




  $response = $alchemyapi->keywords('text',$data->message, array('sentiment'=>1));
  

  var_dump($response);
   ?></p>
  <p class="users"><?php $id=$property_display;
  $sql="SELECT * FROM reviews WHERE property=$id AND isExpert=0;";
  $query=mysql_query($sql,$con);
  $text="";
  while($data=mysql_fetch_object($query)){
    $text=$text."<br>".$data->message;
  }
  echo $text."<br>";
  $response = $alchemyapi->keywords('text',$text, array('sentiment'=>1));
  var_dump($response);





   ?></p>
</section>

<?php
  $sql="SELECT sqrt((lat-$lat)*(lat-$lat)+(lon-$lon)*(lon-$lon)) as distance,id,name,lat,lon,soilQuality,calamities FROM property ORDER BY distance;";
  $query=mysql_query($sql);
  while($data=mysql_fetch_object($query)){
    ?>
<section class="card">
  <img src="http://lorempixel.com/g/800/300/city?id=<?php echo rand(); ?>" alt="">
  <h1><?php echo $data->name; ?></h1>
  <h2><?php echo $data->soilQuality; ?> soil</h2>
  <h2>Prone to calamities: <?php echo ($data->calamities)?"Yes":"No"; ?></h2>

    <?php $id=$data->id;
    $sql1="SELECT * FROM reviews WHERE property=$id AND isExpert=1;";
    $query1=mysql_query($sql1);
    $data1=mysql_fetch_object($query1);
    echo "Rated:".$data1->rating." ";
    if($data1->isConflict){
      echo "with disputes";
    }else{
      echo "without disputes";
    }
     ?>

  <p class="expert">
    <!-- get expert reviews on the property, print the keywords -->
    <?php
    $text=$data1->message;
//    $response = $alchemyapi->keywords('text',$text, array('sentiment'=>1));

    //if ($response['status'] == 'OK') {
    //foreach ($response['keywords'] as $keyword) {
    //  echo 'keyword: ', $keyword['text'], "<br>";
    //}
    //} else {
    //  echo 'Error in the keyword extraction call: ', $response['statusInfo'];
    //}
    echo $text;


     ?>
  </p>
  <p class="users">
    <!-- get list of users review on property, print the keywords -->
  </p>
</section>
    <?php
  }
?>

  
</main>
