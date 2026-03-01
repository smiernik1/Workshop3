<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="header.jsp" %>

                <!-- Add User Form -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
                    </div>
                    <div class="card-body">
                        <form action="/add" method="post">
                            <div class="form-group">
                                <label for="userName">Nazwa użytkownika</label>
                                <input type="text" class="form-control" id="userName" name="userName" placeholder="Nazwa użytkownika" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Hasło</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Hasło" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Zapisz</button>
                        </form>
                    </div>
                </div>
            </div>

            <!-- End of Main Content -->

<%@ include file="footer.jsp" %>