<%@ Page MasterPageFile="~/MasterPage.Master" Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="TBS_Solr_Interface.WebForm1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>

.pagination-ys {
    /*display: inline-block;*/
    padding-left: 0;
    margin: 20px 0;
    border-radius: 4px;
}
 
.pagination-ys table > tbody > tr > td {
    display: inline;
    text-align:center;
}
 
.pagination-ys table > tbody > tr > td > a,
.pagination-ys table > tbody > tr > td > span {
    position: relative;
    float: left;
    padding: 8px 12px;
    line-height: 1.42857143;
    text-decoration: none;
    color: #dd4814;
    background-color: #ffffff;
    border: 1px solid #dddddd;
    margin-left: -1px;
}
 
.pagination-ys table > tbody > tr > td > span {
    position: relative;
    float: left;
    padding: 8px 12px;
    line-height: 1.42857143;
    text-decoration: none;    
    margin-left: -1px;
    z-index: 2;
    color: #aea79f;
    background-color: #f5f5f5;
    border-color: #dddddd;
    cursor: default;
}
 
.pagination-ys table > tbody > tr > td:first-child > a,
.pagination-ys table > tbody > tr > td:first-child > span {
    margin-left: 0;
    border-bottom-left-radius: 4px;
    border-top-left-radius: 4px;
}
 
.pagination-ys table > tbody > tr > td:last-child > a,
.pagination-ys table > tbody > tr > td:last-child > span {
    border-bottom-right-radius: 4px;
    border-top-right-radius: 4px;
}
 
.pagination-ys table > tbody > tr > td > a:hover,
.pagination-ys table > tbody > tr > td > span:hover,
.pagination-ys table > tbody > tr > td > a:focus,
.pagination-ys table > tbody > tr > td > span:focus {
    color: #97310e;
    background-color: #eeeeee;
    border-color: #dddddd;
}

.gvPager {
    text-align:center;
}

    </style>

    <div class="row" style="display:inline;">
        <div class="col-xs-12 col-md-8">

            <div style="overflow:hidden; width:100%;">
                <input style="width:100%; overflow:hidden; display:block; white-space:nowrap;" class="wb-srch-pol" maxlength="150" placeholder="Search Term" id="wb-srch-q" />
                <button style="float:right;" type="button" class="btn-sm" name="wb-srch-sub"><span class="glyphicon-search glyphicon"></span></button>
            </div>

            <asp:TextBox runat="server" ID="txtJSON" Name="txtJSON" TextMode="MultiLine" />
            <asp:Button runat="server" ID="btnParse" Text="Parse JSON" OnClick="btnParse_Click" CommandName="btnChangeRpt" />

            <asp:GridView CssClass="table table-striped" runat="server" ID="gvSearchResults" OnRowDataBound="gvSearchResults_RowDataBound" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvSearchResults_PageIndexChanging" AllowSorting="False" EnablePersistedSelection="False" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle" PagerSettings-NextPageText=">" PagerSettings-PreviousPageText="<">
                <PagerStyle CssClass="pagination-ys" VerticalAlign="Middle" HorizontalAlign="Center" />
            </asp:GridView>

        </div>


        <div class="col-xs-6 col-md-4">

            <div class="panel panel-default">
                 <header class="panel-heading">
   <h5 class="panel-title">Filters</h5>
  </header>
  <div class="panel-body">
            <div class="radio">
               <label><input type="radio" name="optradio">Alphabetical order</label>
                <label><input type="radio" name="optradio">Relevance order</label>
            </div>

      <hr />
            <ul class="list-unstyled">
                <li style="padding-bottom:5px;">
                    <details open="open">
                        <summary>GCconnex</summary>
                        <ul>
                            <li>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Option 1</label>
                                </div>
                            </li>
                            <li>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Option 1</label>
                                </div>
                            </li>
                            <li>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Option 1</label>
                                </div>
                            </li>
                            <li>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Option 1</label>
                                </div>
                            </li>
                        </ul>
                    </details>
                </li>
                <li>
                    <details open="open">
                        <summary>GCpedia</summary>
                        <ul>
                            <li>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Option 1</label>
                                </div>
                            </li>
                            <li>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Option 1</label>
                                </div>
                            </li>
                            <li>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Option 1</label>
                                </div>
                            </li>
                            <li>
                                <div class="checkbox">
                                    <label><input type="checkbox" value="">Option 1</label>
                                </div>
                            </li>
                        </ul>
                    </details>
                </li>
            </ul>

        </div>

 </div>
</div>

    </div>


</asp:Content>