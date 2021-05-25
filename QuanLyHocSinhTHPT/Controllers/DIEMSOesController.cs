using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using PagedList;
using QuanLyHocSinhTHPT.Models;

namespace QuanLyHocSinhTHPT.Controllers
{
    public class DIEMSOesController : Controller
    {
        private QL_HOCSINH_THPTEntities db = new QL_HOCSINH_THPTEntities();

        // GET: DIEMSOes
        public ActionResult Index()
        {
            var dIEMSOes = db.DIEMSOes.Include(d => d.HOCSINH).Include(d => d.LOP).Include(d => d.MONHOC).Include(d => d.HOCKY);
            return View(dIEMSOes.ToList());
        }
        public ActionResult searchDiem()
        {
            List<DIEMSO> listDiem = db.DIEMSOes.ToList();
            return View(listDiem);
        }
        [HttpGet]
        public ActionResult searchDiem(string option, string search, int? pageNumber)
        {
            if (option == "Name")
            {
                return View(db.DIEMSOes.Where(n => n.HOCSINH.HOTENHOCSINH.StartsWith(search) || search == null).ToList().ToPagedList(pageNumber ?? 1, 3));
            }
            else if (option == "Class")
            {
                return View(db.DIEMSOes.Where(c => c.LOP.TENLOP.StartsWith(search) || search == null).ToList().ToPagedList(pageNumber ?? 1, 3));
            }
            else if (option == "Term")
            {
                return View(db.DIEMSOes.Where(t => t.HOCKY.TENHOCKY.StartsWith(search) || search == null).ToList().ToPagedList(pageNumber ?? 1, 3));
            }
            else
            {
                return View(db.DIEMSOes.Where(o => o.MONHOC.TENMONHOC.StartsWith(search) || search == null).ToList().ToPagedList(pageNumber ?? 1, 3));
            }

        }
        // GET: DIEMSOes/Details/5
        public ActionResult Details(string maHocSinh, string maMonHoc, string maHocKy, string maLop)
        {
            if (maHocSinh == null || maMonHoc == null || maHocKy == null || maLop == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DIEMSO dIEMSO = db.DIEMSOes.Find(maHocSinh, maMonHoc, maHocKy, maLop);
            if (dIEMSO == null)
            {
                return HttpNotFound();
            }
            return View(dIEMSO);
        }

        // GET: DIEMSOes/Create
        public ActionResult Create()
        {

            ViewBag.MAHOCSINH = new SelectList(db.HOCSINHs, "MAHOCSINH", "HOTENHOCSINH");
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP");
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC");
            ViewBag.MAHOCKY = new SelectList(db.HOCKies, "MAHOCKY", "TENHOCKY");
            return View();
        }

        // POST: DIEMSOes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MAHOCSINH,MAMONHOC,MAHOCKY,MALOP,DIEMKTMIENG,DIEMKT15PH,DIEMKT45P,DIEMTHICUOIKY,DTB")] DIEMSO dIEMSO)
        {
            if (ModelState.IsValid)
            {
                Session["diemTB"] = dIEMSO.DTB = (dIEMSO.DIEMKTMIENG + dIEMSO.DIEMKTMIENG + (dIEMSO.DIEMKT45P * 2) + (dIEMSO.DIEMTHICUOIKY * 3)) / 7;
                db.DIEMSOes.Add(dIEMSO);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MAHOCSINH = new SelectList(db.HOCSINHs, "MAHOCSINH", "HOTENHOCSINH", dIEMSO.MAHOCSINH);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", dIEMSO.MALOP);
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC", dIEMSO.MAMONHOC);
            ViewBag.MAHOCKY = new SelectList(db.HOCKies, "MAHOCKY", "TENHOCKY", dIEMSO.MAHOCKY);
            return View(dIEMSO);
        }

        // GET: DIEMSOes/Edit/5
        public ActionResult Edit(string maHocSinh, string maMonHoc, string maHocKy, string maLop)
        {

            if (maHocSinh == null || maMonHoc == null || maHocKy == null || maLop == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DIEMSO dIEMSO = db.DIEMSOes.Find(maHocSinh, maMonHoc, maHocKy, maLop);
            if (dIEMSO == null)
            {
                return HttpNotFound();
            }
            ViewBag.MAHOCSINH = new SelectList(db.HOCSINHs, "MAHOCSINH", "HOTENHOCSINH", dIEMSO.MAHOCSINH);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", dIEMSO.MALOP);
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC", dIEMSO.MAMONHOC);
            ViewBag.MAHOCKY = new SelectList(db.HOCKies, "MAHOCKY", "TENHOCKY", dIEMSO.MAHOCKY);
            return View(dIEMSO);

        }

        // POST: DIEMSOes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MAHOCSINH,MAMONHOC,MAHOCKY,MALOP,DIEMKTMIENG,DIEMKT15PH,DIEMKT45P,DIEMTHICUOIKY,DTB")] DIEMSO dIEMSO)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dIEMSO).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MAHOCSINH = new SelectList(db.HOCSINHs, "MAHOCSINH", "HOTENHOCSINH", dIEMSO.MAHOCSINH);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", dIEMSO.MALOP);
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC", dIEMSO.MAMONHOC);
            ViewBag.MAHOCKY = new SelectList(db.HOCKies, "MAHOCKY", "TENHOCKY", dIEMSO.MAHOCKY);
            return View(dIEMSO);
        }

        // GET: DIEMSOes/Delete/5
        public ActionResult Delete(string maHocSinh, string maMonHoc, string maHocKy, string maLop)
        {
            if (User.IsInRole("giaovien"))
            {
                return RedirectToAction("Error", "Error");
            }
            else
            {
                if (maHocSinh == null || maMonHoc == null || maHocKy == null || maLop == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                DIEMSO dIEMSO = db.DIEMSOes.Find(maHocSinh, maMonHoc, maHocKy, maLop);
                if (dIEMSO == null)
                {
                    return HttpNotFound();
                }
                return View(dIEMSO);
            }

        }

        // POST: DIEMSOes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string maHocSinh, string maMonHoc, string maHocKy, string maLop)
        {
            DIEMSO dIEMSO = db.DIEMSOes.Find(maHocSinh, maMonHoc, maHocKy, maLop);
            db.DIEMSOes.Remove(dIEMSO);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            return Redirect("/Home/Login");
        }
    }
}
