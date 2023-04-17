<%@ page import="db.Task" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
</head>
<body>
<%@include file="Navbar.jsp"%>
<div class="m-lg-5">
    <button type="submit" class="btn btn-primary border-0" data-bs-toggle="modal" data-bs-target="#exampleModal">+ Добавить задание</button>
</div>
<div class="m-lg-5">
    <div class="row">
        <div class="col-6 mx-auto">
            <form action="/add-task" method="post">
                <div class="row">
                    <div class="col-12">
                        <label> </label>
                    </div>
                </div>
                "
            </form>
        </div>
    </div>
    <%
        ArrayList<Task> zhumys = (ArrayList<Task>) request.getAttribute("zadaniya");
    %>
    <table class="table table-stripped">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Наименование</th>
            <th scope="col">Крайний срок</th>
            <th scope="col">Выполнено</th>
            <th scope="col">Детали</th>
        </tr>
        </thead>
        <tbody>
        <%
            if(zhumys != null){
                for(Task i: zhumys){
        %>
        <tr>
            <td><%=i.getId()%></td>
            <td><%=i.getName()%></td>
            <td><%=i.getDeadlineDate()%></td>
            <td>Нет</td>
            <td><a href="/details?id=<%=i.getId()%>" class="text-primary">Детали</a></td>
        </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Новое задание</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="/add-task" method="post">
                    <div class="row">
                        <div class="col-12">
                            <label>Наименование: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" name="task_name">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <label>Описание: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" name="task-description">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <label>Крайний срок: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="date" class="form-control" name="task-deadlineDate">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
</body>
</html>
