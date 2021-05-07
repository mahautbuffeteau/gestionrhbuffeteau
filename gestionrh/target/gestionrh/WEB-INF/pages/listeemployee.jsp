<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Responsive META -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Liste Employee</title>

 

<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <header>
        <jsp:include page="navbar.jsp"></jsp:include>
    </header>
<section class="container">
        <div class="row">
            <div class="col-12 card shadow-lg p-3 mb-5 bg-body rounded">
                <table class="tabl table-striped table table-sm table-responsive-sm" data-toggle="table" data-search="true" data-show-columns="true"  data-pagination="true">
                    <thead class="thead-dark">
                        <tr>
                        <th data-sortable="true" data-field="id">Id</th>
                        <th data-sortable="true" data-field="Address">Address</th>
                        <th data-sortable="true" data-field="City">City</th>
                        <th data-sortable="true" data-field="State">State</th>
                        <th data-sortable="true" data-field="type">type</th>
                        <th data-sortable="true" data-field="Fed Id">Fed Id</th>
                        <th data-sortable="true" data-field="Code postal">Code postal</th>
                        <th data-sortable="true" data-field="Edit">Edit</th>
                        <th data-sortable="true" data-field="Delete">Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <s:iterator value="Employeelist">
                        <tr>
                            <td><s:property value="custId" /></td>
                            <td><s:property value="address" /></td>
                            <td><s:property value="city" /></td>
                            <td><s:property value="state" /></td>
                            <td><s:property value="custTypeCd" /></td>
                            <td><s:property value="fedId" /></td>
                            <td><s:property value="postalCode" /></td>
                            <td><a
                                href="<s:url action="update" namespace="/CustomerAction"><s:param name="custId" value="%{custId}"></s:param></s:url>">Edit</a></td>
                            <td class="text-center"><a
                                href="<s:url action="delete" namespace="/CustomerAction"><s:param name="custId" value="%{custId}"></s:param></s:url>">Delete</a></td>
                        </tr>
                    </s:iterator>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    <footer class="footer">
        <jsp:include page="footer.jsp"></jsp:include>
    </footer>
     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
    <script src="https://unpkg.com/bootstrap-table@1.16.0/dist/locale/bootstrap-table-fr-FR.min.js"></script>
</body>
</html>