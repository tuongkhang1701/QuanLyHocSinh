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
    public class PHANLOPsController : Controller
    {
        private QL_HOCSINH_THPTEntities db = new QL_HOCSINH_THPTEntities();

        // GET: PHANLOPs
        public ActionResult Index()
        {
            var pHANLOPs = db.PHANLOPs.Include(p => p.HOCSINH).Include(p => p.LOP).Include(p => p.LOP1).Include(p => p.NAMHOC);
            return View(pHANLOPs.ToList());
        }
        public ActionResult searchFunction()
        {
            List<PHANLOP> dsPhanLop = db.PHANLOPs.ToList();
            return View(dsPhanLop);
        }

        [HttpGet]
        public ActionResult searchFunction(string option, string search, int? pageNumber)
        {
            if (option == "Name")
            {
                return View(db.PHANLOPs.Where(n => n.HOCSINH.HOTENHOCSINH.StartsWith(search) || search == null).ToList().ToPagedList(pageNumber ?? 1, 3));
            }
            else if (option == "Class")
            {
                return View(db.PHANLOPs.Where(c => c.LOP.TENLOP.StartsWith(search) || search == null).ToList().ToPagedList(pageNumber ?? 1, 3));
            }
            else
            {
                return View(db.PHANLOPs.Where(y => y.NAMHOC.TENNAMHOC.StartsWith(search) || search == null).ToList().ToPagedList(pageNumber ?? 1, 3));
            }

        }
        // GET: PHANLOPs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PHANLOP pHANLOP = db.PHANLOPs.Find(id);
            if (pHANLOP == null)
            {
                return HttpNotFound();
            }
            return View(pHANLOP);
        }

        // GET: PHANLOPs/Create
        public ActionResult Create()
        {
            ViewBag.MAHOCSINH = new SelectList(db.HOCSINHs, "MAHOCSINH", "HOTENHOCSINH");
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP");
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP");
            ViewBag.MANAMHOC = new SelectList(db.NAMHOCs, "MANAMHOC", "TENNAMHOC");
            return View();
        }

        // POST: PHANLOPs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "STT,MANAMHOC,MALOP,MAHOCSINH")] PHANLOP pHANLOP)
        {
            if (ModelState.IsValid)
            {
                db.PHANLOPs.Add(pHANLOP);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MAHOCSINH = new SelectList(db.HOCSINHs, "MAHOCSINH", "HOTENHOCSINH", pHANLOP.MAHOCSINH);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", pHANLOP.MALOP);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", pHANLOP.MALOP);
            ViewBag.MANAMHOC = new SelectList(db.NAMHOCs, "MANAMHOC", "TENNAMHOC", pHANLOP.MANAMHOC);
            return View(pHANLOP);
        }

        // GET: PHANLOPs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PHANLOP pHANLOP = db.PHANLOPs.Find(id);
            if (pHANLOP == null)
            {
                return HttpNotFound();
            }
            ViewBag.MAHOCSINH = new SelectList(db.HOCSINHs, "MAHOCSINH", "HOTENHOCSINH", pHANLOP.MAHOCSINH);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", pHANLOP.MALOP);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", pHANLOP.MALOP);
            ViewBag.MANAMHOC = new SelectList(db.NAMHOCs, "MANAMHOC", "TENNAMHOC", pHANLOP.MANAMHOC);
            return View(pHANLOP);
        }

        // POST: PHANLOPs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "STT,MANAMHOC,MALOP,MAHOCSINH")] PHANLOP pHANLOP)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pHANLOP).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MAHOCSINH = new SelectList(db.HOCSINHs, "MAHOCSINH", "HOTENHOCSINH", pHANLOP.MAHOCSINH);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", pHANLOP.MALOP);
            ViewBag.MALOP = new SelectList(db.LOPs, "MALOP", "TENLOP", pHANLOP.MALOP);
            ViewBag.MANAMHOC = new SelectList(db.NAMHOCs, "MANAMHOC", "TENNAMHOC", pHANLOP.MANAMHOC);
            return View(pHANLOP);
        }

        // GET: PHANLOPs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PHANLOP pHANLOP = db.PHANLOPs.Find(id);
            if (pHANLOP == null)
            {
                return HttpNotFound();
            }
            return View(pHANLOP);
        }

        // POST: PHANLOPs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PHANLOP pHANLOP = db.PHANLOPs.Find(id);
            db.PHANLOPs.Remove(pHANLOP);
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
