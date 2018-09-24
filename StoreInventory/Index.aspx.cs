using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StoreInventory.Models;

namespace StoreInventory
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (StoreInventoryContext entities = new StoreInventoryContext())
            {
                // Create Customer Table
                var customers = entities.Customers.ToList();
                TableRow customerRow;
                foreach (Customer c in customers)
                {
                    customerRow = new TableRow();
                    customerRow.Cells.Add(new TableCell { Text = c.FirstName });
                    customerRow.Cells.Add(new TableCell { Text = c.LastName });
                    customerRow.Cells.Add(new TableCell { Text = c.EmailAddress });
                    customerRow.Cells.Add(new TableCell { Text = c.City });
                    customerRow.Cells.Add(new TableCell { Text = c.State });
                    customerRow.Cells.Add(new TableCell { Text = c.ZipCode });
                    tblCustomers.Rows.Add(customerRow);
                }

                // Create Product Table
                var products = entities.Products.ToList();
                TableRow productRow;
                foreach (Product p in products)
                {
                    productRow = new TableRow();
                    productRow.Cells.Add(new TableCell { Text = p.Name });
                    productRow.Cells.Add(new TableCell { Text = p.Description });
                    productRow.Cells.Add(new TableCell { Text = p.Weight.ToString() });
                    productRow.Cells.Add(new TableCell { Text = p.Type });
                    tblProducts.Rows.Add(productRow);
                }

                // Create Transaction Table
                var transactions = entities.Transactions.ToList();
                TableRow transactionRow;
                foreach (Transactions t in transactions)
                {
                    transactionRow = new TableRow();
                    transactionRow.Cells.Add(new TableCell { Text = t.CustomerId.ToString() });
                    transactionRow.Cells.Add(new TableCell { Text = t.Customer.FullName });
                    transactionRow.Cells.Add(new TableCell { Text = t.ProductId.ToString() });
                    transactionRow.Cells.Add(new TableCell { Text = t.Product.Name });
                    transactionRow.Cells.Add(new TableCell { Text = t.Price.ToString() });
                    tblTransactions.Rows.Add(transactionRow);
                }

            }
        }
    }
}