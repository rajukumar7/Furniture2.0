﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Furniture2
{
    public class Connection
    {
        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        }
    }

    public class Utils
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        public static bool IsValidExtension(string fileName)
        {
            bool IsValid = false;
            string[] fileExtension = { ".jpg", ".png", ".jpeg" };
            for (int i = 0; i <= fileExtension.Length - 1; i++)
            {
                if (fileName.Contains(fileExtension[i]))
                {
                    IsValid = true;
                    break;
                }
            }
            return IsValid;
        }
        // Setting default image if their is no image for job

        public static string GetImageUrl(Object url)
        {
            string url1 = "";
            if (string.IsNullOrEmpty(url.ToString()) || url == DBNull.Value)
            {
                url1 = "../Images/No_image.png";
            }
            else
            {
                url1 = string.Format("../{0}", url);
            }
            return url1;
        }

        //public bool updateCartQuantity(int quantity, int productId, int userId)
        //{
        //    bool isUpdated = false;
        //    con = new SqlConnection(Connection.GetConnectionString());
        //    cmd = new SqlCommand("Cart_Crud", con);
        //    cmd.Parameters.AddWithValue("@Action", "UPDATE");
        //    cmd.Parameters.AddWithValue("@ProductId", quantity);
        //    cmd.Parameters.AddWithValue("@Quantity", productId);
        //    cmd.Parameters.AddWithValue("@UserId", userId);
        //    cmd.CommandType = CommandType.StoredProcedure;

        //    try
        //    {
        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //        isUpdated = true;
        //    }
        //    catch (Exception ex)
        //    {
        //        isUpdated = false;
        //        System.Web.HttpContext.Current.Response.Write("<script>alert('Error- " + ex.Message + " ');<script>");
        //    }
        //    finally
        //    {
        //        con.Close();
        //    }
        //    return isUpdated;
        //}

        //public int cartCount(int userId)
        //{
        //    con = new SqlConnection(Connection.GetConnectionString());
        //    cmd = new SqlCommand("Cart_Crud", con);
        //    cmd.Parameters.AddWithValue("@Action", "SELECT");
        //    cmd.Parameters.AddWithValue("@UserId", userId);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    sda = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    return dt.Rows.Count;
        //}
    }
}