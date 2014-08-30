using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.IO;
using System.Text;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        AddUser.AddDoctor(txtName.Text, txtAddress.Text, txtEmail.Text, txtUserName.Text, Encrypt(txtPass.Text.Trim()), Convert.ToInt32(txtNmcReg.Text), Convert.ToInt32(txtCharge.Text), DdlGender.SelectedItem.Text);
        string display = "inserted successfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);

        txtName.Text = "";
        txtEmail.Text = "";
        txtUserName.Text = "";
        txtAddress.Text = "";
        txtPass.Text = "";
        txtConfirmPass.Text = "";
       
        DdlGender.SelectedItem.Text = "";
        txtNmcReg.Text = "";
        txtCharge.Text = "";

//        SqlConnection con = new SqlConnection(AppConfig.DBConnectionString);
//        SqlCommand cmd = new SqlCommand("insert into tbl_Doctor(Doc_Name,Doc_Address,Doc_Email,Doc_UserName,Doc_Password,Doc_NMC_Reg,Doc_Charges,Doc_Gender) values(@name,@address,@email,@userName,@password,@nmcReg,@charge,@gender)", con);
//        cmd.Parameters.AddWithValue("@name", txtName.Text);
//        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
       
//        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
//        cmd.Parameters.AddWithValue("@userName", txtUserName.Text);
//        cmd.Parameters.AddWithValue("@password", txtPass.Text);
//        cmd.Parameters.AddWithValue("@nmcReg", Convert.ToInt32(txtNmcReg.Text));
//        cmd.Parameters.AddWithValue("@charge",Convert.ToInt32(txtCharge.Text));
//        cmd.Parameters.AddWithValue("@gender", Convert.ToString(DdlGender.SelectedValue));
    
//        con.Open();
//        int rowsAffected = cmd.ExecuteNonQuery();
       
//        if (rowsAffected == 1)
//        {
//            string script = @"<script language=""javascript"">
//        alert('Information have been Saved Successfully.......!!!!!.');
//       </script>;";
//            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);

//        }
//        else
//        {
//            string script = @"<script language=""javascript"">
//        alert('Error');
//       </script>;";
//            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
//        }
//        con.Close();

    }
  public string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }
}