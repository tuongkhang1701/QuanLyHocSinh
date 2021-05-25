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
    public class HOCSINHsController : Controller
    {
        private QL_HOCSINH_THPTEntities db = new QL_HOCSINH_THPTEntities();


        // GET: HOCSINHs
        public ActionResult Index()
        {
            var hOCSINHs = db.HOCSINHs.Include(h => h.DANTOC).Include(h => h.GIOITINH).Include(h => h.TONGIAO);
            return View(hOCSINHs.ToList());
        }

        // GET: HOCSINHs/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HOCSINH hOCSINH = db.HOCSINHs.Find(id);
            if (hOCSINH == null)
            {
                return HttpNotFound();
            }
            return View(hOCSINH);
        }

        // GET: HOCSINHs/Create
        public ActionResult Create()
        {
            ViewBag.MADANTOC = new SelectList(db.DANTOCs, "MADANTOC", "TENDANTOC");
            ViewBag.MAGIOITINH = new SelectList(db.GIOITINHs, "MAGIOITINH", "TENGIOITINH");
            ViewBag.MATONGIAO = new SelectList(db.TONGIAOs, "MATONGIAO", "TENTONGIAO");
            return View();
        }

        // POST: HOCSINHs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MAHOCSINH,HOTENHOCSINH,MAGIOITINH,NGAYSINH,NOISINH,MADANTOC,MATONGIAO")] HOCSINH hOCSINH)
        {
            if (ModelState.IsValid)
            {
                db.HOCSINHs.Add(hOCSINH);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MADANTOC = new SelectList(db.DANTOCs, "MADANTOC", "TENDANTOC", hOCSINH.MADANTOC);
            ViewBag.MAGIOITINH = new SelectList(db.GIOITINHs, "MAGIOITINH", "TENGIOITINH", hOCSINH.MAGIOITINH);
            ViewBag.MATONGIAO = new SelectList(db.TONGIAOs, "MATONGIAO", "TENTONGIAO", hOCSINH.MATONGIAO);
            return View(hOCSINH);
        }

        // GET: HOCSINHs/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HOCSINH hOCSINH = db.HOCSINHs.Find(id);
            if (hOCSINH == null)
            {
                return HttpNotFound();
            }
            ViewBag.MADANTOC = new SelectList(db.DANTOCs, "MADANTOC", "TENDANTOC", hOCSINH.MADANTOC);
            ViewBag.MAGIOITINH = new SelectList(db.GIOITINHs, "MAGIOITINH", "TENGIOITINH", hOCSINH.MAGIOITINH);
            ViewBag.MATONGIAO = new SelectList(db.TONGIAOs, "MATONGIAO", "TENTONGIAO", hOCSINH.MATONGIAO);
            return View(hOCSINH);
        }

        // POST: HOCSINHs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MAHOCSINH,HOTENHOCSINH,MAGIOITINH,NGAYSINH,NOISINH,MADANTOC,MATONGIAO")] HOCSINH hOCSINH)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hOCSINH).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MADANTOC = new SelectList(db.DANTOCs, "MADANTOC", "TENDANTOC", hOCSINH.MADANTOC);
            ViewBag.MAGIOITINH = new SelectList(db.GIOITINHs, "MAGIOITINH", "TENGIOITINH", hOCSINH.MAGIOITINH);
            ViewBag.MATONGIAO = new SelectList(db.TONGIAOs, "MATONGIAO", "TENTONGIAO", hOCSINH.MATONGIAO);
            return View(hOCSINH);
        }

        // GET: HOCSINHs/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HOCSINH hOCSINH = db.HOCSINHs.Find(id);
            if (hOCSINH == null)
            {
                return HttpNotFound();
            }
            return View(hOCSINH);
        }

        // POST: HOCSINHs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            HOCSINH hOCSINH = db.HOCSINHs.Find(id);
            db.HOCSINHs.Remove(hOCSINH);
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
