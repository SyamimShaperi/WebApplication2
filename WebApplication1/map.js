 function initMap() {
     var uluru = { lat: 4.885728, lng: 114.931669 };

     var amp = new google.maps.Map(document.getElementById('map'),
     {
         zoom: 19,
         center: uluru
     });

     var marker = new google.maps.Marker
     ({
         position: uluru,
         map: map
     });
 }




