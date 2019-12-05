using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Ports;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba5
{
    public partial class duino : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

            Label2.Text = DateTime.Now.ToString();
                    
            try
            {

                var sp = new SerialPort("COM2", 9600);
                if (!sp.IsOpen)
                {
                    sp.Open();
                }


                if (sp.BytesToRead > 0)
                {
                    Label1.Text = sp.ReadLine();
                }
                sp.Close();

                Label3.Visible = false;

            }
            catch {
                Label3.Visible = true;
                Label1.Visible = true;
                Label3.Text = "Puerto de comunicacion no encontrado";
                Label1.Text = "Verificar Conexión";
                
            }

            //Label5.Text = DateTime.Now.ToString();

            //try
            //{

            //    var sp = new SerialPort("COM3", 9600);
            //    if (!sp.IsOpen)
            //    {
            //        sp.Open();
            //    }


            //    if (sp.BytesToRead > 0)
            //    {
            //        Label4.Text = sp.ReadLine();
            //    }
            //    sp.Close();

            //    Label6.Visible = false;

            //}
            //catch
            //{
            //    Label6.Visible = true;
            //    Label4.Visible = true;
            //    Label6.Text = "Puerto de comunicacion no encontrado";
            //    Label4.Text = "Verificar Conexión";

            //}




            //sp.Dispose();
        }

        protected void Timer6_Tick(object sender, EventArgs e)
        {
            
        }

        
    }
}