using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StoreInventory.Models
{
    public partial class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double Weight { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
    }
}