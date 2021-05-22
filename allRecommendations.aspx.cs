using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookHomePage
{
    public partial class allRecommendations : System.Web.UI.Page
    {
        public OleDbConnection GetConnection()
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
                                                      Server.MapPath("booksDb.mdb") + ";Persist Security Info=False");
            return con;

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            var pn = Request.QueryString["pn"];
            int pageNo = int.Parse(pn);
            OleDbConnection con = GetConnection();
            string categories = Request.QueryString["ctg"];
            string searchStr = Request.QueryString["search"];
            string author = Request.QueryString["a"];
            string queryString = "";
            string query = "select * from books b, category c where b.id=c.id ";

            if (searchStr != null)
            {
                //query = "select * from books where book_title like '%" + searchStr + "%' order by book_rating desc";
                query = "select * from books where book_title like '%" + searchStr + "%' order by book_rating_count desc";
                //string querySearch = "";
                //if (categories != null)
                //{
                //    querySearch = " and";
                //}

                //querySearch += " where b.book_title like '%" + searchStr + "%' ";
                //query += querySearch;

            }

            else if (categories != null)
            {
                string[] ctgArray = categories.Split('_');
                for (int i = 0; i < ctgArray.Length; i++)
                {
                    string s = ctgArray[i];
                    s = s.Trim().Replace(" ", "_");
                    if (s != "" & s != " ")
                    {
                        queryString += "and c." + s + "=1 ";
                    }
                    
                }

                //query += queryString ;
                //query = "select * from books b, category c where b.id=c.id " + queryString +
                //               "order by book_rating desc, book_rating_count";
                query = "select * from books b, category c where b.id=c.id " + queryString +
                        "order by book_rating_count desc";

                //string query = "select * from books b, category c where b.id=c.id and c.Young_Adult=1";
            }
            
            else if(author != null)
            {
                //query = "select * from books where book_authors='" + author + "' order by book_rating desc";
                query = "select * from books where book_authors='" + author + "' order by book_rating_count desc";
            }


            OleDbCommand cmd = new OleDbCommand(query, con);

            ImageButton[] imageButtons =
                {ImageButton2, ImageButton3, ImageButton4, ImageButton5, ImageButton6, ImageButton7,
                 ImageButton8, ImageButton9, ImageButton10, ImageButton11, ImageButton12, ImageButton13,
                ImageButton14, ImageButton15, ImageButton16};

            Literal[] titles =
            {
                ltrBookName1, ltrBookName2, ltrBookName3, ltrBookName4, ltrBookName5, ltrBookName6, ltrBookName7,
                ltrBookName8, ltrBookName9, ltrBookName10, ltrBookName11, ltrBookName12, ltrBookName13, ltrBookName14,
                ltrBookName15
            };

            Button[] pageButtons = {Button1, Button2, Button3, Button4, Button5};

            try
            {
                con.Open();
                OleDbDataReader reader = cmd.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(reader);


                int totalPageNumber;
                if (dataTable.Rows.Count % 15 == 0)
                {
                    totalPageNumber = (dataTable.Rows.Count / 15);
                }
                else
                {
                    totalPageNumber = (dataTable.Rows.Count / 15) + 1;
                }

                Session["totalPageNumber"] = totalPageNumber;

                if (totalPageNumber >= 5)
                {
                    int med = pageNo;
                    if (med < 3)
                    {
                        med = 3;
                    }
                    else if (med == totalPageNumber)
                    {
                        med = med - 2;
                    }
                    else if (med + 1 >= totalPageNumber)
                    {
                        med = med - 1;
                    }

                    for (int i = 0; i < 5; i++)
                    {
                        if (i < totalPageNumber)
                        {
                            pageButtons[i].Text = (med - 2 + i).ToString();
                        }
                    }

                }
                else if (totalPageNumber == 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                    "alert",
                    "alert('There are no books in the category you selected');window.location ='HomePage.aspx';",
                true);
                }
                else
                {

                    for (int i = 0; i < 5; i++)
                    {
                        if (i + 1 <= totalPageNumber)
                        {
                            pageButtons[i].Text = (i + 1).ToString();
                        }
                        else
                        {
                            pageButtons[i].Visible = false;
                        }
                    }
                }

                for (int i = 0; i < 15; i++)
                {
                    ImageButton img = imageButtons[i];
                    Literal title = titles[i];
                    if ((pageNo - 1) * 15 + i < dataTable.Rows.Count)
                    {
                        img.ImageUrl = dataTable.Rows[(pageNo - 1) * 15 + i]["image_url"].ToString();
                        title.Text = dataTable.Rows[(pageNo - 1) * 15 + i]["book_title"].ToString();
                    }
                    else
                    {
                        img.Visible = false;
                        title.Visible = false;
                    }

                }


                con.Close();
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("HomePage.aspx");
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

        protected void ImageButtons_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgButton = (ImageButton) sender;
            string imgUrl = imgButton.ImageUrl;
            int id = GetId(imgUrl);
            Response.Redirect("BookPage.aspx?id=" + id);
                
        }

        protected void PageButtons_Click(object sender, EventArgs e)
        {
            string absoluteurl = HttpContext.Current.Request.Url.AbsoluteUri;
            string[] part1 = absoluteurl.Split(new[] { "pn=" }, StringSplitOptions.None);
            string a = part1[0];
            string[] part2 = {};
            Button btn = (Button)sender;
            string pn = btn.Text;
            string newPage = "";
            string b = "";

            if (absoluteurl.Contains("ctg="))
            {
                part2 = absoluteurl.Split(new[] { "ctg=" }, StringSplitOptions.None);
                b = part2[1];
                newPage = a + "&pn=" + pn + "&ctg=" + b;
            }
            else if (absoluteurl.Contains("search="))
            {
                part2 = absoluteurl.Split(new[] { "search=" }, StringSplitOptions.None);
                b = part2[1];
                newPage = a + "&pn=" + pn + "&search=" + b;
            }
            else if (absoluteurl.Contains("a="))
            {
                part2 = absoluteurl.Split(new[] { "a=" }, StringSplitOptions.None);
                b = part2[1];
                newPage = a + "&pn=" + pn + "&a=" + b;
            }

            Response.Redirect(newPage);

        }

        protected void ButtonFirst_Click(object sender, EventArgs e)
        {
            string absoluteurl = HttpContext.Current.Request.Url.AbsoluteUri;
            string[] part1 = absoluteurl.Split(new[] { "pn=" }, StringSplitOptions.None);
            string a = part1[0];
            string[] part2 = { };
            string b = "";
            string newPage = "";
            if (absoluteurl.Contains("ctg="))
            {
                part2 = absoluteurl.Split(new[] { "ctg=" }, StringSplitOptions.None);
                b = part2[1];
                newPage = a + "&pn=" + 1 + "&ctg=" + b;
            }
            if (absoluteurl.Contains("search="))
            {
                part2 = absoluteurl.Split(new[] { "search=" }, StringSplitOptions.None);
                b = part2[1];
                newPage = a + "&pn=" + 1 + "&search=" + b;
            }
            if (absoluteurl.Contains("a="))
            {
                part2 = absoluteurl.Split(new[] { "a=" }, StringSplitOptions.None);
                b = part2[1];
                newPage = a + "&pn=" + 1 + "&a=" + b;
            }


            Response.Redirect(newPage);
        }

        protected void ButtonLast_Click(object sender, EventArgs e)
        {
            string absoluteurl = HttpContext.Current.Request.Url.AbsoluteUri;
            string[] part1 = absoluteurl.Split(new[] { "pn=" }, StringSplitOptions.None);
            string a = part1[0];

            var pn = Session["totalPageNumber"];
            int pageNo = (int)pn;
            string[] part2 = { };
            string b = "";
            string newPage = "";
            if (absoluteurl.Contains("ctg="))
            {
                part2 = absoluteurl.Split(new[] { "ctg=" }, StringSplitOptions.None);
                b = part2[1];
                newPage = a + "&pn=" + pageNo + "&ctg=" + b;
            }
            if (absoluteurl.Contains("search="))
            {
                part2 = absoluteurl.Split(new[] { "search=" }, StringSplitOptions.None);
                b = part2[1];
                newPage = a + "&pn=" + pageNo + "&search=" + b;
            }
            if (absoluteurl.Contains("a="))
            {
                part2 = absoluteurl.Split(new[] { "a=" }, StringSplitOptions.None);
                b = part2[1];
                newPage = a + "&pn=" + pageNo + "&a=" + b;
            }


            Response.Redirect(newPage);

            //string[] part2 = absoluteurl.Split(new[] { "ctg=" }, StringSplitOptions.None);
            //string b = part2[1];

            //var pn = Session["totalPageNumber"];
            //int pageNo = (int) pn;

            ////string newPage = a + "&pn=" + (TotalPage) + "&ctg=" + b;
            //string newPage = a + "&pn=" + pageNo + "&ctg=" + b;

            //Response.Redirect(newPage);
        }
    }
}