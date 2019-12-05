<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="time1.aspx.cs" Inherits="Prueba5.time1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <script type="text/javascript">
        var cronometro;
        var pesos;

        function detenerse() {
            clearInterval(cronometro);

        }
     
        function carga() {
            contador_s = 0;
            contador_m = 0;
            contador_h = 0;
            contador_p = 0;
            
            s = document.getElementById("segundos");
            m = document.getElementById("minutos");
            h = document.getElementById("horas");
            p = document.getElementById("pesos");

            cronometro = setInterval(
                function () {
                    if (contador_s == 60) {
                        contador_s = 0;
                        contador_m++;
                        contador_p = contador_p + 5;//relaccionado al mall
                        m.innerHTML = contador_m;
                        p.innerHTML = contador_p;
                        

                        if (contador_m == 60) {
                            contador_m = 0;
                            contador_h++; 
                            h.innerHTML = contador_h;
      
                        }
              
                        if (contador_h == 24) {
                            contador_h = 0;         
                        }


                    }

                    s.innerHTML = contador_s;
                    contador_s ++;

                }
                , 10);          
        }
    </script>

    <title></title>
</head>
<body >

    <form id="form1" runat="server">
        <p>
            <span id="horas">0</span>:<span id="minutos">0</span>:<span id="segundos">0</span>  -  $<span id="pesos">0</span>
        </p>
        <input type="button" onclick="detenerse()" value="detenerse"/>
        <input type="button" onclick="carga()" value="Inicio"/>
    </form>
</body>
</html>
