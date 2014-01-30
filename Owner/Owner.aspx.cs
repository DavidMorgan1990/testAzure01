using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test100Hours3;

namespace Test100Hours3
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateDatabaseData();
                lblMessage.Text = "Current Database Data";
            }
        }

        private void populateDatabaseData()
        {
            using (MuDatabaseEntities dc = new MuDatabaseEntities())
            {
                gvData.DataSource = dc.EmployeeMasters.ToList();
                gvData.DataBind();
            }
        }

        protected void btnImportFromCSV_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile.ContentType == "text/csv" || FileUpload1.PostedFile.ContentType == "application/vnd.ms-excel")
            {
                string fileName = Path.Combine(Server.MapPath("~/UploadDocuments"), new Guid() + ".csv");
                try
                {
                    FileUpload1.PostedFile.SaveAs(fileName);

                    string[] Lines = File.ReadAllLines(fileName);
                    string[] Fields;

                    //Remove Header Lines
                    Lines = Lines.Skip(1).ToArray();
                    List<EmployeeMaster> emList = new List<EmployeeMaster>();
                    foreach (var line in Lines)
                    {
                        Fields = line.Split(new char[] { ',' });
                        emList.Add(
                            new EmployeeMaster
                            {
                                ContactID = Fields[0].Replace("\"", ""), //remove ""
                                ContactStatus = Fields[1].Replace("\"", ""),
                                DateLastUpdated = Fields[2].Replace("\"", ""),
                                DateCreated = Fields[3].Replace("\"", ""),
                                CreatedBy = Fields[4].Replace("\"", ""),
                                UpdatedBy = Fields[5].Replace("\"", ""),
                                FirstName = Fields[6].Replace("\"", ""),
                                LastName = Fields[7].Replace("\"", ""),
                                Organization = Fields[8].Replace("\"", ""),
                                RelationshipType = Fields[9].Replace("\"", ""),
                                ContactType = Fields[10].Replace("\"", ""),
                                JobTitle = Fields[11].Replace("\"", ""),
                                JobFunction = Fields[12].Replace("\"", ""),
                                DoNotContact = Fields[13].Replace("\"", ""),
                                OptedInEmail = Fields[14].Replace("\"", ""),
                                Description = Fields[15].Replace("\"", ""),
                                Address1 = Fields[16].Replace("\"", ""),
                                Address2 = Fields[17].Replace("\"", ""),
                                City = Fields[18].Replace("\"", ""),
                                State = Fields[19].Replace("\"", ""),
                                PostCode = Fields[20].Replace("\"", ""),
                                Country = Fields[21].Replace("\"", ""),
                                Email = Fields[22].Replace("\"", ""),
                                Website = Fields[23].Replace("\"", ""),
                                OtherSocialProfiles = Fields[24].Replace("\"", ""),
                                LinkedinProfile = Fields[25].Replace("\"", ""),
                                ContactName = Fields[26].Replace("\"", ""),
                            });
                    }

                    //update database data
                    using (MuDatabaseEntities dc = new MuDatabaseEntities())
                    {
                        foreach (var i in emList)
                        {
                            var v = dc.EmployeeMasters.Where(a => a.ContactID.Equals(i.ContactID)).FirstOrDefault();
                            if (v != null)
                            {
                                v.ContactID = i.ContactID;
                                v.ContactStatus = i.ContactStatus;
                                v.DateLastUpdated = i.DateLastUpdated;
                                v.DateCreated = i.DateCreated;
                                v.CreatedBy = i.CreatedBy;
                                v.UpdatedBy = i.UpdatedBy;
                                v.FirstName = i.FirstName;
                                v.LastName = i.LastName;
                                v.Organization = i.Organization;
                                v.RelationshipType = i.RelationshipType;
                                v.ContactType = i.ContactType;
                                v.JobTitle = i.JobTitle;
                                v.JobFunction = i.JobFunction;
                                v.DoNotContact = i.DoNotContact;
                                v.OptedInEmail = i.OptedInEmail;
                                v.Description = i.Description;
                                v.Address1 = i.Address1;
                                v.Address2 = i.Address2;
                                v.City = i.City;
                                v.State = i.State;
                                v.PostCode = i.PostCode;
                                v.Country = i.Country;
                                v.Email = i.Email;
                                v.Website = i.Website;
                                v.OtherSocialProfiles = i.OtherSocialProfiles;
                                v.LinkedinProfile = i.LinkedinProfile;
                                v.ContactName = i.ContactName;
                            }
                            else
                            {
                                dc.EmployeeMasters.Add(i);
                            }
                        }

                        dc.SaveChanges();

                        // populate updated data
                        populateDatabaseData();
                        lblMessage.Text = "sucessfully Done. Now upto data is following.....";
                    }
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void btnExportToCSV_Click(object sender, EventArgs e)
        {
            List<EmployeeMaster> emList = new List<EmployeeMaster>();
            using (MuDatabaseEntities dc = new MuDatabaseEntities())
            {
                emList = dc.EmployeeMasters.ToList();
            }
            if (emList.Count > 0)
            {
                string header = @"""ContactID"",""ContactStatus"",""DateLastUpdated"",""DateCreated"",""CreatedBy"",""UpdatedBy"",""FirstName"",""LastName"",""Organization"",""RelationshipType"",""ContactType"",""JobTitle"",""JobFunction"",""DoNotContact"",""OptedInEmail"",""Description"",""Address1"",""Address2"",""City"",""State"",""PostCode"",""Country"",""Email"",""Website"",""OtherSocialProfiles"",""OtherSocialProfiles"",""ContactName""";
                StringBuilder sb = new StringBuilder();
                sb.AppendLine(header);

                foreach (var i in emList)
                {
                    sb.AppendLine(string.Join(",",
                        string.Format(@"""{0}""", i.ContactID),
                        string.Format(@"""{0}""", i.ContactStatus),
                        string.Format(@"""{0}""", i.DateLastUpdated),
                        string.Format(@"""{0}""", i.DateCreated),
                        string.Format(@"""{0}""", i.CreatedBy),
                        string.Format(@"""{0}""", i.UpdatedBy),
                        string.Format(@"""{0}""", i.FirstName),
                        string.Format(@"""{0}""", i.LastName),
                        string.Format(@"""{0}""", i.Organization),
                        string.Format(@"""{0}""", i.RelationshipType),
                        string.Format(@"""{0}""", i.ContactType),
                        string.Format(@"""{0}""", i.JobTitle),
                        string.Format(@"""{0}""", i.JobFunction),
                        string.Format(@"""{0}""", i.DoNotContact),
                        string.Format(@"""{0}""", i.OptedInEmail),
                        string.Format(@"""{0}""", i.Description),
                        string.Format(@"""{0}""", i.Address1),
                        string.Format(@"""{0}""", i.Address2),
                        string.Format(@"""{0}""", i.City),
                        string.Format(@"""{0}""", i.State),
                        string.Format(@"""{0}""", i.PostCode),
                        string.Format(@"""{0}""", i.Country),
                        string.Format(@"""{0}""", i.Email),
                        string.Format(@"""{0}""", i.Website),
                        string.Format(@"""{0}""", i.OtherSocialProfiles),
                        string.Format(@"""{0}""", i.LinkedinProfile),
                        string.Format(@"""{0}""", i.ContactName)));
                        
                }

                //Download Here

                HttpContext context = HttpContext.Current;
                context.Response.Write(sb.ToString());
                context.Response.ContentType = "text/csv";
                context.Response.AddHeader("Content-Disposition", "attachment; filename=EmployeeData.csv");
                context.Response.End();

            }
            else
            {
                lblMessage.Text = "Data not found!";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Owner.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("OwnerFields.aspx");
        }
    }
}