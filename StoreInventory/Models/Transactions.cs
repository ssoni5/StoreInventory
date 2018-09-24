using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StoreInventory.Models
{
    public class Transactions
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public int CustomerId { get; set; }
        public double Price { get; set; }
        public virtual Customer Customer { get; set; }
        public  virtual Product Product { get; set; }
    }
}