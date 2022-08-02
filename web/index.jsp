<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Qaira
  Date: 01.08.2022
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


        <%
            String name = null;
            String surname =null;
            String age=null;
            String country=null;
            String gender=null;
            String creditcard=null;


            Cookie[] cookie=request.getCookies();
            for (Cookie c:cookie) {
                if (c.getName().equals("name")){
                    name=c.getValue();
                    System.out.println(name);
                }if (c.getName().equals("surname")){
                    surname = c.getValue();
                    System.out.println(surname);
                }if (c.getName().equals("age")) {
                    age = c.getValue();
                    System.out.println(age);
                }if (c.getName().equals("country")) {
                    country = c.getValue();
                    System.out.println(country);
                }if (c.getName().equals("gender")) {
                    gender = c.getValue();
                    System.out.println(gender);
                }if (c.getName().equals("creditcard")){
                        creditcard=c.getValue();
                    System.out.println(creditcard);
            }

        %>
        <%
            }

        %>
        <form action="/home" method="post">
            Name    <input name="name" value="<%=name%>"><br><br>
            Surname <input name="surname" value="<%=surname%>"><br><br>
            AGE <select class="form-select" aria-label="Default select example" name="age"><br><br>
                <option selected>Open this select menu</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
            </select><br><br>
            COUNTRY<select class="form-select" aria-label="Default select example" name="country"><br><br>
                <option selected>Open this select menu</option>
                <option value="KZ">KAZAQSTAN</option>
                <option value="RU">RUSSIA</option>
                <option value="USA">USA</option>
                <option value="UZB">UZBEKISTAN</option>
                <option value="FRN">FRANCE</option>
                <option value="ENG">ENGLAND</option>
            </select><br><br>
            Male<input type="radio" id="male" name="gender" value="male">
            Female<input type="radio" id="female" name="gender" value="female"><br><br>
            Credit card    <input name="creditcard" value="<%=creditcard%>"><br><br>
            <button>Save</button>

        </form>



</body>
</html>