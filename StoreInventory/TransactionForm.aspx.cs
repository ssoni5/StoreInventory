using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StoreInventory.Models;

namespace StoreInventory
{
    public partial class TransactionForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (StoreInventoryContext entities = new StoreInventoryContext())
            {
                // Create Customer list
                var customers = entities.Customers.ToList();
                drpListOfCustomers.DataSource = customers;
                drpListOfProducts.DataValueField = "Id";
                drpListOfProducts.DataTextField = "FirstName";
                drpListOfCustomers.DataBind();

                // Create Product list
                var products = entities.Products.ToList();
                drpListOfProducts.DataSource = products;
                drpListOfProducts.DataValueField = "Id";
                drpListOfProducts.DataTextField = "Name";
                drpListOfProducts.DataBind();

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Make the Message visible
                pnlForm.Visible = false;
                pnlThankYou.Visible = true;

                // Add the data in the database
                using (StoreInventoryContext entities = new StoreInventoryContext())
                {
                    try
                    {
                        var transaction = entities.Transactions.Create();
                        transaction.CustomerId = int.Parse(drpListOfCustomers.Text);
                        transaction.ProductId = int.Parse(drpListOfProducts.Text);
                        if (double.TryParse(txtPrice.Text, out var price))
                        {
                            transaction.Price = price;
                        }
                        entities.Transactions.Add(transaction);
                        entities.SaveChanges();
                        lblStatus.Text = "Form Submited. Thank you!";
                    }
                    catch (Exception ex)
                    {
                        lblStatus.Text = "Error Occured. Error Info: " + ex.Message;
                    }
                }
            }
        }
    }
}