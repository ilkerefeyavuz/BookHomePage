﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookHomePage
{
    public partial class BookHomePage : System.Web.UI.Page
    {
        protected OleDbConnection GetConnection()
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
                                                      Server.MapPath("booksDb.mdb") + ";Persist Security Info=False");
            return con;

        }

        protected void Load_ImageButtons(Object sender, EventArgs e, string [] ctgArray)
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
                                                      Server.MapPath("booksDb.mdb") + ";Persist Security Info=False");
            ImageButton[] images = { ImageButton1, ImageButton2, ImageButton3, ImageButton4,
                ImageButton5, ImageButton6, ImageButton7, ImageButton8 };

            string query = "";

            if (ctgArray.Length == 0)
            {
                query = "select * from books where book_rating_count > 100 order by book_rating desc";
            }
            else
            {
                string ctg = "";
                for (int i = 0; i < ctgArray.Length; i++)
                {
                    ctg += "and c." + ctgArray[i] + " = 1";
                }
                query = "select * from books b, category c where b.id = c.id " + ctg + " order by book_rating desc";
            }

            
            string q = "select * from books b, category c where b.Id = c.Id and c.fantasy = 1";
            OleDbCommand cmd = new OleDbCommand(query, con);
            Console.WriteLine(query);

            try
            {
                con.Open();
                OleDbDataReader reader = cmd.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(reader);

                // var title = dataTable.Rows[0]["book_title"].ToString();


                for (int i = 0; i < images.Length; i++)
                {
                    var img = dataTable.Rows[i]["image_url"].ToString();
                    images[i].ImageUrl = img;

                }

                con.Close();

            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                //throw ;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] s = { };
            Load_ImageButtons(sender, e, s);
        }

        protected string[] SelectedCategories()
        {
            List<string> ctgList = new List<string>();
            for (int i = 0; i < cbList.Items.Count; i++)
            {
                if (cbList.Items[i].Selected == true)
                {
                    ctgList.Add(cbList.Items[i].Text);
                }
            }

            string[] s = ctgList.ToArray();
            return s;
        }

        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            string[] ctgArray = SelectedCategories();
            string s = "";
            for (int i = 0; i < ctgArray.Length; i++)
            {
                if (i + 1 == ctgArray.Length)
                {
                    s += ctgArray[i];
                }
                else
                {
                    s += ctgArray[i] + "_";
                }
                
            }
            Response.Redirect("allRecommendations.aspx?pn=1&ctg=" + s);
        }

        public int GetImageButtonIndex(ImageButton imgbtn)
        {
            ImageButton[] imageButtons = {
                ImageButton1, ImageButton2, ImageButton3, ImageButton4, ImageButton5,
                ImageButton6, ImageButton7, ImageButton8 };

            for (int i = 0; i < imageButtons.Length; i++)
            {
                if (imageButtons[i] == imgbtn)
                {
                    return i;
                }
            }
            return -1;
        }
        public int GetId(string url)
        {
            OleDbConnection con = GetConnection();
            string query = "select id from books where image_url='" + url + "'";
            OleDbCommand cmd = new OleDbCommand(query, con);
            int id;
            try
            {
                con.Open();
                OleDbDataReader reader = cmd.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(reader);
                string data = dataTable.Rows[0]["id"].ToString();
                id = int.Parse(data);
                con.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
            return id;
        }

        protected void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgButton = (ImageButton) sender;
            string imgUrl = imgButton.ImageUrl;
            int id = GetId(imgUrl);
            Response.Redirect("BookPage.aspx?id=" + id);

            //OleDbConnection con = GetConnection(sender, e);
            //string query = "select * from books where book_rating_count > 10 order by book_rating desc";
            //OleDbCommand cmd = new OleDbCommand(query, con);

            //try
            //{
            //    con.Open();
            //    OleDbDataReader reader = cmd.ExecuteReader();
            //    DataTable dataTable = new DataTable();
            //    dataTable.Load(reader);
            //    string imgUrl = ImageButton1.ImageUrl;
            //    ImageButton imagebutton = (ImageButton) sender;

            //    int rowindex = GetImageButtonIndex(imagebutton);

            //    var id = dataTable.Rows[rowindex]["id"];
            //    Response.Redirect("BookPage.aspx?id=" + id);
            //}
            //catch (Exception exception)
            //{
            //    Console.WriteLine(exception);
            //    throw;
            //}


        }
        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // TODO: Buraya yazacağuk
            
            //cbList.Items[0].Text = "Changed a girdik";
            List<string> ctgList = new List<string>();
            for (int i = 0; i < cbList.Items.Count; i++)
            {
                //cbList.Items[1].Text = "for a girdik";
                if (cbList.Items[i].Selected)
                {
                    //cbList.Items[2].Text = "if e girdik";
                    ctgList.Add(cbList.Items[i].Text);
                }
            }

            string[] s = ctgList.ToArray();
            Console.WriteLine(ctgList);
            Load_ImageButtons(sender, e, s);
        }

        protected void SearchBar_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cbList.ClearSelection();
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            string searchStr = SearchBar.Text;
            Response.Redirect("allRecommendations.aspx?&pn=1&search=" + searchStr);
        }
    }
}