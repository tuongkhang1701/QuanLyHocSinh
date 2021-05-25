using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyHocSinhTHPT.Controllers
{
    public class ErrorController : Controller
    {
        //[Authorize(Users = "giaovien")]
        // GET: Error
        public ActionResult Error()
        {
            return View();
        }
        public ActionResult loginFalse()
        {
            return View();
        }
        public ActionResult errorPage()
        {
            return View();
        }
    }
}