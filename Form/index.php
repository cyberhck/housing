<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<link rel="stylesheet" type="text/css" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?libraries=places"></script>
		<!--<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>-->
		<script>

			function initialize () {
				window.value1={};
				var input1=(document.getElementById('area1'));
				var input2=(document.getElementById('area2'));
				var input3=(document.getElementById('area3'));

				var autocomplete1=new google.maps.places.Autocomplete(input1);
				var autocomplete2=new google.maps.places.Autocomplete(input2);
				var autocomplete3=new google.maps.places.Autocomplete(input3);

				google.maps.event.addListener(autocomplete1,'place_changed',function(){
					var place=autocomplete1.getPlace();
					window.value1.place1=place.geometry.location;
				});
				google.maps.event.addListener(autocomplete2,'place_changed',function(){
					var place=autocomplete2.getPlace();
					window.value1.place2=place.geometry.location;
				});
				google.maps.event.addListener(autocomplete3,'place_changed',function(){
					var place=autocomplete3.getPlace();
					window.value1.place3=place.geometry.location;
					findCentroid(window.value1);
				});


			}
			function findCentroid(cords){
				d1=cords.place1.D;
				d2=cords.place2.D;
				d3=cords.place3.D;

				k1=cords.place1.k;
				k2=cords.place2.k;
				k3=cords.place3.k;
				d=(d1+d2+d3)/3;
				k=(k1+k2+k3)/3;
				document.getElementById("lat").value=d;
				document.getElementById("lon").value=k;
				geocoder = new google.maps.Geocoder();
				lon=k;
				lat=d;
				var latlng=new google.maps.LatLng(lon,lat);
				geocoder.geocode({'latLng': latlng},function(results,status){
					console.log(results[0].formatted_address);
					document.getElementById("address").value=results[0].formatted_address;
				});
			}
			google.maps.event.addDomListener(window,'load',initialize);
		</script>
		
	</head>
	<body>
		<div class="container">

			<div class="main">
				<form class="cbp-mc-form" action="/Analysis/analysis.php" method="get" >
					<div class="cbp-mc-column">
						<label for="area1">Area 1</label>
	  					<input type="text" id="area1" name="area1">
	  					<label for="area2">Area 2</label>
	  					<input type="text" id="area2" name="area2">
	  					<label for="area3">Area 3</label>
	  					<input type="text" id="area3" name="area3">
	  					<input type="hidden" name="lat" id="lat" />
	  					<input type="hidden" name="lon" id="lon">
	  					<input type="hidden" name="address" id="address">
	  				</div>
	  				<div class="cbp-mc-submit-wrap"><input class="cbp-mc-submit" type="submit" value="Next >>" /></div>
				</form>
			</div>
		</div>
	</body>
</html>
