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
    public partial class BookPage : System.Web.UI.Page
    {
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
                    "Christian", "Poetry", "Spirituality", "Religion", "Music", "Self_Help", "Business", "Urban" };

                string s = "";
                List<string> list = new List<string>();
                

                for (int i = 0; i < categories.Length; i++)
                {
                    string a = categories[i];
                    if(ctgTable.Rows[0][a].ToString() == "1")
                    {
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
            Response.Write("<script>alert('Yapamadım abi :(')</script>");
        }
    }
}