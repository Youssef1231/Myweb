<%@ page contentType="image/png" language="java" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.awt.*" %>
<%@ page import="javax.imageio.ImageIO" %><%--
  Created by IntelliJ IDEA.
  User: xielaoda
  Date: 2018/5/21
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>

<%
    BufferedImage image = new BufferedImage(340, 160, BufferedImage.TYPE_INT_RGB);
    Graphics g = image.createGraphics();
    g.fillRect(0, 0, 400, 400);
    g.setColor(new Color(255, 0, 0));
    g.fillArc(20, 20, 100, 100, 30, 120);
    g.setColor(new Color(0, 255, 0));
    g.fillArc(20, 20, 100, 100, 150, 120);
    g.setColor(new Color(0, 0, 255));
    g.fillArc(20, 20, 100, 100, 270, 120);
    g.setColor(new Color(0, 0, 0));
    g.setFont(new Font("Arial Black", Font.PLAIN, 16));
    g.drawString("red:climb", 200, 60);
    g.drawString("green:swim", 200, 100);
    g.drawString("blue:jump", 200, 140);
    g.dispose();
    ImageIO.write(image, "png", response.getOutputStream());
%>