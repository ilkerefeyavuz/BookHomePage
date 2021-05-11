﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookHomePage
{
    public partial class BookPage : System.Web.UI.Page
    {
        protected OleDbConnection GetConnection()
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
                                                      Server.MapPath("booksDb.mdb") + ";Persist Security Info=False");
            return con;

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
                                                      Server.MapPath("booksDb.mdb") + ";Persist Security Info=False");

            string query = "select * from books where id=" + id;
            // string query = "select * from books";
            string querycategory = "select * from category where id=" + id.ToString();
            OleDbCommand cmd = new OleDbCommand(query, con);
            OleDbCommand cmdctg = new OleDbCommand(querycategory, con);

            ImageButton[] recButtons = {RecBook1, RecBook2, RecBook3, RecBook4, RecBook5};

            try
            {
                con.Open();
                OleDbDataReader reader = cmd.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(reader);

                string author = dataTable.Rows[0]["book_authors"].ToString();
                ltrAuthor.Text = "<a href='allRecommendations.aspx?&pn=1&a=" + author + "'>" + author + "</a>"; ;

                imgBook.ImageUrl = dataTable.Rows[0]["image_url"].ToString();
                txtDesc.Text = dataTable.Rows[0]["book_desc"].ToString();
                ltrPage.Text = dataTable.Rows[0]["book_pages"].ToString();
                ltrTitle.Text = dataTable.Rows[0]["book_title"].ToString();
                ltrRate.Text = dataTable.Rows[0]["book_rating"].ToString();
                ltrRateCount.Text = dataTable.Rows[0]["book_rating_count"].ToString();

                OleDbDataReader ctgReader = cmdctg.ExecuteReader();
                DataTable ctgTable = new DataTable();
                ctgTable.Load(ctgReader);

                string[] categories = { "Young_Adult", "Fiction", "Science_Fiction", "Fantasy", "Classics", "Romance", "Contemporary",
                    "Childrens", "Mystery", "Thriller", "Novels", "Philosophy", "Short_Stories", "Nonfiction", "Biography", "Horror", 
                    "Christian", "Poetry", "Spirituality", "Religion", "Music", "Self_Help", "Urban" };

                string s = "";
                List<string> list = new List<string>();
                List<string> ktg = new List<string>();

                for (int i = 0; i < categories.Length; i++)
                {
                    
                    string a = categories[i];
                    if(ctgTable.Rows[0][a].ToString() == "1")
                    {
                        ktg.Add(a);
                        string sa = a.Trim().Replace("_", " ");
                        string nsa = "<a href='allRecommendations.aspx?&pn=1&ctg=" + sa + "'>" + sa +"</a>";
                        list.Add(nsa);
                        //HyperLink hp1 = new HyperLink();
                        //hp1.Text = sa;
                        //hp1.NavigateUrl = "allRecommendations.aspx? ctg = " + sa;
                        
                        //list.Add(hp1);
                        //s = s + a + ", ";
                    }
                }

                string[] genres = list.ToArray();

                for (int i = 0; i < genres.Length; i++)
                {
                    if (i + 1 == genres.Length)
                    {
                        s += genres[i];
                    }
                    else
                    {
                        s += genres[i] + ", ";
                    }
                }

                ltrGenre.Text = s;

                int rCount = 0;
                string queryReccommend1 = "select * from books b, category c where b.id = c.id";

                string[] genreArr = ktg.ToArray();

                for (int i = 0; i < genreArr.Length; i++)
                {
                    queryReccommend1 = queryReccommend1 + " and c." + genreArr[i] + "=1";
                }

                OleDbCommand recCmd = new OleDbCommand(queryReccommend1, con);
                OleDbDataReader reader2 = recCmd.ExecuteReader();
                DataTable recTable = new DataTable();
                recTable.Load(reader2);


                while (rCount < 5)
                {
                    for (int i = 0; i < 5; i++)
                    {
                        if (i < recTable.Rows.Count)
                        {
                            string img = recTable.Rows[i]["image_url"].ToString();
                            recButtons[i].ImageUrl = img;
                        }
                        else
                        {
                            recButtons[i].Visible = false;
                        }
                        rCount++;
                    }
                }
                

            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }
        }

        protected void btnHomepage_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnRating_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Invalid Rate! Please try again...')</script>");
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
            ImageButton imgButton = (ImageButton)sender;
            string imgUrl = imgButton.ImageUrl;
            int id = GetId(imgUrl);
            Response.Redirect("BookPage.aspx?id=" + id);

        }
    }
}