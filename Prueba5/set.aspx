<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="set.aspx.cs" Inherits="Prueba5.set" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

    <style type="text/css">
            .testboc {             
                border: 3px solid orange;
                padding: 15px;
                text-align: center;
                margin: 20px auto;
                width: 500px;
                border-radius: 30px;
           }

           #main-content {
                max-width: 800px;
                margin: 0 auto;
                padding: 100px 0 0;
           }

           .responsive {
                width: 100%;
                height: 0;
                padding-bottom: 56.25%;
                position: relative;
           }

           .responsive iframe {
                position: absolute;
                width: 100%;
                height: 100%;
           }

           .footer {
                background-color: aqua;
                width: 100%;
                height: 50px;
                bottom: 0;
                text-align: center;
                color: #000;
           }

           input[type=text] {
                background-color: transparent;
                color: black;
                border: 1px solid red;
                border-radius: 6px;
           }

           input[type=password] {
                background-color: transparent;
                color: black;
                border: 1px solid red;
                border-radius: 6px;
           }

            body {
                margin: 0;
                padding: 0;
                animation: bgcolor infinite 20s;
            }

            h1 {
                margin: 0;
                padding: 0;
                font-family: Arial;
                font-size: 5em;
                color: #fff;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                text-align:center;
            }

            @keyframes bgcolor {
                 0% 
                 {
                    background: #FDFEFE;
                 }

                20% 
                {
                    background: #FBFCFC;
                }

                40% 
                {
                    background: #F7F9F9;
                }

                60% 
                {
                    background: #F7F9F9;
                }

                80% 
                {
                    background: #FBFCFC;
                }

                100% 
                {
                    background: #FDFEFE;
                }

            }

            .auto-style3 {
                height: 26px;
            }

            #MainTable {
                width: 100%;
                background-color: #D8F0DA;
                border: 1px;
                min-width: 100%;
                position: relative;
                opacity: 0.97;
                background: transparent;
            } 
    </style>

</head>
<body>

    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
                <div style="--aspect-ratio: 16/9;" >
                    <iframe src="duino.aspx" width="800" height="830" frameborder="0" align="left"></iframe><center><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3326.639924697913!2d-70.6086915!3d-33.5107442!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662d06e6c71db0d%3A0xdfdf70523ce83fbb!2sMall%20Florida%20Center!5e0!3m2!1ses!2scl!4v1574106464662!5m2!1ses!2scl" width="900" height="830" frameborder="0"></iframe></center>
                </div>
        </asp:Panel>

        <asp:Panel ID="Panel11" runat="server">
            <p>           
                <center><asp:Label ID="Label2" runat="server"></asp:Label></center>
                <div class="box">
        </asp:Panel>

    </form>
</body>
</html>


