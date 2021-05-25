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
    public class PHANCONGsController : Controller
    {
        private QL_HOCSINH_THPTEntities db = new QL_HOCSINH_THPTEntities();

        // GET: PHANCONGs
        public ActionResult Index()
        {
            var pHANCONGs = db.PHANCONGs.Include(p => p.GIAOVIEN).Include(p => p.LOP).Include(p => p.MONHOC).Include(p => p.NAMHOC);
            return View(pHANCONGs.ToList());
        }

        // GET: PHANCONGs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PHANCONG pHANCONG = db.PHANCONGs.Find(id);
            if (pHANCONG == null)
            {
                return HttpNotFound();
            }
            return View(pHANCONG);
        }

        // GET: PHANCONGs/Create
        public ActionResult Create()
        {
            ViewBag.MAGIAOVIEN = new SelectList(db.GIAOVIENs, "MAGIAOVIEN", "TENGIAOVIEN");
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP");
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC");
            ViewBag.MANAMHOC = new SelectList(db.NAMHOCs, "MANAMHOC", "TENNAMHOC");
            return View();
        }

        // POST: PHANCONGs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "STT,MANAMHOC,MALOP,MAMONHOC,MAGIAOVIEN")] PHANCONG pHANCONG)
        {
            var checkMaGV = db.PHANCONGs.Any(x => x.MAGIAOVIEN == pHANCONG.MAGIAOVIEN);
            if (checkMaGV)
            {
                return RedirectToAction("errorPage", "Error");
            }
            if (ModelState.IsValid)
            {
                db.PHANCONGs.Add(pHANCONG);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MAGIAOVIEN = new SelectList(db.GIAOVIENs, "MAGIAOVIEN", "TENGIAOVIEN", pHANCONG.MAGIAOVIEN);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", pHANCONG.MALOP);
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC", pHANCONG.MAMONHOC);
            ViewBag.MANAMHOC = new SelectList(db.NAMHOCs, "MANAMHOC", "TENNAMHOC", pHANCONG.MANAMHOC);
            return View(pHANCONG);
        }
        // GET: PHANCONGs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (User.IsInRole("giaovien"))
            {
                return RedirectToAction("Error", "Error");
            }
            else
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                PHANCONG pHANCONG = db.PHANCONGs.Find(id);
                if (pHANCONG == null)
                {
                    return HttpNotFound();
                }
                ViewBag.MAGIAOVIEN = new SelectList(db.GIAOVIENs, "MAGIAOVIEN", "TENGIAOVIEN", pHANCONG.MAGIAOVIEN);
                ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", pHANCONG.MALOP);
                ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC", pHANCONG.MAMONHOC);
                ViewBag.MANAMHOC = new SelectList(db.NAMHOCs, "MANAMHOC", "TENNAMHOC", pHANCONG.MANAMHOC);
                return View(pHANCONG);
            }

        }
        // POST: PHANCONGs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "STT,MANAMHOC,MALOP,MAMONHOC,MAGIAOVIEN")] PHANCONG pHANCONG)
        {
            if (ModelState.IsValid)
            {
                var checkMaGV = db.PHANCONGs.Any(x => x.MAGIAOVIEN == pHANCONG.MAGIAOVIEN);
                if (checkMaGV)
                {
                    return RedirectToAction("errorPage", "Error");
                }
                db.Entry(pHANCONG).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MAGIAOVIEN = new SelectList(db.GIAOVIENs, "MAGIAOVIEN", "TENGIAOVIEN", pHANCONG.MAGIAOVIEN);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", pHANCONG.MALOP);
            ViewBag.MAMONHOC = new SelectList(db.MONHOCs, "MAMONHOC", "TENMONHOC", pHANCONG.MAMONHOC);
            ViewBag.MANAMHOC = new SelectList(db.NAMHOCs, "MANAMHOC", "TENNAMHOC", pHANCONG.MANAMHOC);
            return View(pHANCONG);
        }

        // GET: PHANCONGs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (User.IsInRole("giaovien"))
            {
                return RedirectToAction("Error", "Error");
            }
            else
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                PHANCONG pHANCONG = db.PHANCONGs.Find(id);
                if (pHANCONG == null)
                {
                    return HttpNotFound();
                }
                return View(pHANCONG);
            }
        }

        // POST: PHANCONGs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PHANCONG pHANCONG = db.PHANCONGs.Find(id);
            db.PHANCONGs.Remove(pHANCONG);
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
