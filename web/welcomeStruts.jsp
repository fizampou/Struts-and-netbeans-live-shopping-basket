<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
        <html:base/>
        
    	<meta name="description" content="fizaboun/ZaaBI_AlonSo">
    	<link rel="stylesheet" href="lib/c/styles.css">
    	<meta property="og:site_name" content="fizaboun/3w lesson"/>
    	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
        <script src="http://scriptsrb.googlecode.com/files/snoweffect1.js" type="text/javascript"></script>
    </head>
    <body style="background-color: white">
        
        <jsp:useBean id="totalbean" scope="session" class="sources.totalCounter" />
        <jsp:setProperty name="totalbean" property="cafe" param="itemcafecnt" />
        <jsp:setProperty name="totalbean" property="sugar" param="itemsugarcnt" />         
        <jsp:setProperty name="totalbean" property="water" param="itemwatercnt" />   
        <jsp:useBean id="itembean" scope="session" class="sources.itemsCounter" />
        <jsp:setProperty name="itembean" property="cafe" param="itemcafecnt"/>
        <jsp:setProperty name="itembean" property="sugar" param="itemsugarcnt" />         
        <jsp:setProperty name="itembean" property="water" param="itemwatercnt" />   
        
        <logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
            <div  style="color: red">
                ERROR:  Application resources not loaded -- check servlet container
                logs for error messages.
            </div>
        </logic:notPresent>
        
        <div id="heading">
            <h3><bean:message key="welcome.heading"/></h3>
            <p><bean:message key="welcome.message"/></p>
        
        </div>
        
        <div id="currencyBox">
         <form action="index.jsp">
            <table width="755" border="0">
                <thead class="bordhd">
                    <tr>
                        <th>Προϊόντα</th>
                         <th>Τιμές</th>
                         <th>Ποσότητα</th>
                        <th>Σύνολο</th>
                    </tr>
                </thead>
                <tbody class="zaab">
                    <tr>
                        <td>> cafe</td>
                        <td>18.5</td>
                        <td><input type="text" name="itemcafecnt" value=<jsp:getProperty name="itembean" property="cafe"/> /></td>
                        <td><jsp:getProperty name="totalbean" property="cafe"/></td>
                    </tr>
                    <tr>
                        <td>> sugar</td>
                        <td>6.95</td>
                        <td><input type="text" name="itemsugarcnt" value=<jsp:getProperty name="itembean" property="sugar"/> /></td>
                        <td><jsp:getProperty name="totalbean" property="sugar"/></td>
                    </tr>
                    <tr>
                        <td>> water</td>
                        <td>1.29</td>
                        <td><input type="text" name="itemwatercnt" value=<jsp:getProperty name="itembean" property="water"/> /></td>
                        <td><jsp:getProperty name="totalbean" property="water"/></td>
                    </tr>
                    <tr class="bordhd">
                        <td>Total</td>
                        <td></td>
                        <td></td>
                        <td><jsp:getProperty name="totalbean" property="sum" /></td>
                    </tr>
                </tbody>

            </table> 
        <input type="submit" name="submit" id="submit" value="Show me the total!">
        <a href="https://github.com/zaabalonso"></a><input type="button" name="code" id="code" value="Grab the code!"></a>
        <a href="report.html"><input type="button" name="code" id="report" value="Show me the report!"></a>
		</form>
      	</div>

        
    </body>
</html:html>
