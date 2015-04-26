<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sample Trends API</title>
	<?php if(isset($_GET['address'])){
		?>
			<script type="text/javascript" src="//www.google.com/trends/embed.js?hl=en-US&q=<?php echo $_GET['address']; ?>&tz&content=1&cid=TIMESERIES_GRAPH_0&export=5&w=500&h=330"></script>

		<?php
	} ?>
</head>

<body>
	<form action="" method="get">
		<input type="text" name="address" id="address">
		<input type="submit" value="Go" onclick="return func()">
	</form>

</body>
</html>