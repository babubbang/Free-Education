<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
body {
  margin-top: 30px;
}

nav ul {
  width: 100%;
  background-color: rgba(44, 42, 39, 0.983);
  list-style-type: none;
  margin: 0;
  padding: 0;
}

/*inline-block이란 옆으로 나란히 배치*/
nav ul li {
  display: inline-block;	
}

.home {
  background-color: darkorange;
  width: 100px;
  text-align: center;
  font-weight: bold;
  float: right;
}
/*text-decoration: none은 밑줄 제거*/
.home a {
  display: block;
  text-decoration: none;
  color: white;
  padding: 16px 16px;
}

.dropdown {
  position: relative;
}

.dropdown-menu {
  /*background-color: darkorange; */
  color: white;
  padding: 16px;
  font-size: 16px;
  cursor: pointer;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* dropdown-menu 에는 hover 적용이 안됨 */

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown-content a:hover {
  background-color: #f1f1f1
}

.dropdown-menu:hover {
  background-color: darkorange;
  color: white;
}
</style>
<body>
    <nav>
        <ul>
            <li class="dropdown">
                <div class="dropdown-menu">Menu1</div>
                <div class="dropdown-content">
                    <a href="#">Menu1-1</a>
                    <a href="#">Menu1-2</a>
                    <a href="#">Menu1-3</a>
                    <a href="#">Menu1-4</a>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">Menu2</div>
                <div class="dropdown-content">
                    <a href="#">Menu2-1</a>
                    <a href="#">Menu2-2</a>
                    <a href="#">Menu2-3</a>
                    <a href="#">Menu2-4</a>
                </div>
            </li>
            <li class="dropdown">
                <div class="dropdown-menu">Menu3</div>
                <div class="dropdown-content">
                    <a href="#">Menu3-1</a>
                    <a href="#">Menu3-2</a>
                    <a href="#">Menu3-3</a>
                    <a href="#">Menu3-4</a>
                </div>
            </li>
             <li class="dropdown">
                <div class="dropdown-menu">Menu4</div>
                <div class="dropdown-content">
                    <a href="#">Menu4-1</a>
                    <a href="#">Menu4-2</a>
                    <a href="#">Menu4-3</a>
                    <a href="#">Menu4-4</a>
                </div>
            </li>
             <li class="dropdown">
                <div class="dropdown-menu">Menu5</div>
                <div class="dropdown-content">
                    <a href="#">Menu5-1</a>
                    <a href="#">Menu5-2</a>
                    <a href="#">Menu5-3</a>
                    <a href="#">Menu5-4</a>
                </div>
            </li>
        </ul>
    </nav>
</body>