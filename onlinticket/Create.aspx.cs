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

public partial class Create : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"server=.\;database=onlineticket;uid=sa;pwd=");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TxtbxFirst_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Btregister_Click(object sender, EventArgs e)
    {
        string dob = Ddldate.SelectedItem.Text + "/" + Ddlmnth.SelectedItem.Text + "/" + Ddlyr.SelectedItem.Text;
        string str = "insert into UserReg values('" + TxtbxFirst.Text + "','" + TxtBxLast.Text + "','" + TextBxUsername.Text + "','" + TxtEid.Text + "','" + TxtBxpswd.Text + "','" + dob + "')";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        cmd.ExecuteNonQuery();
        //  Response.Write(""+str);
        Label11.Text = "Registered successfully";
        con.Close();
    }
    protected void TextBxrenter_TextChanged(object sender, EventArgs e)
    {

    }
}
