<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="header.jsp" %>

                <!-- User List Table -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-borderless table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nazwa użytkownika</th>
                                    <th>Email</th>
                                    <th>Akcja</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="user" items="${users}">
                                    <tr class="table-row">
                                        <td>${user.id}</td>
                                        <td>${user.userName}</td>
                                        <td>${user.email}</td>
                                        <td>
                                            <a href="delete?id=${user.id}" class="text-link">Usuń</a> |
                                            <a href="edit?id=${user.id}" class="text-link">Edytuj</a> |
                                            <a href="show?id=${user.id}" class="text-link">Pokaż</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- End of Main Content -->
<%@ include file="footer.jsp" %>