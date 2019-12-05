var map = L.map('map').setView([-33.5950393, -70.6020191], 6);
L.titleLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}', {
    maxZoom: 20
}).addTo(map);