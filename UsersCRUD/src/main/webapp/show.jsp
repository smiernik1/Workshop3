<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="header.jsp" %>

                <!-- User Details Table -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-borderless table-hover" width="100%" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <th style="width: 30%;">Id</th>
                                        <td>${user.id}</td>
                                    </tr>
                                    <tr>
                                        <th>Nazwa użytkownika</th>
                                        <td>${user.userName}</td>
                                    </tr>
                                    <tr>
                                        <th>Email</th>
                                        <td>${user.email}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- End of Main Content -->

<%@ include file="footer.jsp" %>