<%@ page import="java.util.*" %>

<%
String nim = request.getParameter("nim");
String nama = request.getParameter("nama");
String email = request.getParameter("email");
String nohp = request.getParameter("nohp");
String prodi = request.getParameter("prodi");
String jk = request.getParameter("jk");
String alamat = request.getParameter("alamat");
String[] hobi = request.getParameterValues("hobi");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Hasil Data Mahasiswa</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">

    <h2>Data Mahasiswa (getParameter)</h2>

    <table>
        <tr><td>NIM</td><td><%= nim %></td></tr>
        <tr><td>Nama</td><td><%= nama %></td></tr>
        <tr><td>Email</td><td><%= email %></td></tr>
        <tr><td>No HP</td><td><%= nohp %></td></tr>
        <tr><td>Prodi</td><td><%= prodi %></td></tr>
        <tr><td>Jenis Kelamin</td><td><%= jk %></td></tr>
        <tr><td>Alamat</td><td><%= alamat %></td></tr>
        <tr>
            <td>Hobi</td>
            <td>
                <%
                if(hobi != null){
                    for(String h : hobi){
                        out.print(h + " ");
                    }
                }
                %>
            </td>
        </tr>
    </table>

    <h2>Data Mahasiswa (Loop getParameterNames)</h2>

    <div class="loop-box">
        <%
        Enumeration param = request.getParameterNames();

        while(param.hasMoreElements()){
            String name = (String) param.nextElement();
            String[] values = request.getParameterValues(name);

            out.print("<b>" + name + "</b>: ");
            for(String v : values){
                out.print(v + " ");
            }
            out.print("<br>");
        }
        %>
    </div>

</div>

</body>
</html>
