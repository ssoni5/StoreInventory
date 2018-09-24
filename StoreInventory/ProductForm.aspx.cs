using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StoreInventory.Models;

namespace StoreInventory
{
    public partial class ProductForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                        var product = entities.Products.Create();
                        product.Name = txtName.Text;
                        product.Description = txtDescription.Text;
                        if (double.TryParse(txtWeight.Text, out var weight))
                        {
                            product.Weight = weight;
                        }
                        product.Type = drpListOfType.Text;
                        entities.Products.Add(product);
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