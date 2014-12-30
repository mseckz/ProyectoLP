<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<c:import url="head.jsp" />
<body>
<c:import url="header.jsp" />
<c:import url="menuAdmin.jsp" />
    <div class="container">
      <div class="padded">
        <div class="row">
          <div class="three fifths bounceInRight animated">
            <h1 class="zero museo-slab">Mantenimiento de Juegos</h1>
            <p class="quicksand"></p>
          </div>
          <div class="two fifths align-right-ipad align-right-desktop flipInX animated">

          </div>
        </div>
      </div>
      <hr>
      <div class="row">
        <div class="one whole padded">
          <div class="bounceInLeft animated">
            <div class="row">
                <div class="one half padded">
                  <label for="name">Nombre y/o Apellido del Usuario</label>
                  <input id="name" type="text" placeholder="Nombre de Usuario"  required>
                </div>
                <div class="one half padded">
                  <label for="name">Status</label>
                  <select>
                      <option value="" disabled="" selected="">Status</option>
                      <option value="1">Habilitado</option>
                      <option value="2">Deshabilitado</option>
                   </select></span></div>
                </div>
              </div>
			 </div>
            <div class="row">
                <div class="one half padded">
                  <label for="name"></label>
                  <input id="name" type="button" value="Buscar" required>
                  <input id="name" type="button" value="Modificar Status" required>
                  <input id="name" type="button" value="Limpiar" required>
                </div>

              <div class="one whole padded">
                <table data-max="15" class="responsive blue">
                  <thead>
                    <tr>
                      <th>Nombre</th>
                      <th>Apellido Paterno</th>
                      <th>Apellido Materno</th>
                      <th>Estado</th>
                      <th>Accion</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>lalalla</td>
                      <td>jojojo</td>
                      <td>jajajaja</td>
                      <td>Activo</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                    <tr>
                      <td>lalalla</td>
                      <td>jojojo</td>
                      <td>jajajaja</td>
                      <td>Activo</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                    <tr>
                      <td>lalalla</td>
                      <td>jojojo</td>
                      <td>jajajaja</td>
                      <td>Activo</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                    <tr>
                      <td>lalalla</td>
                      <td>jojojo</td>
                      <td>jajajaja</td>
                      <td>Activo</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td>lalalla</td>
                      <td>jojojo</td>
                      <td>jajajaja</td>
                      <td>Activo</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>
            <div class="row">
              <div class="one whole pad-left pad-right">
              </div>
            </div>
          </div>
          <hr>
          <br>
        </div>
      </div>
	<c:import url="footer.jsp" />    
</body>
</html>