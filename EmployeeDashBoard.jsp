<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>
    <link rel="stylesheet" href="EmployeeDashBoard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    
</head>
<body>
    <nav class="sidebar">
      <div id="logoComp">   
        <img src="https://www.unistechnosoft.com/wp-content/uploads/2021/12/unis.png" alt="image">
    </div>
      <div class="menu-content">
        <ul class="menu-items">
          <div class="menu-title"><a href="EmployeeDashBoard.html">Dashboard</a></div>

          <li class="item">
            <a href="#">Projects</a>
          </li>

          <li class="item">
            <a href="#">Tasks</a>
          </li>
          <li class="item">
            <a href="#">Meetings</a>
          </li>
          <li class="item">
            <div class="submenu-item">
              <span>Settings</span>
              <i class="fa-solid fa-chevron-right"></i>
            </div>

            <ul class="menu-items submenu">
              <div class="menu-title">
                <i class="fa-solid fa-chevron-left"></i>
                Details
              </div>
              <li class="item">
                <a href="AddEmployee.html">Update Profile pic</a>
              </li>
              <li class="item">
                <a href="#">Password and security</a>
              </li>
              <li class="item">
                <a href="#">Payroll</a>
              </li>
              <li class="item">
                <a href="#">Teams</a>
              </li>
              <li class="item">
                <a href="#">Attendance</a>
              </li>
              <li class="item">
                <a href="#">Leaves</a>
              </li>
              <li class="item">
                <a href="#">Reports</a>
              </li>
            </ul>
          </li>
          <li class="item">
            <a href="Index.jsp">Log out</a>
          </li>
        </ul>
      </div>
    </nav>

    <nav class="navbar">
      <i class="fa-solid fa-bars" id="sidebar-close"></i>
      <label> &nbsp; &nbsp; &nbsp;UNIS Technosoft </label>
      <i class="fa-solid fa-bell" id="bell"></i>
      <div class="onlineMemb">
        <div class="onlineUser">
            <div class="online" style="background-color: rgb(7, 82, 7);"><label>P</label></div>
        </div>
    </div>
    </nav>

    <main class="main">

      <div class="greet">
        <div class="prof"><pre>  V</pre></div><label for="">Welcome, Vijay</label><p id="date"></p>
      </div>
      <div class="overview">
        <Label>Overview</Label>
        <div class="task-1"><p class="overview-p">23</p><pre>  Tasks assigined</pre></div>
        <div class="task-2"><p class="overview-p">8</p><pre>  Tasks Completed</pre></div>
        <div class="task-3"><p class="overview-p">15</p><pre>  Pending tasks</pre></div>
      </div>


      <div class="task-overview">
        <pre>Task Overview</pre>
        <table>
            <tr id="tr1">
                <td><p>Project Name</p></td>
                <td><p>Project Task</p></td>
                <td><p>Deadline</p></td>
                <td><p>Status</p></td>
            </tr>
            <tr>
                <td>Project@1</td>
                <td>UI design</td>
                <td>Feb 6</td>
                <td>In Review</td>
            </tr>
            <tr>
                <td>Project@2</td>
                <td>UI design</td>
                <td>Feb 22</td>
                <td>In Progress</td>
            </tr><tr>
                <td>Project@3</td>
                <td>UI design</td>
                <td>Feb 18</td>
                <td>In Progress</td>
            </tr><tr>
                <td>Project@4</td>
                <td>UI design</td>
                <td>Jan 10</td>
                <td>Completed</td>
            </tr>
        </table>
      </div>
  </main>


    <script>

      //Nav bar Js code
        const sidebar = document.querySelector(".sidebar");
const sidebarClose = document.querySelector("#sidebar-close");
const menu = document.querySelector(".menu-content");
const menuItems = document.querySelectorAll(".submenu-item");
const subMenuTitles = document.querySelectorAll(".submenu .menu-title");

sidebarClose.addEventListener("click", () => sidebar.classList.toggle("close"));

menuItems.forEach((item, index) => {
  item.addEventListener("click", () => {
    menu.classList.add("submenu-active");
    item.classList.add("show-submenu");
    menuItems.forEach((item2, index2) => {
      if (index !== index2) {
        item2.classList.remove("show-submenu");
      }
    });
  });
});

subMenuTitles.forEach((title) => {
  title.addEventListener("click", () => {
    menu.classList.remove("submenu-active");
  });
});


// date code
n =  new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("date").innerHTML = d + "/" + m + "/" + y;

    </script>
  </body>
  </html>