/*!
 * An jQuery | zepto plugin for lazy loading images.
 * author -> jieyou
 * see https://github.com/jieyou/lazyload
 * use some tuupola's code https://github.com/tuupola/jquery_lazyload (BSD)
 * use component's throttle https://github.com/component/throttle (MIT)
 */
!function (a) {
  "function" == typeof define && define.amd ? define(["jquery"], a) : a(window.jQuery || window.Zepto);
}(function (a, b) {
  function g() {}function h(a, b) {
    var e;return e = b._$container == d ? ("innerHeight" in c ? c.innerHeight : d.height()) + d.scrollTop() : b._$container.offset().top + b._$container.height(), e <= a.offset().top - b.threshold;
  }function i(b, e) {
    var f;return f = e._$container == d ? d.width() + (a.fn.scrollLeft ? d.scrollLeft() : c.pageXOffset) : e._$container.offset().left + e._$container.width(), f <= b.offset().left - e.threshold;
  }function j(a, b) {
    var c;return c = b._$container == d ? d.scrollTop() : b._$container.offset().top, c >= a.offset().top + b.threshold + a.height();
  }function k(b, e) {
    var f;return f = e._$container == d ? a.fn.scrollLeft ? d.scrollLeft() : c.pageXOffset : e._$container.offset().left, f >= b.offset().left + e.threshold + b.width();
  }function l(a, b) {
    var c = 0;a.each(function (d, e) {
      function g() {
        f.trigger("_lazyload_appear"), c = 0;
      }var f = a.eq(d);if (!(f.width() <= 0 && f.height() <= 0 || "none" === f.css("display"))) if (b.vertical_only) {
        if (j(f, b)) ;else if (h(f, b)) {
          if (++c > b.failure_limit) return !1;
        } else g();
      } else if (j(f, b) || k(f, b)) ;else if (h(f, b) || i(f, b)) {
        if (++c > b.failure_limit) return !1;
      } else g();
    });
  }function m(a) {
    return a.filter(function (b, c) {
      return !a.eq(b)._lazyload_loadStarted;
    });
  }function n(a, b) {
    function h() {
      f = 0, g = +new Date(), e = a.apply(c, d), c = null, d = null;
    }var c,
        d,
        e,
        f,
        g = 0;return function () {
      c = this, d = arguments;var a = new Date() - g;return f || (a >= b ? h() : f = setTimeout(h, b - a)), e;
    };
  }var f,
      c = window,
      d = a(c),
      e = { threshold: 0, failure_limit: 0, event: "scroll", effect: "show", effect_params: null, container: c, data_attribute: "original", data_srcset_attribute: "original-srcset", skip_invisible: !0, appear: g, load: g, vertical_only: !1, check_appear_throttle_time: 300, url_rewriter_fn: g, no_fake_img_loader: !1, placeholder_data_img: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC", placeholder_real_img: "../../../../../ditu.baidu.cn/yyfm/lazyload/0.0.1/img/placeholder.png"/*tpa=http://ditu.baidu.cn/yyfm/lazyload/0.0.1/img/placeholder.png*/ };f = function () {
    var a = Object.prototype.toString;return function (b) {
      return a.call(b).replace("[object ", "").replace("]", "");
    };
  }(), a.fn.hasOwnProperty("lazyload") || (a.fn.lazyload = function (b) {
    var i,
        j,
        k,
        h = this;return a.isPlainObject(b) || (b = {}), a.each(e, function (g, h) {
      -1 != a.inArray(g, ["threshold", "failure_limit", "check_appear_throttle_time"]) ? "String" == f(b[g]) ? b[g] = parseInt(b[g], 10) : b[g] = h : "container" == g ? (b.hasOwnProperty(g) ? b[g] == c || b[g] == document ? b._$container = d : b._$container = a(b[g]) : b._$container = d, delete b.container) : !e.hasOwnProperty(g) || b.hasOwnProperty(g) && f(b[g]) == f(e[g]) || (b[g] = h);
    }), i = "scroll" == b.event, k = 0 == b.check_appear_throttle_time ? l : n(l, b.check_appear_throttle_time), j = i || "scrollstart" == b.event || "scrollstop" == b.event, h.each(function (c, d) {
      var e = this,
          f = h.eq(c),
          i = f.attr("src"),
          k = f.attr("data-" + b.data_attribute),
          l = b.url_rewriter_fn == g ? k : b.url_rewriter_fn.call(e, f, k),
          n = f.attr("data-" + b.data_srcset_attribute),
          o = f.is("img");return 1 == f._lazyload_loadStarted || i == l ? (f._lazyload_loadStarted = !0, void (h = m(h))) : (f._lazyload_loadStarted = !1, o && !i && f.one("error", function () {
        f.attr("src", b.placeholder_real_img);
      }).attr("src", b.placeholder_data_img), f.one("_lazyload_appear", function () {
        function i() {
          d && f.hide(), o ? (n && f.attr("srcset", n), l && f.attr("src", l)) : f.css("background-image", 'url("' + l + '")'), d && f[b.effect].apply(f, c ? b.effect_params : []), h = m(h);
        }var d,
            c = a.isArray(b.effect_params);f._lazyload_loadStarted || (d = "show" != b.effect && a.fn[b.effect] && (!b.effect_params || c && 0 == b.effect_params.length), b.appear != g && b.appear.call(e, f, h.length, b), f._lazyload_loadStarted = !0, b.no_fake_img_loader || n ? (b.load != g && f.one("load", function () {
          b.load.call(e, f, h.length, b);
        }), i()) : a("<img />").one("load", function () {
          i(), b.load != g && b.load.call(e, f, h.length, b);
        }).attr("src", l));
      }), void (j || f.on(b.event, function () {
        f._lazyload_loadStarted || f.trigger("_lazyload_appear");
      })));
    }), j && b._$container.on(b.event, function () {
      k(h, b);
    }), d.on("resize load", function () {
      k(h, b);
    }), a(function () {
      k(h, b);
    }), this;
  });
});