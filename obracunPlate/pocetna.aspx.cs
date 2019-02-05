using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace obracunPlate
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {

                string izUnosa = TextBox4.Text;
                double neto = double.Parse(izUnosa);
                double porezNaZarade = neto / (neto / ((neto / 100) * 10));
                double zaPio = neto / (neto / ((neto / 100) * 14));
                double zdravstvenoZaposleni= neto / (neto / ((neto / 100) * 5.15));
                double slucajNezaposlenostiZaposleni = neto / (neto / ((neto / 100) * 0.75));
                double zaPioPoslodavac = neto / (neto / ((neto / 100) *12));
                double zdravstvenoPoslodavac = neto / (neto / ((neto / 100) * 5.15));
                double slucajNezaposlenostiPoslodavac = neto / (neto / ((neto / 100) * 0.75));
                double bruto = neto+porezNaZarade+zaPio+zdravstvenoZaposleni+slucajNezaposlenostiZaposleni+zaPioPoslodavac+zdravstvenoPoslodavac+slucajNezaposlenostiPoslodavac;




                ;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["obracunPlatedb"].ConnectionString);
                con.Open();
                string insert = "insert into userinfo (ime,prezime,adresa,netoiznos,poreznazarade,piozaposleni,zdravstvenozaposleni,doprinosizaposleni,bruto,pioposlodavac,zdravstvenoposlodavac,doprinosiposlodavac) " +
                "values(@ime,@prezime,@adresa,@netoiznos,@poreznazarade,@piozaposleni,@zdravstvenozaposleni,@doprinosizaposleni,@bruto,@pioposlodavac,@zdravstvenoposlodavac,@doprinosiposlodavac)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@ime", TextBox1.Text);
                cmd.Parameters.AddWithValue("@prezime", TextBox2.Text);
                cmd.Parameters.AddWithValue("@adresa", TextBox3.Text);
                cmd.Parameters.AddWithValue("@netoiznos", TextBox4.Text);
                cmd.Parameters.AddWithValue("@poreznazarade", porezNaZarade);
                cmd.Parameters.AddWithValue("@piozaposleni", zaPio);
                cmd.Parameters.AddWithValue("@zdravstvenozaposleni", zdravstvenoZaposleni);
                cmd.Parameters.AddWithValue("@doprinosizaposleni", slucajNezaposlenostiZaposleni);
                cmd.Parameters.AddWithValue("@bruto", bruto);
                cmd.Parameters.AddWithValue("@pioposlodavac", zaPioPoslodavac);
                cmd.Parameters.AddWithValue("@zdravstvenoposlodavac", zdravstvenoPoslodavac);
                cmd.Parameters.AddWithValue("@doprinosiposlodavac", slucajNezaposlenostiPoslodavac);
                cmd.ExecuteNonQuery();
                Response.Redirect("home.aspx");
                con.Close();

            }
            catch (Exception)
            {
               
                Response.Write("<p id='validacija'>UNETI PODACI NISU VALIDNI</p>");

                
        }
        }
        

       


    }
}