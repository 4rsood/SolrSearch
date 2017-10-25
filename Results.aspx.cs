using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Collections;
using System.Data;

namespace TBS_Solr_Interface
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                System.Diagnostics.Debug.WriteLine("postback");
                //litChange.Text = "";
            }
        }

        protected void btnParse_Click(object sender, EventArgs e)
        {

            System.Diagnostics.Debug.WriteLine("Button pressed");
            var serialize = new System.Web.Script.Serialization.JavaScriptSerializer();

            var jRes = JsonConvert.DeserializeObject<JSONResponse>(txtJSON.Text);//serialize.Deserialize<JSONResponse>(txtJSON.Text);
            System.Diagnostics.Debug.WriteLine("here: " + jRes.response.numFound);


           
            DataTable dt = new DataTable();
            //dt.Columns.Add("ID");
            dt.Columns.Add("Placeholder_Results");

            string result_title = "";

            int idindex = 0;
            foreach (var document in jRes.response.docs)
            {
                result_title = idindex.ToString() + ". ";
                result_title += (document.title == null) ? "no information available" : document.title[0].ToString();
                result_title += System.Environment.NewLine;
                result_title += (document.keywords == null) ? "no information available" : document.keywords[0].ToString();
                result_title += System.Environment.NewLine;
                result_title += (document.id == null) ? "no information available" : document.id.ToString();
                result_title += System.Environment.NewLine;
                result_title += (document.document_reference == null) ? "no information available" : document.document_reference.ToString();

                DataRow dr = dt.NewRow();
                //dr["ID"] = idindex;
                dr["Placeholder_Results"] = result_title;
                dt.Rows.Add(dr);
      
                idindex++;
               
            }

            gvSearchResults.DataSource = dt;
            gvSearchResults.DataBind();

        }


        // this is needed otherwise I get "The GridView 'grdTrades' fired event PageIndexChanging which wasn't handled."
        protected void gvSearchResults_PageIndexChanging(Object sender, GridViewPageEventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Button pressed");
            var serialize = new System.Web.Script.Serialization.JavaScriptSerializer();

            var jRes = JsonConvert.DeserializeObject<JSONResponse>(txtJSON.Text);//serialize.Deserialize<JSONResponse>(txtJSON.Text);
            System.Diagnostics.Debug.WriteLine("here: " + jRes.response.numFound);


            DataTable dt = new DataTable();
            //dt.Columns.Add("ID");
            dt.Columns.Add("Title");

            string result_title = "";

            int idindex = 0;
            foreach (var document in jRes.response.docs)
            {
                result_title = idindex.ToString() + ". ";
                result_title += (document.title == null) ? "no information available" : document.title[0].ToString();
                result_title += System.Environment.NewLine;
                result_title += (document.keywords == null) ? "no information available" : document.keywords[0].ToString();
                result_title += System.Environment.NewLine;
                result_title += (document.id == null) ? "no information available" : document.id.ToString();
                result_title += System.Environment.NewLine;
                result_title += (document.document_reference == null) ? "no information available" : document.document_reference.ToString();

                DataRow dr = dt.NewRow();
                //dr["ID"] = idindex;
                dr["Placeholder_Results"] = result_title;
                dt.Rows.Add(dr);

                idindex++;

            }

            gvSearchResults.DataSource = dt;
            gvSearchResults.DataBind();

            gvSearchResults.PageIndex = e.NewPageIndex;
            gvSearchResults.DataBind();
        }

        protected void gvSearchResults_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}