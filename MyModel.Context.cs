﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Test100Hours3
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MuDatabaseEntities : DbContext
    {
        public MuDatabaseEntities()
            : base("name=MuDatabaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<ContactStatu> ContactStatus { get; set; }
        public DbSet<ContactType> ContactTypes { get; set; }
        public DbSet<EmployeeMaster> EmployeeMasters { get; set; }
        public DbSet<JobFunction> JobFunctions { get; set; }
        public DbSet<Note> Notes { get; set; }
        public DbSet<RelationshipType> RelationshipTypes { get; set; }
    }
}
