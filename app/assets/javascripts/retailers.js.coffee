$(document).ready ->
  if $('.retailers.show').length
    initializeMap = ->
      $events = $('#map-canvas').data('events')
      heatMapData = []
      for index,countLatLong of $events
        heatMapData.push {
          location: new (google.maps.LatLng)(countLatLong[1], countLatLong[2])
          weight: countLatLong[0]
        }
      denver = new (google.maps.LatLng)(39.7391536, -104.9847034)
      map = new (google.maps.Map)(document.getElementById('map-canvas'),
        center: denver
        zoom: 10
        mapTypeId: google.maps.MapTypeId.HYBRID)
      heatmap = new (google.maps.visualization.HeatmapLayer)(data: heatMapData)
      heatmap.setMap map

    google.maps.event.addDomListener window, 'load', initializeMap
