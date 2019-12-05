var Socket = new WebSocket('ws://' + window.location.hostname + '81');
Socket.onmessage = function (e) {
    var distancia = parseInt(e.data);
    drawDial(distancia, '#ff5600');
};

drawDial(0, '#ff5600');
function drawDial(distancia, color) {
    var dialCanv = document.getElementById('dial');
    var ctx = dialCanv.getContext("2d");
    dialCanv.height = dialCanv.offsetHeight * 2;
    dialCanv.width = dialCanv.offsetWidth * 2;
    var centerX = dialCanv.width / 2;
    var centerY = dialCanv.height / 2;
    ctx.beginPath();
    ctx.fillStyle = color;
    ctx.moveTo(centerX, centerY.height / 2);
    ctx.arc(centerX, centerY, centerY * 0.8, Math.PI * 1.5, (Math.PI * 2 * (porcentaje / 100)) + (Math.PI * 1.5), false);
    ctx.lineTo(centerX, centerY);
    ctx.fill();
    ctx.closePath();
    ctx.beginPath();
    ctx.fillStyle = "white";
    ctx.arc(centerX, centerY, centerY * 0.65, 0, Math.PI * 2, false);
    ctx.fill();
    ctx.closePath();
    ctx.font = "bold 90px sans-serif";
    ctx.fillStyle = color;
    ctx.textBaseline = "center";
    ctx.textAlign = "center";
    ctx.fillText(parseInt(distancia) + " cm", centerX, centerY * 1.1);
}