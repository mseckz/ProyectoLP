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
            <h1 class="zero museo-slab">Mantenimiento de Licencias</h1>
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
                  <label for="name">Juego</label>
                  <select>
                      <option value="" disabled="" selected="">Nombre del Juego</option>
                      <option value="1">BatleField IV</option>
                      <option value="2">StarCraft II</option>
                    </select>
                </div>
                <div class="one half padded">
                  <label for="name">Licencia</label>
                  <input id="name" type="text" placeholder="Licencia" required>
                </div>
                
              </div>
                
              </div>

            <div class="row">
                <div class="">
                  <label for="name"></label>
                  <input id="name" type="button" value="Agregar" required>
                  <input id="name" type="button" value="Buscar" required>
                  <input id="name" type="button" value="Limpiar" required>
                </div>
            </div>
                      <div class="one whole padded">
                <table data-max="15" class="responsive blue">
                  <thead>
                    <tr>
                      <th>Codigo del Juego</th>
                      <th>Serial</th>
                      <th>Estado</th>
                      <th>Fecha de Creacion</th>
                      <th>Accion</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>C001</td>
                      <td>345345345345</td>
                      <td>Activo</td>
                      <td>01/02/2014</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                    <tr>
                      <td>C001</td>
                      <td>345345345345</td>
                      <td>Activo</td>
                      <td>01/02/2014</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                    <tr>
                      <td>C001</td>
                      <td>345345345345</td>
                      <td>Activo</td>
                      <td>01/02/2014</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                    <tr>
                      <td>C001</td>
                      <td>345345345345</td>
                      <td>Activo</td>
                      <td>01/02/2014</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td>C001</td>
                      <td>345345345345</td>
                      <td>Activo</td>
                      <td>01/02/2014</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                  </tfoot>
                </table>
              </div>
          </div>
          <hr><br>
        </div>
      </div>
	<c:import url="footer.jsp" />    
</body>
</html>
