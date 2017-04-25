<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.cfg.Configuration" %>
<%@ page import="entity.User" %>
<%@ page import="org.hibernate.Session" %><%--
  Created by IntelliJ IDEA.
  User: hjm0928
  Date: 2017/4/24
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <%
      SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        Session session1 =sessionFactory.openSession();
        User user = session1.get(User.class,1);
        user.setUserPetName("幸福");
        session.setAttribute("User", user);
        session1.close();
        sessionFactory.close();
    %>
  <s:text name="username"/>${User.username}
  <s:text name="password"/>${User.password}
    <s:text name="userPetName"/>${User.userPetName}
  <s:text name="tel"/>${User.tel}
  <s:text name="login"/>
  </body>
</html>
