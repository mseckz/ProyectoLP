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
                  <label for="name">Juego</label>
                  <input id="name" type="text" placeholder="Nombre de Juego"  required>
                </div>
                <div class="one half padded">
                  <label for="name">Precio</label>
                  <input id="name" type="text" placeholder="Precio" required>
                </div>
                <div class="one half padded">
                  <label for="name">Descripcion</label>
                  <input id="name" type="textarea" placeholder="Descripcion" >
                </div>
                <div class="one half padded"><span class="select-wrap">
                	<label for="name">Tipo de Juego</label>
                    <select>
                      <option value="" disabled="" selected="">Tipo de Juego</option>
                      <option value="1">Normal</option>
                      <option value="2">Expansion</option>
                    </select></span></div>
               <div class="one half padded"><span class="select-wrap">
                 <label for="name">Categoria</label>
                    <select>
                      <option value="" disabled="" selected="">Genero</option>
                      <option value="">Acccion</option>
                      <option value="">Aventura</option>
                      <option value="">MMO</option>
                      <option value="">Shooters</option>
                      <option value="">Estrategia</option>
                    </select></span></div>
                <div class="one half padded"><span class="select-wrap">
                	<label for="name">Estado</label>
                    <select>
                      <option value="" disabled="" selected="">Estado</option>
                      <option value="1">Activo</option>
                      <option value="2">Inactivo</option>
                    </select></span></div>    
              </div>
			 </div>
            <div class="row">
                <div class="one half padded">
                  <label for="name"></label>
                  <input id="name" type="button" value="Agregar" required>
                  <input id="name" type="button" value="Buscar" required>
                  <input id="name" type="button" value="Modificar" required>
                  <input id="name" type="reset" value="Limpiar" required>
                </div>

              <div class="one whole padded">
                <table data-max="15" class="responsive blue">
                  <thead>
                    <tr>
                      <th>Nombre</th>
                      <th>Precio</th>
                      <th>Genero</th>
                      <th>Categoria</th>
                      <th>Estado</th>
                      <th>Accion</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>BatleField</td>
                      <td>$.80.00</td>
                      <td>Accion</td>
                      <td>Multiplayer</td>
                      <td>Activo</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                    <tr>
                      <td>BatleField</td>
                      <td>$.80.00</td>
                      <td>Accion</td>
                      <td>Multiplayer</td>
                      <td>Activo</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                    <tr>
                      <td>BatleField</td>
                      <td>$.80.00</td>
                      <td>Accion</td>
                      <td>Multiplayer</td>
                      <td>Activo</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                    <tr>
                      <td>BatleField</td>
                      <td>$.80.00</td>
                      <td>Accion</td>
                      <td>Multiplayer</td>
                      <td>Activo</td>
                      <td><input type="checkbox" name="" value=""></td>
                    </tr>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td>BatleField</td>
                      <td>$.80.00</td>
                      <td>Accion</td>
                      <td>Multiplayer</td>
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