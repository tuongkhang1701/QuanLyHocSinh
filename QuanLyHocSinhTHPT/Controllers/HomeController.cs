using QuanLyHocSinhTHPT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace QuanLyHocSinhTHPT.Controllers
{

    public class HomeController : Controller
    {
        private QL_HOCSINH_THPTEntities db = new QL_HOCSINH_THPTEntities();
        //[Authorize(Users = "giaovu, giaovien")]
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(NGUOIDUNG login)
        {
            if (ModelState.IsValid)
            {
                using (QL_HOCSINH_THPTEntities db = new QL_HOCSINH_THPTEntities())
                {

                    var dataItem = (from nd in db.NGUOIDUNGs
                                    join lnd in db.LOAINGUOIDUNGs
                                    on nd.MALOAIND equals lnd.MALOAIND
                                    where nd.TENDANGNHAP == login.TENDANGNHAP && nd.MATKHAU == login.MATKHAU
                                    select new { TenDNhap = nd.TENDANGNHAP, loaiNguoiDung = lnd.TENLOAIND }).FirstOrDefault();
                    if (dataItem != null)
                    {
                        Session["userName"] = dataItem.loaiNguoiDung;

                        FormsAuthentication.SetAuthCookie(dataItem.TenDNhap, false);
                        return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        return RedirectToAction("loginFalse", "Error");
                    }
                }
            }
            return View(login);
        }
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            return Redirect("/Home/Login");
        }
    }
}