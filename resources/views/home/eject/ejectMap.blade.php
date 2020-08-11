<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>地图</title>
</head>
<body>
<div id="map" style="width: 945px; height: 580px;">

</div>
</body>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.15&key=a9ef099582b8abffad85df7a65246f36&plugin=AMap.CitySearch"></script>
<script>
    var longitude = "{{$longitude}}";
    var latitude = "{{$latitude}}";
    var address = "{{$address}}";
    var map = new AMap.Map('map', {
        center:[longitude,latitude],
        zoom:16,
    });
    marker = new AMap.Marker({
        position: [longitude,latitude],
        offset: new AMap.Pixel(-13, -30)
    });

    marker.setMap(map);

    var infoWindow = new AMap.InfoWindow({
        anchor: 'top-left',
        content: address,
    });

    infoWindow.open(map,[longitude,latitude])

</script>
</html>