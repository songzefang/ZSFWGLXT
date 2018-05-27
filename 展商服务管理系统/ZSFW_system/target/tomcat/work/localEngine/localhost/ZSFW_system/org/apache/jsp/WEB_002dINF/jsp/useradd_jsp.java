package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class useradd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(2);
    _jspx_dependants.add("/WEB-INF/jsp/common/head.jsp");
    _jspx_dependants.add("/WEB-INF/jsp/./common/foot.jsp");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head lang=\"en\">\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>超市订单管理系统</title>\r\n");
      out.write("    <link type=\"text/css\" rel=\"stylesheet\" href=\"statics/css/style.css\" />\r\n");
      out.write("    <link type=\"text/css\" rel=\"stylesheet\" href=\"statics/css/public.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!--头部-->\r\n");
      out.write("    <header class=\"publicHeader\">\r\n");
      out.write("        <h1>超市订单管理系统</h1>\r\n");
      out.write("        <div class=\"publicHeaderR\">\r\n");
      out.write("            <p><span>下午好！</span><span style=\"color: #fff21b\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userSession.username }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("</span> , 欢迎你！</p>\r\n");
      out.write("            <a href=\"logout.do\">退出</a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("<!--时间-->\r\n");
      out.write("    <section class=\"publicTime\">\r\n");
      out.write("        <span id=\"time\">2015年1月1日 11:11  星期一</span>\r\n");
      out.write("        <a href=\"#\">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>\r\n");
      out.write("    </section>\r\n");
      out.write(" <!--主体内容-->\r\n");
      out.write(" <section class=\"publicMian \">\r\n");
      out.write("     <div class=\"left\">\r\n");
      out.write("         <h2 class=\"leftH2\"><span class=\"span1\"></span>功能列表 <span></span></h2>\r\n");
      out.write("         <nav>\r\n");
      out.write("             <ul class=\"list\">\r\n");
      out.write("                 <li ><a href=\"bill.do\">订单管理</a></li>\r\n");
      out.write("              <li><a href=\"provider.do\">供应商管理</a></li>\r\n");
      out.write("              <li><a href=\"tolist.do\">用户管理</a></li>\r\n");
      out.write("              <li><a href=\"pwdmodify.do\">密码修改</a></li>\r\n");
      out.write("              <li><a href=\"logout.do\">退出系统</a></li>\r\n");
      out.write("             </ul>\r\n");
      out.write("         </nav>\r\n");
      out.write("     </div>\r\n");
      out.write("     <input type=\"hidden\" id=\"path\" name=\"path\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"/>\r\n");
      out.write("     <input type=\"hidden\" id=\"referer\" name=\"referer\" value=\"");
      out.print(request.getHeader("Referer"));
      out.write('"');
      out.write('/');
      out.write('>');
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"right\">\r\n");
      out.write("        <div class=\"location\">\r\n");
      out.write("            <strong>你现在所在的位置是:</strong>\r\n");
      out.write("            <span>用户管理页面 >> 用户添加页面</span>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"providerAdd\">\r\n");
      out.write("            <form id=\"userForm\" name=\"userForm\" method=\"post\" action=\"usersave.do\" enctype=\"multipart/form-data\">\r\n");
      out.write("\t\t\t\t<input type=\"hidden\" name=\"method\" value=\"add\">\r\n");
      out.write("                <!--div的class 为error是验证错误，ok是验证成功-->\r\n");
      out.write("                <div>\r\n");
      out.write("                    <label for=\"userCode\">用户编码：</label>\r\n");
      out.write("                    <input type=\"text\" name=\"usercode\" id=\"userCode\" value=\"\"> \r\n");
      out.write("\t\t\t\t\t<!-- 放置提示信息 -->\r\n");
      out.write("\t\t\t\t\t<font color=\"red\"></font>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <label for=\"userName\">用户名称：</label>\r\n");
      out.write("                    <input type=\"text\" name=\"username\" id=\"userName\" value=\"\"> \r\n");
      out.write("\t\t\t\t\t<font color=\"red\"></font>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <label for=\"userPassword\">用户密码：</label>\r\n");
      out.write("                    <input type=\"password\" name=\"userpassword\" id=\"userPassword\" value=\"\"> \r\n");
      out.write("\t\t\t\t\t<font color=\"red\"></font>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <label for=\"ruserPassword\">确认密码：</label>\r\n");
      out.write("                    <input type=\"password\" name=\"ruserPassword\" id=\"ruserPassword\" value=\"\"> \r\n");
      out.write("\t\t\t\t\t<font color=\"red\"></font>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <label >用户性别：</label>\r\n");
      out.write("\t\t\t\t\t<select name=\"gender\" id=\"gender\">\r\n");
      out.write("\t\t\t\t\t    <option value=\"1\" selected=\"selected\">男</option>\r\n");
      out.write("\t\t\t\t\t    <option value=\"2\">女</option>\r\n");
      out.write("\t\t\t\t\t </select>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <label for=\"birthday\">出生日期：</label>\r\n");
      out.write("                    <input type=\"text\" Class=\"Wdate\" id=\"birthday\" name=\"birthday\" \r\n");
      out.write("\t\t\t\t\treadonly=\"readonly\" onclick=\"WdatePicker();\">\r\n");
      out.write("\t\t\t\t\t<font color=\"red\"></font>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <label for=\"phone\">用户电话：</label>\r\n");
      out.write("                    <input type=\"text\" name=\"phone\" id=\"phone\" value=\"\"> \r\n");
      out.write("\t\t\t\t\t<font color=\"red\"></font>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <label for=\"address\">用户地址：</label>\r\n");
      out.write("                   <input name=\"address\" id=\"address\"  value=\"\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <label >用户角色：</label>\r\n");
      out.write("                    <!-- 列出所有的角色分类 -->\r\n");
      out.write("\t\t\t\t\t<!-- <select name=\"userRole\" id=\"userRole\"></select> -->\r\n");
      out.write("\t\t\t\t\t<select name=\"userrole\" id=\"userRole\">\r\n");
      out.write("\t\t\t\t\t</select>\r\n");
      out.write("\t        \t\t<font color=\"red\"></font>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div>\r\n");
      out.write("                \t<input type=\"hidden\" id=\"errorinfo\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${uploadFileError}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"/>\r\n");
      out.write("                    <label for=\"a_idPicPath\">证件照：</label>\r\n");
      out.write("                   \t<input type=\"file\" name=\"attachs\" id=\"a_idPicPath\"/>\r\n");
      out.write("                    <font color=\"red\"></font>\r\n");
      out.write("                </div>\r\n");
      out.write("               <div>\r\n");
      out.write("                \t<input type=\"hidden\" id=\"errorinfo_wp\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${uploadWpError}", java.lang.String.class, (PageContext)_jspx_page_context, null, false));
      out.write("\"/>\r\n");
      out.write("                    <label for=\"a_workPicPath\">工作证照片：</label>\r\n");
      out.write("                   \t<input type=\"file\" name=\"attachs\" id=\"a_workPicPath\"/>\r\n");
      out.write("                    <font color=\"red\"></font>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"providerAddBtn\">\r\n");
      out.write("                    <input type=\"button\" name=\"add\" id=\"add\" value=\"保存\" >\r\n");
      out.write("\t\t\t\t\t<input type=\"button\" id=\"back\" name=\"back\" value=\"返回\" >\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("</div>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<footer class=\"footer\">\r\n");
      out.write("    版权所有\r\n");
      out.write("</footer>\r\n");
      out.write("<script type=\"text/javascript\" src=\"statics/js/time.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"statics/js/jquery-1.8.3.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"statics/js/common.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"statics/calendar/WdatePicker.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"statics/js/useradd.js\"></script>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
