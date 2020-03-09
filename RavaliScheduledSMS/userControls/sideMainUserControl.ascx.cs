using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RavaliScheduledSMS.userControls
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            liCntMainMenu.Text = MenuFrame_Get(Request.RawUrl.Replace("/", ""));

        }

        public string MenuFrame_Get(string activeUrl)
        {
            string ActiveItem = "";

            ActiveItem = "<ul class='navigation'>" +
                         "<li><a href = 'Registration' title=''><span class='fa fa-user-circle style = 'font-size: 18px; color: white'></span>&nbsp;&nbsp;Registarion<strong></strong></a></li>" +
                         "<li><a href = 'Login%20' title=''><span class='fa fa-user' style = 'font-size: 18px; color: white'></span>&nbsp;&nbsp;Login <strong></strong> </a></li>" +
                         "<li><a href = 'AddContacts' title=''><span class='fa fa-address-book style='font - size: 18px; color: white'></span>&nbsp;&nbsp;AddContacts <strong></strong></a></li>" +
                         "<li><a href = '#' title=''><span class='fa fa-sign-out' style = 'font-size: 18px; color: white'></span>&nbsp;&nbsp;Logout<strong></strong></a></li>" +                         
                         "</ul>";
            return ActiveItem;
        }
    }
}


                                       