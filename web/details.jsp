<%@ page import="db.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <script type="text/javascript" src="/js/bootstrap.bundle.js"></script>
</head>
<body>
<div class="container">

</div>
<%@include file="Navbar.jsp"%>
<div class="container mt-3">
    <%
        Task task = (Task) request.getAttribute("task");
    %>

        <input type="hidden" name="task-id" value="<%=task.getId()%>">
        <label class="mt-2">Наименование: </label>
        <input type="text" class="form-control" value="<%=task.getName()%>" name="task-name">
        <label class="mt-2">Описание: </label>
        <input type="text" class="form-control" value="<%=task.getDescription()%>" name="task-description">
        <label class="mt-2">Крайний срок: </label>
        <input type="date" class="form-control" value="<%=task.getDeadlineDate()%>" name="task-deadlineDate">
        <label class="mt-2">Выполнено: </label>
        <input type="text" class="form-control" value="Нет" name="task-status">


    <form action="/delete" method="post">
        <input type="hidden" value="<%=task.getId()%>" name="delete-id">
        <button class="btn btn-danger mt-2" type="submit">Удалить</button>
    </form>
</div>
</body>
</html>
