using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StoreInventory.Models;

namespace StoreInventory
{
    public partial class CustomerForm : System.Web.UI.Page
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
                        var customer = entities.Customers.Create();
                        customer.FirstName = txtFirstName.Text;
                        customer.LastName = txtLastName.Text;
                        customer.EmailAddress = txtEmail.Text;
                        customer.Street = txtStreet.Text;
                        customer.City = txtCity.Text;
                        customer.State = txtState.Text;
                        customer.ZipCode = txtZipCode.Text;
                        entities.Customers.Add(customer);
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