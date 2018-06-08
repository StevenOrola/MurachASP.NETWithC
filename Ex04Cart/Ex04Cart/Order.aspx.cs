﻿using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex04Cart
{
    public partial class Order : System.Web.UI.Page
    {
        private Product selectedProduct;

        protected void Page_Load(object sender, EventArgs e)
        {
            //bind dropdown list on first load
            if(!IsPostBack)
            {
                ddlProducts.DataBind();
            }

            //get and show product on every load
        }

        private Product getSelectedProduct()
        {
            //get row from SqlDataSource based on value in dropdown list
            DataView productsTable = (DataView)
                SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter = string.Format("ProductID = '{0},",
                ddlProducts.SelectedValue);
            DataRowView row = productsTable[0];

            //create a new product object and load with data from row
            Product p = new Product();
            p.ProductID = row["ProductID"].ToString();
            p.Name = row["Name"].ToString();
            p.ShortDescription = row["ShortDescription"].ToString();
            p.LongDescription = row["LongDescription"].ToString();
            p.UnitPrice = (decimal)row["UnitPrice"];
            p.ImageFile = row["ImageFile"].ToString();

            return p;
        }
    }
}