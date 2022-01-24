window.onload = function(){
    geoloc();
    coordenadas3();
    // coordenadas2();
  }

  function geoloc() {
      d=document.getElementById("demo");
      if (navigator.geolocation){
    //   d.innerHTML="<p>Tu dispositivo soporta la geolocalización.</p>";
    //   navigator.geolocation.getCurrentPosition(showPosition);
      }
      else {
      d.innerHTML="<p>Lo sentimos, tu dispositivo no admite la geolocalización.</p>";
      }
  }

    function coordenadas3(x, y){
        // var osm = L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png');
        // L.map('map', { center: [x, y], zoom: 17, layers: osm});  
    
        var mapsipe = L.map('map').setView([37.627649, -3.539246], 18);
        L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
              attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> ', maxZoom: 18 }).addTo(mapsipe);
        var marker = L.marker([37.628152, -3.538855]).addTo(mapsipe);
        marker.bindPopup("<b>Hola!</b><br>Aqui nos puedes encontrar.").openPopup();      
    }
  
    function coordenadas2(){
        var mapsipe2 = L.map('demo').setView([37.627665, -3.538924], 18);
        L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> ', maxZoom: 20 }).addTo(mapsipe2);
      
        var circle = L.circle([37.627991, -3.538721], {
            color: 'red',
            fillColor: '#f03',
            fillOpacity: 0.5,
            radius: 80
          }).addTo(mapsipe2);
          circle.bindPopup("Arbuniel y su entorno");
    
    }