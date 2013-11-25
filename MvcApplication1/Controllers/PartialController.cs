using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    public class PartialController : Controller
    {
        //
        // GET: /Partial/

        public ActionResult Index()
        {
            return View("/Views/Render/View1.aspx");
        }

        [HttpPost]
        public PartialViewResult p1(string s1, string s2)
        {
            ViewData.Clear();
            ViewData.Add("Param1", s1);
            ViewData.Add("Param2", s2);
            return PartialView("/Views/Render/v2.ascx");
        }

        public PartialViewResult p2(string alpha, string beta)
        {
            ViewData.Clear();
            ViewData.Add("Param1", alpha);
            ViewData.Add("Param2", beta);

            return PartialView("/Views/Render/v3.ascx");
        }
    }
}
