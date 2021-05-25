using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using QuanLyHocSinhTHPT.Models;

namespace QuanLyHocSinhTHPT.Controllers
{
    public class GIAOVIENsController : Controller
    {
        private QL_HOCSINH_THPTEntities db = new QL_HOCSINH_THPTEntities();

        // GET: GIAOVIENs
        public ActionResult Index()
        {
            var gIAOVIENs = db.GIAOVIENs.Include(g => g.GIOITINH).Include(g => g.MONHOC);
            return View(gIAOVIENs.ToList());
        }

        // GET: GIAOVIENs/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GIAOVIEN gIAOVIEN = db.GIAOVIENs.Find(id);
            if (gIAOVIEN == null)
            {
                return HttpNotFound();
            }
            return View(gIAOVIEN);
        }

        // GET: GIAOVIENs/Create
        public ActionResult Create()
        {
            ViewBag.MAGIOITINH = new SelectList(db.GIOITINHs, "MAGIOITINH", "TENGIOITINH");
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC");
            return View();
        }

        // POST: GIAOVIENs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MAGIAOVIEN,TENGIAOVIEN,MAGIOITINH,DIACHI,DIENTHOAI,MAMONHOC")] GIAOVIEN gIAOVIEN)
        {
            if (ModelState.IsValid)
            {
                db.GIAOVIENs.Add(gIAOVIEN);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MAGIOITINH = new SelectList(db.GIOITINHs, "MAGIOITINH", "TENGIOITINH", gIAOVIEN.MAGIOITINH);
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC", gIAOVIEN.MAMONHOC);
            return View(gIAOVIEN);
        }

        // GET: GIAOVIENs/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GIAOVIEN gIAOVIEN = db.GIAOVIENs.Find(id);
            if (gIAOVIEN == null)
            {
                return HttpNotFound();
            }
            ViewBag.MAGIOITINH = new SelectList(db.GIOITINHs, "MAGIOITINH", "TENGIOITINH", gIAOVIEN.MAGIOITINH);
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC", gIAOVIEN.MAMONHOC);
            return View(gIAOVIEN);
        }

        // POST: GIAOVIENs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MAGIAOVIEN,TENGIAOVIEN,MAGIOITINH,DIACHI,DIENTHOAI,MAMONHOC")] GIAOVIEN gIAOVIEN)
        {
            if (ModelState.IsValid)
            {
                db.Entry(gIAOVIEN).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MAGIOITINH = new SelectList(db.GIOITINHs, "MAGIOITINH", "TENGIOITINH", gIAOVIEN.MAGIOITINH);
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC", gIAOVIEN.MAMONHOC);
            return View(gIAOVIEN);
        }

        // GET: GIAOVIENs/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GIAOVIEN gIAOVIEN = db.GIAOVIENs.Find(id);
            if (gIAOVIEN == null)
            {
                return HttpNotFound();
            }
            return View(gIAOVIEN);
        }

        // POST: GIAOVIENs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            GIAOVIEN gIAOVIEN = db.GIAOVIENs.Find(id);
            db.GIAOVIENs.Remove(gIAOVIEN);
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
