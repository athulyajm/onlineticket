﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlDataReader rd;
    
    SqlConnection con = new SqlConnection(@"server=.\;database=onlineticket;uid=sa;pwd=");
    SqlConnection con1 = new SqlConnection(@"server=.\;database=onlineticket;uid=sa;pwd=");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtbxusr_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Txtbxpswd_TextChanged(object sender, EventArgs e)
    {

    }
protected void  Btnsign_Click(object sender, EventArgs e)
{




    String str = "select count(Username )from UserLogin where Username='" + txtbxusr.Text + "'and Password='" + Txtbxpswd.Text + "'";

     SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
      //cmd.ExecuteNonQuery();
        rd = cmd.ExecuteReader();
        if (rd.Read())
        {

            int count = Convert.ToInt32(rd[0]);
            if (count == 1)


            {
                Session["uid"] = txtbxusr.Text;
                string login_dt = DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString();
                string log = "insert into UserDisp(Eid,loginTime)values('" + txtbxusr.Text + "','" + login_dt + "')";
               // String str = "select count(Username )from UserLogin where Username='" + txtbxusr.Text + "'and Password='" + Txtbxpswd.Text + "'";
                
                Response.Redirect("Profile.aspx");

                SqlCommand cmd1 = new SqlCommand(log, con1);
                con1.Open();
                cmd1.ExecuteNonQuery();
                con1.Close();


            }
            else
            {
                label1.Text = "Invalid Username or Password !";
            }
        }
        con.Close();
}
protected void Button1_Click(object sender, EventArgs e)
{
   Response.Redirect("Create.aspx");

}
}
