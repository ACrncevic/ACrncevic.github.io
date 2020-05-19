using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace WebApplication7
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;username=root;password=12345");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (dlclanarina.Text == "Mjesečna")
            {
                cbregular.Visible = true;
                cbstudent.Visible = true;
                cbumirovljenici.Visible = true;
                cbnezaposleni.Visible = true;
            }
            else if (dlclanarina.Text == "Godišnja")
            {
                cbregular.Visible = true;
                cbstudent.Visible = false;
                cbumirovljenici.Visible = false;
                cbnezaposleni.Visible = false;
            }
            else
            {
                cbregular.Visible = false;
                cbstudent.Visible = false;
                cbumirovljenici.Visible = false;
                cbnezaposleni.Visible = false;
                cbregular.Checked = false;
                cbstudent.Checked = false;
                cbumirovljenici.Checked = false;
                cbnezaposleni.Checked = false;
            }

            if (cbregular.Checked == true || cbstudent.Checked == true || cbumirovljenici.Checked == true || cbnezaposleni.Checked == true)
            {
                lblupozorenje.Visible = true;
                lblupozorenje.Text = "<b>Napomena: </b> Pri plaćanju potrebno donijeti odgovarajuću potvrdu.";
                cbtrener.Visible = true;
            }
            else
            {
                lblupozorenje.Visible = false;
                cbtrener.Visible = false;
            }

            if (cbregular.Checked == true)
            {
                cbstudent.Visible = false;
                cbumirovljenici.Visible = false;
                cbnezaposleni.Visible = false;
            }
            else if (cbstudent.Checked == true)
            {
                cbregular.Visible = false;
                cbumirovljenici.Visible = false;
                cbnezaposleni.Visible = false;
            }
            else if (cbumirovljenici.Checked == true)
            {
                cbregular.Visible = false;
                cbstudent.Visible = false;
                cbnezaposleni.Visible = false;
            }
            else if (cbnezaposleni.Checked == true)
            {
                cbregular.Visible = false;
                cbstudent.Visible = false;
                cbumirovljenici.Visible = false;
            }

            if (cbzumba.Checked == true)
            {
                cbzregular.Visible = true;
                cbzstudenti.Visible = true;
            }
            else
            {
                cbzregular.Visible = false;
                cbzstudenti.Visible = false;
            }

            if (cbzregular.Checked == true)
            {
                cbzstudenti.Visible = false;
            
            }
            if (cbzstudenti.Checked == true)
            {
                cbzregular.Visible = false;

            }
        }
        string c; //clanarina
        string t; //trener
        string z;
        string l;
        int osobna;
        int cijena = 0;
        protected void Button1_Click(object sender, EventArgs e)
        {

            string insertQuery;

            try
            {
                
                try
                {
                    osobna = int.Parse(txtosobna.Text);
                }
                catch
                {
                    throw new ArgumentException("Osobna mora biti broj");
                }
                
                l = dllokacija.SelectedItem.Value;
                //vrsta clanarine
                //mjesecna
                if (dlclanarina.SelectedItem.Value == "Mjesečna")
                {
                    if (cbregular.Checked == true)
                    {
                        c = "Mjesečna- regular članarina";
                        cijena += 199;
                    }
                    else if (cbstudent.Checked == true)
                    {
                        c = "Mjesečna- student članarina";
                        cijena += 150;
                    }
                    else if (cbumirovljenici.Checked == true)
                    {
                        c = "Mjesečna- umirovljenici članarina";
                        cijena += 130;
                    }
                    else if (cbnezaposleni.Checked == true)
                    {
                        c = "Mjesečna- nezaposleni članarina";
                        cijena += 120;
                    }
                }
                //godisnja
                else if (dlclanarina.SelectedItem.Value == "Godišnja")
                {
                    if (cbregular.Checked == true)
                    {
                        c = "Godišnja- regular članarina";
                        cijena += 2000;
                    }

                }
                //nije odabrana clanarina
                else
                {
                    c = "-";
                }

                //osobni trener
                if (cbtrener.Checked == true)
                {
                    t = "Da";
                    cijena += 600;
                }
                else if (cbtrener.Checked == false)
                {
                    t = "Ne";
                }

                //zumba
                if (cbzumba.Checked == true)
                {
                    if (cbzregular.Checked == true)
                    {
                        z = "Zumba- regular članarina";
                        cijena += 350;
                    }
                    else if (cbzstudenti.Checked == true)
                    {
                        z = "Zumba- studenti članarina";
                        cijena += 300;
                    }
                }
                if (dlclanarina.SelectedItem.Value != "Odaberi članarinu" && cbregular.Checked==false && cbstudent.Checked==false &&cbumirovljenici.Checked==false && cbnezaposleni.Checked==false)
                {
                    throw new ArgumentException("Morate odabrati opciju članarine");
                    
                }

                else
                {
                    z = "-";
                }
                if (cbzumba.Checked == true && cbzregular.Checked == false && cbzstudenti.Checked == false)
                {
                    throw new ArgumentException("Odaberite opciju zumbe.");
                }



                insertQuery = "INSERT INTO projekt.upis_clanova(Osobna,ImePrezime,Lokacija,Email,Članarina,OsobniTrener,Zumba) VALUES(' "+ txtosobna.Text+" ',' " + txtimeprezime.Text + "','"+ l+"','"+ txtemail.Text + "','"+ c +"','"+ t+ "','"+z + "')";

                connection.Open();
                MySqlCommand command = new MySqlCommand(insertQuery, connection);
                lblupozorenje.Visible = true;




                if (command.ExecuteNonQuery() == 1)
                {
                    lblupozorenje.Text = "Hvala. Uspješno ste se prijavili. Javite se na našu recepciju na odabranoj lokaciji. <br/> Cijena odabranih usluga je: "+ cijena+" kuna.";

                }
                else
                {
                    lblupozorenje.Text = "Dogodila se pogreška. Pokušajte ponovo.";
                }
            }
            catch (Exception ex)
            {
                lblupozorenje.Visible = true;
                lblupozorenje.Text = ex.Message;
            }
            connection.Close();




        }

    }
}