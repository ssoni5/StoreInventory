using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace StoreInventory.Models
{
    public partial class StoreInventoryContext : DbContext
    {
        public StoreInventoryContext()
            : base("name=StoreInventoryContext")
        {
            Database.SetInitializer<StoreInventoryContext>(new DropCreateDatabaseAlways<StoreInventoryContext>());
        }

        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Transactions> Transactions { get; set; }

    }
}