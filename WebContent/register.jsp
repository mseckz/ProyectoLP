<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<c:import url="head.jsp" />
<body>
<c:import url="header.jsp" />
<c:import url="menuNormal.jsp" />
<div class="container">
    <div class="padded">
        <div class="row">
        </div>
    </div>
    <hr>
        <div class="row bounceInRight animated">
        	<div class="one whole padded">
          		<h4>Formulario de Registro</h4>
          		<form action="#" method="post">
            	<fieldset>
              		<legend></legend>
              		<div class="row">
              			<div class="one half padded">
                  			<label for="name">Nombre *</label>
                  			<input id="name" type="text" placeholder="Nombres" required>
                		</div>
              			<div class="one half padded">
                 	 		<label for="name">Usuario o ID *</label>
                 			<input id="name" type="text" placeholder="ID" required>
                		</div> 
               			<div class="one half padded">
                  			<label for="name">Apellidos *</label>
                  			<input id="name" type="text" placeholder="Apellidos" required>
                		</div>
                		<div class="one half padded">
                  			<label for="name">Password *</label>
                  			<input id="name" type="password" placeholder="Password" required>
                		</div>
                		<div class="one half padded">
                  			<label for="email">Email *</label>
                  			<input id="email" type="email" placeholder="you@example.com" required>
                		</div> 
              			<div class="one half padded">
                  			<label for="name">Confirmar Password *</label>
                  			<input id="name" type="password" placeholder="Password" required>
                		</div>                   
                		<div class="one half padded">
                  			<label for="name">Fecha de Nacimiento *</label>
                  			<input id="name" type="date" value="" placeholder="Fecha de Nacimiento" required>
                		</div>
              	    </div>
              		<div class="row">
                		<div class="one half padded">
                  			<label for="address">Direccion *</label>
                  			<input id="address" type="text" placeholder="Direccion">
                		</div>
              		</div>
              		<div class="row">
                		<div class="one half padded"><span class="select-wrap">
                    	<select>
                      		<option value="" disabled="" selected="">Distrito</option>
                      		<option value="">Cercado de Lima</option>
                      		<option value="">Ate</option>
                      		<option value="">Barranco</option>
                      		<option value="">Breña</option>
                      		<option value="">Comas</option>
                      		<option value="">Chorrillos</option>
                      		<option value="">El Agustino</option>
                      		<option value="">Jesús María</option>
                      		<option value="">La Molina</option>
                      		<option value="">La Victoria</option>
                      		<option value="">Lince</option>
                      		<option value="">Magdalena del Mar</option>
                      		<option value="">Miraflores</option>
                      		<option value="">Pueblo Libre</option>
                      		<option value="">Puente Piedra</option>
                      		<option value="">Rimac</option>
                      		<option value="">San Isidro</option>
                      		<option value="">Independencia</option>
                      		<option value="">San Juan de Miraflores</option>
                      		<option value="">San Luis</option>
                      		<option value="">San Martin de Porres</option>
                      		<option value="">San Miguel</option>
                      		<option value="">Santiago de Surco</option>
                      		<option value="">Surquillo</option>
                      		<option value="">Villa María del Triunfo</option>
                      		<option value="">San Juan de Lurigancho</option>
                      		<option value="">Santa Borja</option>
                      		<option value="">Santa Anita</option>
                      		<option value="">Villa El Salvador</option>
                    	</select></span></div>
              	</div>
              	<div class="row">
                	<div class="one whole padded">
                  		<label for="message">Revisa los acuerdos que verás a continuación y confirma que los aceptas marcando las casillas de verificación del final de la página. Debes aceptar las condiciones de estos acuerdos para continuar.</label>
                  		<a href="http://www.panamacompra.gob.pa/Portal/files/AcuerdoUsoSistema.pdf" target="_blank">Condiciones de Uso *</a>
                  		<div id="condiciones">
              				<p>Revisa los acuerdos que verás a continuación y confirma que los aceptas
               				marcando las casillas de verificación del final de la página. Debes aceptar las condiciones
                			de estos acuerdos para continuar.</p>
                			<p></p>
                  		<div class="box">
                  		<p>ACUERDO DE SUSCRIPTOR A SASUKI®</p>
                		<p>El presente Acuerdo de suscriptor a Sasuki («acuerdo») es un documento legal en el que se explican
                 		sus derechos y obligaciones como suscriptor. Léalo atentamente.<p>
                		Si usted es un suscriptor cuya residencia principal está situada en uno de los países miembros de la Unión
                 		Europea («suscriptor de la UE»), se entiende que su relación como suscriptor es con
                 	    Sasuki S.a.r.l. («Sasuki UE»). Para todos los demás suscriptores, su relación como suscriptores
                  		es con Sasuki Corporation («Sasuki EE. UU.»). Excepto si se indica expresamente lo contrario en el momento
                 		de la compra, como en el caso de compras realizadas a otros suscriptores en algún bazar
                 		de suscripciones, cualquier compra realizada se obtiene de la empresa Sasuki con la que esté contratando. A no ser que se indique lo contrario en los siguientes términos, cualquier referencia que en este documento se haga a «Sasuki» se entenderá como «Sasuki UE», si usted es un suscriptor de la UE, y como «Sasuki EE. UU.», si usted es cualquier otro suscriptor. Cualquier referencia a Sasuki en las normas de uso o en los términos de suscripción significará, si el contexto lo requiere, «Sasuki UE», siempre que se trate de un suscriptor de la UE, y, en caso contrario, significará «Sasuki EE. UU.».
                		EL APARTADO 12 CONTIENE UN ACUERDO DE ARBITRAJE VINCULANTE Y UNA CLÁUSULA SOBRE RENUNCIA
                 		A DEMANDAS COLECTIVAS. AFECTA A SUS DERECHOS LEGALES. LE RECOMENDAMOS QUE LO LEA ATENTAMENTE. SI NO VIVE
                 		EN LOS ESTADOS UNIDOS, ES POSIBLE QUE EL APARTADO 12, EN TODO O EN PARTE, NO SE APLIQUE PARA USTED. POR
                 		EJEMPLO, SI VIVE EN LA UNIÓN EUROPEA, EL APARTADO 12 NO SE APLICA PARA USTED.</p>
                 
                		1. REGISTRO COMO SUSCRIPTOR, TÉRMINOS APLICABLES Y CUENTA
                
                		Sasuki es un servicio en línea suministrado por Sasuki.
                
                		Al instalar el software del cliente de Sasuki y completar el proceso de registro de Sasuki, usted se
                 		convierte en un suscriptor de Sasuki («suscriptor»). Este acuerdo entrará en validez en el momento en
                  		que usted indique que acepta estos términos.
                		Como suscriptor, puede tener acceso a determinados servicios, software y contenidos disponibles para los
                 		suscriptores. A efectos de este acuerdo, el software del cliente de Sasuki y cualquier otro software,
                  		contenido o actualización que descargue o a los que tenga acceso a través de Sasuki, incluidos pero sin
                   		limitarse a videojuegos de Sasuki o de terceros y a contenido para la partida, así como a los artículos
                    	virtuales con los que comercie, que venda o compre en el bazar de suscripciones Sasuki se llamarán
                     	«software»; también a efectos de este acuerdo, los derechos de acceso o uso sobre cualquier
                      	servicio, software o contenido accesible a través de Sasuki se llamarán «suscripciones».
                		Cada suscripción le permite obtener acceso a ciertos servicios, software y otros contenidos. El uso de
                 		determinadas suscripciones puede estar sujeto a términos adicionales especificados para cada una de ellas
                  		("términos de suscripción"); por ejemplo, un acuerdo de licencia de usuario final para un juego
                   		concreto, o los términos de uso específicos para un determinado producto o una determinada característica
                    	de Sasuki. Asimismo, es posible que se publiquen términos adicionales (por ejemplo, procedimientos
                     	de pago y facturación) en http://www.Sasukipowered.com o dentro del ámbito del servicio de Sasuki
                      	(«normas de uso»). Las normas de uso incluyen las «Normas de conducta en línea de Sasuki», que
                       	se pueden encontrar en http://Sasukipowered.com/index.php?area=online_conduct. Los términos
                        de suscripción, las normas de uso y la política de confidencialidad de Sasuki (que se pueden
                        encontrar en http://www.Sasukisoftware.com/privacy.htm) quedan también incorporados al presente
                        acuerdo y son vinculantes una vez que usted haya indicado que los acepta o que acepta este
                        acuerdo o si se ve obligado por ellos tal y como se describe en el apartado 9 (Modificaciones
                        a este acuerdo).
                		Al completar el proceso de registro de Sasuki, se crea una cuenta de Sasuki («cuenta»). En la información
                 		de su cuenta también se pueden incluir los datos de facturación que nos haya suministrado para adquirir
                  		suscripciones. Usted es el único responsable de cualquier actividad realizada en su cuenta, así
                   		como de la protección de su equipo. No debe revelar, compartir ni permitir de ningún otro modo que
                    	otros usuarios utilicen su contraseña o cuenta. Acepta que usted es el único responsable del uso
                     	de su contraseña y cuenta, así como de todas las comunicaciones y actividades realizadas en Sasuki
                      	que resulten del uso de su nombre de inicio de sesión y contraseña. No puede vender ni transferir
                       	a terceros el derecho a utilizar su cuenta ni cobrar nada por utilizarla, y no puede vender ni
                        transferir el derecho a utilizar las suscripciones, ni cobrar por el derecho a utilizarlas,
                        excepto en los casos que queden expresamente permitidos en este acuerdo (incluidos los términos
                        de suscripción o las normas de uso).
                
                		2. LICENCIAS
                
                A. Licencia general de software
                
                Sasuki y sus suscripciones requieren la descarga e instalación automáticas de software en su equipo. Por el presente acuerdo, Sasuki concede, y usted acepta, una licencia limitada, rescindible y no exclusiva y el derecho de utilizar el software para su uso personal sin fines comerciales (excepto si su uso comercial está permitido de manera explícita en este acuerdo o en los términos de suscripción aplicables) según lo estipulado en este acuerdo y en los términos de suscripción. El Software se otorga mediante una licencia y no es objeto de venta. La licencia no le concede la titularidad ni la propiedad del software. Para utilizar el software, es necesario que tenga una cuenta Sasuki, y es posible que se le solicite que tenga en funcionamiento el cliente de Sasuki y que esté conectado a Internet.
                
                Por razones entre las que se incluyen, sin limitarse a ellas, la seguridad del sistema, la estabilidad y la interoperatividad multijugador, puede que Sasuki necesite actualizar automáticamente, precargar y crear nuevas versiones o mejorar el software de otro modo y que, en consecuencia, los requisitos del sistema necesarios para utilizar el software pueden variar con el tiempo. Usted autoriza dicha actualización automática. Usted entiende que el presente acuerdo (incluidos los términos de suscripción correspondientes) no le da derecho a recibir actualizaciones, nuevas versiones ni otras mejoras futuras del software asociadas con cualquier suscripción concreta, si bien Sasuki puede decidir proporcionar tales actualizaciones y demás a su entera discreción.
                
                B. Licencia de software beta
                
                De vez en cuando, es posible que Sasuki ponga software a su disposición por medio de Sasuki antes del lanzamiento comercial general de dicho software («software beta»). Aunque usted no está obligado a utilizar el software beta, si Sasuki se lo ofrece, puede utilizarlo de acuerdo con los siguientes términos. El software beta se considerará parte del software, y cada componente del software beta se considerará una suscripción a dicho software beta, según las siguientes disposiciones específicas relativas al software beta:
                
                Su derecho de utilizar el software beta puede tener una duración limitada y estar sujeto a términos de suscripción adicionales;
                Sasuki o cualquiera de sus empresas asociadas puede solicitar o requerir que proporcione sugerencias, comentarios o datos relativos al uso del software beta, que formarán parte del contenido generado por el usuario, definido más adelante en el apartado 6 como «contenido generado por el usuario»; y
                además de las renuncias y limitaciones de responsabilidad aplicables al software, según se detalla más adelante en el apartado 7 (Renuncias; limitación de responsabilidad; sin garantías), usted reconoce específicamente que el software beta no es final y que puede causar incompatibilidades y daños en el ordenador, los datos o el software. Si decide instalar o utilizar el software beta, asume de forma íntegra cualquier posible riesgo.
                C. Licencia de uso de las herramientas de desarrollo de Sasuki
                
                Sus suscripciones pueden incluir el acceso a diversas herramientas de Sasuki que sirven para crear contenido («herramientas de desarrollo»). Algunas de ellas son el kit de desarrollo de software («SDK») de Sasuki para una versión del motor de juegos informáticos conocido como «Source» («motor Source») y el editor asociado Sasuki Hammer Editor, el software Source® Filmmaker o herramientas integradas en los juegos de Sasuki mediante las que pueda editarlos o crear obras derivadas de ellos. Es posible que algunas herramientas de desarrollo (por ejemplo, el software Source® Filmmaker) se distribuyan con unos términos de suscripción independientes y diferentes de las normas establecidas en este apartado. En cualquier otro caso, puede utilizar las herramientas de desarrollo, así como usar, reproducir, publicar, ejecutar, mostrar y distribuir cualquier contenido creado con ellas del modo que desee siempre que no sea con fines comerciales.
                
                Si desea utilizar el SDK de Source o cualquier otra herramienta de desarrollo de Sasuki para un fin comercial, póngase en contacto con Sasuki en la dirección sourceengine@Sasukisoftware.com.
                
                Para leer los términos de suscripción del software Source® Filmmaker, haga clic aquí: http://www.sourcefilmmaker.com/sfm_subscription_agreement/
                
                D. Licencia de uso de la IP de juegos de Sasuki en obras derivadas
                
                Sasuki desea dar las gracias a la comunidad de suscriptores que crean diseños, relatos y trabajos audiovisuales que hacen referencia a juegos de Sasuki («obras derivadas»). Puede incorporar contenido de juegos de Sasuki en sus obras derivadas. Salvo estipulación en contrario en este apartado o en cualquiera de los términos de suscripción, puede usar, reproducir, publicar, ejecutar, mostrar y distribuir obras derivadas que incorporen contenido de juegos de Sasuki del modo que desee siempre que no sea con fines comerciales.
                
                Si incorpora contenido de terceros en cualquier obra derivada, debe asegurarse de que el propietario le otorgue todos los derechos necesarios.
                
                Está permitido el uso comercial de parte del contenido de los juegos de Sasuki mediante características como Sasuki Workshop o un bazar de suscripciones de Sasuki. Los términos aplicables a dicho uso se estipulan en los apartados 3.D. y 6.B. siguientes y en cualquiera de los términos de suscripción facilitados para tales características.
                
                Para leer la política sobre vídeos de Sasuki, que incluye términos adicionales referentes al uso de trabajos audiovisuales que incorporan la IP de Sasuki o que se han creado con el software Source® Filmmaker, haga clic aquí: http://www.Sasukisoftware.com/videopolicy.html
                
                E. Licencia de uso del software del servidor dedicado de Sasuki
                
                Sus suscripciones pueden incluir el acceso al software del servidor dedicado de Sasuki. En ese caso, puede utilizar el software del servidor dedicado de Sasuki en un número ilimitado de ordenadores con el fin de alojar partidas multijugador en línea de productos de Sasuki. Si desea hacer uso del software del servidor dedicado de Sasuki, usted será el único responsable de obtener el acceso a Internet, el ancho de banda y el hardware necesarios para tales actividades y se hará cargo de todos los gastos asociados.
                
                F. Propiedad del software
                
                La titularidad, los derechos de propiedad y los derechos de propiedad intelectual relativos al software y todas sus copias son propiedad de Sasuki EE. UU. o de los otorgantes de licencias de sus empresas asociadas. Todos los derechos están reservados, a menos que se disponga lo contrario de forma expresa en el presente acuerdo. El software se encuentra protegido por las leyes de derechos de autor, los tratados y convenciones internacionales sobre derechos de autor y otras leyes. El software contiene determinados materiales sujetos a licencia, y los otorgantes de las licencias de Sasuki y sus empresas asociadas pueden proteger sus derechos en caso de que se produzca cualquier incumplimiento del presente acuerdo.
                
                G. Restricciones de uso del software
                
                No puede utilizar el software para usos distintos del acceso permitido a Sasuki y a sus suscripciones o del uso personal sin fines comerciales de sus suscripciones, excepto si se permite de manera explícita en este acuerdo o en los términos de suscripción aplicables. Con excepción de los permisos detallados en este acuerdo (incluidos los términos de suscripción y las normas de uso) o según la ley correspondiente, a pesar de estas restricciones, no puede, ni en parte ni en su totalidad, copiar, fotocopiar, reproducir, publicar, distribuir, traducir, modificar, desensamblar ni descompilar el software ni aplicarle ingeniería inversa, manipular su código fuente, crear obras derivadas de él ni tampoco quitar ningún aviso ni ninguna etiqueta de propiedad de dicho software ni de ningún software al que pueda accederse por medio de Sasuki sin el consentimiento previo y por escrito de Sasuki.
                
                A menos que sea un operador de cibercafé con licencia (como se define a continuación), este acuerdo no le permite explotar el software en un cibercafé, en un centro de juegos informáticos ni en ningún otro emplazamiento. Un «cibercafé» es un establecimiento físico en el que los clientes pueden utilizar equipos informáticos. Un «operador de cibercafé con licencia» es un cibercafé que ha aceptado los términos de suscripción para los operadores de cibercafé con licencia tal y como se detallan en http://store.Sasukipowered.com/cybercafe_agreement/.
                
                Usted tiene derecho a utilizar el software para su propio uso personal pero no tiene derecho a: (i) vender el software, conceder derechos de garantía sobre él ni transferir reproducciones a terceros de ningún modo ni alquilar o arrendar el software u otorgar licencias de él a otros sin el consentimiento previo y por escrito de Sasuki, excepto en lo contemplado expresamente en cualquier otra parte de este acuerdo (incluidos los términos de suscripción o las normas de uso); (ii) alojar o proporcionar servicios de búsqueda de jugadores para el software ni emular o redirigir los protocolos de comunicación utilizados por Sasuki en ninguna función de red del software mediante la emulación de protocolos, la creación de túneles, la modificación o la adición de componentes en el software, el uso de un programa de utilidades ni ninguna otra técnica conocida en la actualidad o desarrollada en el futuro con ningún propósito, incluidas, sin limitarse a ellas, partidas de red por Internet, partidas de red utilizando redes de juego comerciales y no comerciales o como parte de redes de agregación de contenidos, sin el consentimiento previo y por escrito de Sasuki; ni (iii) explotar el software ni ninguna de sus partes con fines comerciales excepto en lo contemplado expresamente en cualquier otra parte de este acuerdo (incluidos los términos de suscripción o las normas de uso).
                
                3. FACTURACIÓN, PAGOS Y OTRAS SUSCRIPCIONES
                
                TODOS LOS CARGOS EMITIDOS POR SASUKI Y TODAS LAS COMPRAS REALIZADAS CON LA CARTERA SASUKI SE PAGAN POR ADELANTADO Y NO SON REEMBOLSABLES EN TODO O EN PARTE, INDEPENDIENTEMENTE DEL MÉTODO DE PAGO ELEGIDO, EXCEPTO EN LO QUE SE ESTIPULE EXPRESAMENTE EN ESTE ACUERDO.
                
                SI USTED ES UN SUSCRIPTOR DE LA UE, TIENE DERECHO A RETIRARSE DE UNA TRANSACCIÓN DE COMPRA DE CONTENIDO DIGITAL SIN PAGAR NADA Y SIN TENER QUE DAR NINGÚN MOTIVO, ANTES DE QUE HAYA COMENZADO LA ENTREGA DEL CONTENIDO O ANTES DE QUE LA PRESTACIÓN DEL SERVICIO HAYA COMENZADO. NO TENDRÁ DERECHO A RETIRARSE DE UNA TRANSACCIÓN NI A OBTENER UNA DEVOLUCIÓN DEL DINERO UNA VEZ QUE LA ENTREGA DEL CONTENIDO O LA PRESTACIÓN DEL SERVICIO HAYAN COMENZADO; LLEGADOS A ESE PUNTO, LA TRANSACCIÓN NO SE PUEDE DESHACER. POR EL PRESENTE ACUERDO DECLARA SU CONFORMIDAD A QUE LA ENTREGA DEL CONTENIDO DIGITAL Y LA SUSCRIPCIÓN ASOCIADA O LA PRESTACIÓN DEL SERVICIO ASOCIADO COMIENZAN EN EL MOMENTO EN QUE EL CONTENIDO DIGITAL SE AÑADE A SU CUENTA O INVENTARIO O SE LE DA ACCESO A ÉL DE CUALQUIER OTRA FORMA PARA QUE PUEDA DESCARGARLO O UTILIZARLO.
                
                A. Autorización del pago
                
                Al proporcionar a Sasuki o a uno de sus procesadores de pagos la información necesaria para realizar el pago, usted está declarando ante Sasuki que usted es el usuario autorizado de la tarjeta, el PIN, la clave o la cuenta asociados a ese pago, y autoriza a Sasuki a cargar en su tarjeta de crédito o a procesar mediante el procesador de pagos externo elegido para cualquier suscripción, el pago de cualquier suscripción, carga de fondos en la cartera de Sasuki y otros gastos que se le puedan cargar. Sasuki puede solicitarle que facilite su dirección o cualquier otra información, con el fin de que Sasuki pueda cumplir todas las obligaciones de la legislación fiscal vigente.
                
                En el caso de suscripciones adquiridas que se basen en un período de uso acordado y en las que se realicen pagos periódicos a cambio de que el uso sea ininterrumpido («suscripciones de pago periódico»), al seguir utilizándolas, acuerda y confirma que Sasuki está autorizada a realizar el cargo en su tarjeta de crédito (o en su cartera de Sasuki si tiene fondos) o a procesar el pago con cualquier otro medio de pago de terceros por cualquier importe correspondiente al pago periódico. Si ha adquirido alguna suscripción de pago periódico, acepta informar de inmediato a Sasuki de cualquier cambio en su dirección de facturación, su número de tarjeta de crédito o la fecha de vencimiento de esta o en el número de su cuenta de PayPal o de otro medio de pago, y acepta notificar a Sasuki de inmediato si su tarjeta de crédito o su cuenta de PayPal o de otro medio de pago expira o se cancela por cualquier motivo.
                
                Si el uso de Sasuki está sujeto a algún tipo de impuesto (por el uso o por la compra), Sasuki también puede cobrarle esos impuestos, además de la suscripción y de otros cargos indicados en las normas de uso. El impuesto sobre el valor añadido de la UE (IVA) que carga Sasuki refleja el IVA aplicable al valor de cualquier software o suscripción.
                
                Usted accede a no utilizar un servidor proxy ni otros métodos para enmascarar la IP y ocultar su lugar de residencia, ya sea para evitar las restricciones geográficas sobre el contenido del juego, para comprar a precios no aplicables a su área geográfica o para cualquier otra finalidad. Si infringe esa condición, podemos cancelar el acceso a su cuenta.
                
                B. Responsabilidad respecto a los cargos asociados con la cuenta
                
                Como propietario de la cuenta, usted es responsable de todos los cargos derivados de ella, incluidos los impuestos correspondientes, y de todas las compras realizadas por usted o cualquiera que utilice su cuenta, incluidos familiares y amigos. Si cancela su cuenta, Sasuki se reserva el derecho a cobrar los cargos, recargos o costes que se hayan generado antes de la cancelación de su cuenta. Para que Sasuki lo autorice a volverse a registrar, deberá saldar las cuentas impagadas.
                
                C. Cartera de Sasuki
                
                Sasuki puede poner a su disposición un sistema de control de ingresos y gastos asociado con su cuenta («cartera de Sasuki»). Usted puede ingresar fondos en su cartera de Sasuki mediante una tarjeta de crédito, una tarjeta prepago, un código de promoción o cualquier otro método de pago aceptado por Sasuki, hasta un importe máximo que determinará Sasuki. Dentro de un período de veinticuatro (24) horas, el importe total almacenado en su cartera de Sasuki, más el importe total gastado de su cartera de Sasuki, en conjunto, no pueden superar los 2000 USD o su equivalente en su moneda local; cualquier intento de depositar fondos en la cartera de Sasuki que supere ese umbral podría no acreditarse hasta que la actividad vuelva a descender por debajo de ese límite. Es posible que, de vez en cuando, modifiquemos el sistema de control de cuentas de la cartera de Sasuki y los límites de uso o que impongamos otros distintos.
                
                Usted puede utilizar los fondos de su cartera de Sasuki para adquirir suscripciones, así como para hacer compras durante el juego, allá donde estén habilitadas las transacciones con la cartera de Sasuki. Los fondos ingresados en la cartera de Sasuki no son reembolsables ni transferibles. Los fondos ingresados en la cartera de Sasuki no constituyen un derecho de propiedad personal, no tienen valor fuera de Sasuki y solo se pueden utilizar para comprar suscripciones y contenido a través de Sasuki (incluidos pero sin limitarse a juegos y otras aplicaciones ofrecidas a través de la tienda de Sasuki o en un bazar de suscripciones de Sasuki). Los fondos de la cartera de Sasuki no tienen valor en efectivo y no se pueden cambiar por dinero en efectivo. Los fondos de la cartera de Sasuki que se consideren propiedad no reclamada pueden cederse a la autoridad competente.
                
                D. Intercambio y ventas de suscripciones entre suscriptores
                
                Sasuki puede incluir una o más funciones o sitios que permitan a los suscriptores intercambiar, vender o comprar determinados tipos de suscripciones (por ejemplo, los derechos de licencia sobre artículos virtuales) entre suscriptores («bazares de suscripciones»). Un ejemplo de bazar de suscripciones es el Mercado de la comunidad Sasuki. Al utilizar los bazares de suscripciones, autoriza a Sasuki, en su propio nombre o como agente o concesionario de la licencia de cualquier otro creador o editor de las suscripciones correspondientes a su cuenta, a transferir esas suscripciones desde su cuenta, con el fin de hacer efectiva cualquier operación de intercambio o venta realizada.
                
                Sasuki puede cobrar una tarifa por los intercambios o las ventas realizados en un bazar de suscripciones. Se le avisará de cualquier tarifa relacionada con el intercambio o la venta.
                
                Al realizar un intercambio, una venta o una compra en un bazar de suscripciones, reconoce y acuerda que usted es responsable de pagar los impuestos, si los hubiera, que pudieran corresponder a las transacciones que realice, incluyendo los impuestos por el uso o el IVA, y que cumplirá las leyes tributarias que sean aplicables. El dinero procedente de las ventas que realice en un bazar de suscripciones puede considerarse un ingreso a efectos fiscales. Debería consultar con un asesor fiscal para determinar su responsabilidad fiscal en relación con sus actividades en el bazar de suscripciones.
                
                Usted comprende y reconoce que Sasuki puede decidir discontinuar el funcionamiento de cualquier bazar de suscripciones, modificar las tarifas que cobra por las transacciones o modificar los términos o las características del bazar de suscripciones. Sasuki no tendrá responsabilidad alguna hacia usted derivada de la imposibilidad de realizar intercambios de suscripciones en el bazar de suscripciones, ni siquiera en el caso de interrupción del servicio o cambio en los términos, las características o los requisitos para poder participar en cualquier bazar de suscripciones.
                
                Usted también comprende y reconoce que las suscripciones intercambiadas, vendidas o compradas a través del bazar de suscripciones son derechos de licencia, que usted no tiene intereses de propiedad en tales suscripciones y que Sasuki no reconoce ninguna transferencia de suscripciones (incluidas las transferencias por mandato judicial) realizada fuera del entorno de Sasuki.
                
                E. Compras minoristas
                
                Es posible que Sasuki ofrezca o requiera una suscripción para los compradores de paquetes de versiones de productos de venta al por menor o versiones OEM de productos de Sasuki. La «clave del CD» o «clave de producto» que acompaña a tales versiones se utiliza para activar la suscripción.
                
                F. Distribuidores autorizados de Sasuki
                
                Puede adquirir una suscripción a través de un distribuidor autorizado de Sasuki. La «clave de producto» que se suministra al realizar esta compra debe utilizarse para activar la suscripción. Si usted adquiere una suscripción de un distribuidor autorizado de Sasuki, acepta dirigir cualquier pregunta relativa a la clave de producto a dicho distribuidor.
                
                G. Suscripciones gratuitas
                
                En algunos casos, Sasuki puede ofrecer una suscripción gratuita a ciertos servicios, software o contenidos. Como en el caso de cualquier otra suscripción, usted es siempre responsable de cualquier cargo de su proveedor de servicios de Internet, teléfono u otras conexiones en el que incurra al utilizar Sasuki, incluso cuando Sasuki ofrece una suscripción de forma gratuita.
                
                H. Sitios de terceros
                
                Es posible que Sasuki proporcione vínculos a sitios de terceros. Algunos de esos sitios pueden cobrar cargos por separado que son adicionales y no están incluidos en los cargos por suscripción u otros cargos que usted debe abonar a Sasuki. Asimismo, Sasuki puede dar acceso a otros distribuidores que proporcionan contenidos, bienes o servicios a través de Sasuki o por Internet. Usted es responsable de cualquier cargo u obligación adicionales derivados de su relación con esos otros distribuidores. Sasuki no hace promesas ni da garantías, ya sean expresas o implícitas, con respecto a cualquiera de los sitios de terceras partes. En concreto, Sasuki no hace promesas ni da garantías respecto a que un determinado servicio o suscripción ofrecido a través de terceros no cambiará, no se interrumpirá o no se cancelará.
                
                4. TRAMPAS, ACCIONES ILEGALES Y CONDUCTA EN LÍNEA
                
                Usted acepta que es el único responsable del uso de su cuenta, así como de todas las comunicaciones y actividades realizadas en Sasuki que resulten del uso de dicha cuenta. Su conducta en línea y su interacción con otros suscriptores deberán basarse en el sentido común y en unas normas de comportamiento básicas. También es posible encontrar los requisitos específicos en las normas de conducta en línea de Sasuki que se detallan en http://Sasukipowered.com/index.php?area=online_conduct, en otras normas de uso, en los términos de suscripción o en los términos de uso impuestos por terceros cuando sean estos quienes alojen determinados juegos y otros servicios.
                
                Es posible que Sasuki y el software incluyan funciones diseñadas para identificar procesos o funciones de software o hardware que pueden dar al jugador una ventaja de competición injusta al jugar con versiones multijugador de cualquier software o modificaciones de él («trampas»). Usted acepta que no creará trampas ni ayudará a terceros a crearlas en modo alguno. Asimismo, acepta que no desactivará, burlará ni interferirá de ningún otro modo, ya sea de manera directa o indirecta, el funcionamiento de cualquier software diseñado para evitar o informar sobre el uso de trampas. Reconoce y acepta que Sasuki o cualquier anfitrión de partidas multijugador en línea puede optar por no permitirle participar en ciertas partidas multijugador en línea si utiliza trampas relacionadas con Sasuki o el software. Asimismo, reconoce y acepta que un anfitrión de partidas multijugador en línea puede informar a Sasuki de que usted utiliza trampas y que Sasuki puede informar de su historial de utilización de trampas a otros anfitriones de partidas multijugador en línea. Sasuki puede suspender su cuenta o suscripción individual a causa de cualquier conducta o actividad que Sasuki considere ilegal, que constituya una trampa o que afecte negativamente de cualquier otro modo al disfrute de Sasuki por parte de otros suscriptores. Reconoce que Sasuki no tiene la obligación de avisarle antes de suspender sus suscripciones o su cuenta, aunque podría decidir hacerlo.
                
                No está permitido utilizar trucos, software automatizado (bots), mods, aplicaciones de trampas (hacks) ni cualquier otro software de terceros no autorizado para modificar o automatizar cualquier proceso del bazar de suscripciones.
                
                5. CONTENIDO DE TERCEROS
                
                En cuanto a las suscripciones, el software y otro tipo de contenido proporcionado por terceros y ajeno a Sasuki, Sasuki no filtra ese contenido de terceros disponible en Sasuki o a través de otras fuentes. Sasuki no acepta responsabilidad ni obligación alguna por el contenido de terceros. Algunas aplicaciones de software de terceros pueden utilizarse con fines comerciales; no obstante, si usted adquiere ese software a través de Sasuki, solo puede utilizarlo con fines privados.
                
                6. CONTENIDO GENERADO POR EL USUARIO
                
                A. Disposiciones generales
                
                Con «contenido generado por el usuario» nos referimos a cualquier contenido que usted ponga a disposición de otros usuarios como resultado de su uso de las características para varios usuarios de Sasuki o bien a disposición de Sasuki o sus empresas asociadas al utilizar el software o por cualquier otro motivo.
                
                Concede a Sasuki y sus empresas asociadas el derecho irrevocable y no exclusivo de utilizar, reproducir, modificar, distribuir, transmitir, divulgar o comunicar de cualquier otro modo contenido generado por el usuario y crear obras derivadas de él, así como de mostrar y ejecutar públicamente el contenido generado por el usuario y las obras derivadas de él en relación con el funcionamiento y la promoción del sitio de Sasuki. Si utiliza el almacenamiento «en nube» de Sasuki, nos concede una licencia para almacenar su información como parte de dicho servicio. Nos reservamos el derecho de poner límites a la cantidad de espacio para almacenamiento que se le permite utilizar.
                
                Si proporciona a Sasuki comentarios o sugerencias sobre Sasuki, el software o cualquier producto o servicio de Sasuki, Sasuki tiene total libertad para darles el uso que desee sin tener que responder de ninguna forma ante usted.
                
                B. Contenido cargado en Sasuki Workshop
                
                Algunos juegos y algunas aplicaciones disponibles en Sasuki («aplicaciones compatibles con Workshop») permiten crear contenido generado por el usuario basado en dichas aplicaciones o que las utiliza y enviar ese contenido («aportación a Workshop») a una página web o varias de Sasuki Workshop. Las aportaciones a Workshop son visibles para la comunidad Sasuki y, en el caso de ciertas categorías de aportaciones, los usuarios pueden interactuar con ellas, descargarlas o adquirirlas. En algunos casos, Sasuki u otros desarrolladores pueden incorporar las aportaciones a Workshop a juegos o a un bazar de suscripciones.
                
                Comprende y acepta que Sasuki no tiene ninguna obligación de usar, distribuir ni seguir distribuyendo copias de ninguna aportación a Workshop y que se reserva el derecho, no la obligación, de restringir o eliminar aportaciones a Workshop por cualquier motivo.
                
                Algunas aplicaciones compatibles con Workshop o páginas web de Workshop pueden incluir términos especiales («términos específicos de las aplicaciones») que complementan o alteran los términos dispuestos en este apartado. En particular, en el caso de las aportaciones a Workshop de pago, los términos específicos de las aplicaciones explican el reparto de los ingresos. Salvo especificación en contrario en los términos específicos de las aplicaciones (si existen), se aplican las siguientes normas generales a las aportaciones a Workshop.
                
                Las aportaciones a Workshop son suscripciones y, por lo tanto, acepta que los suscriptores que reciban distribuciones de ellas disfrutan de los mismos derechos de uso (y están sujetos a las mismas restricciones) que se estipulan en este acuerdo para el resto de suscripciones.
                No obstante la licencia descrita en el apartado 6.A., Sasuki solo tiene derecho a modificar las aportaciones a Workshop o a crear obras derivadas de ellas en estos casos: (a) Sasuki puede realizar las modificaciones necesarias para que la aportación sea compatible con Sasuki, las funciones de Workshop o la interfaz de usuario y (b) Sasuki o el desarrollador oportuno pueden realizar en las aportaciones a Workshop aceptadas para su distribución dentro de las aplicaciones las modificaciones que estimen necesarias o recomendables para mejorar la dinámica de juego.
                Tiene derecho a eliminar, a su sola discreción, aportaciones a Workshop de las páginas de Workshop correspondientes. Si lo hace, Sasuki deja de tener el derecho de usar, distribuir, transmitir, comunicar y mostrar o ejecutar públicamente la aportación a Workshop con estas salvedades: (a) Sasuki puede seguir ejerciendo estos derechos con las aportaciones a Workshop aceptadas para su distribución dentro de los juegos o distribuidas de modo que se puedan usar dentro de ellos y (b) la eliminación no afecta a los derechos de los suscriptores que ya hayan tenido acceso a una copia de la aportación a Workshop.
                Salvo especificación en contrario en los términos específicos de las aplicaciones, la aceptación por parte de Sasuki de su aportación a Workshop es su única compensación, de manera que no puede exigir ningún otro derecho ni ninguna otra compensación en relación con los derechos otorgados a Sasuki y a otros suscriptores.
                
                C. Declaraciones y garantías
                
                Usted declara y garantiza que cuenta con los derechos apropiados sobre todo el contenido generado por el usuario para otorgar a Sasuki y a las demás partes involucradas las licencias que se describen en los apartados A. y B. anteriores o en cualquier término de licencia específico de la aplicación compatible con Workshop o página de Workshop que corresponda. Eso incluye, sin limitación, todo tipo de derechos de propiedad intelectual o derechos personales o de patente relacionados con el contenido generado por el usuario o incluidos en él. En particular, con respecto a las aportaciones a Workshop, declara y garantiza que es su autor original (o usted y otros colaboradores si se trata de aportaciones conjuntas y, en ese caso, también que tiene derecho a enviar tales aportaciones a Workshop en nombre de dichos colaboradores).
                
                Asimismo, declara y garantiza que ni el contenido generado por el usuario en sí ni su envío ni la concesión de derechos sobre él infringen ningún contrato ni ninguna ley ni normativa aplicables.
                
                7. RENUNCIAS; LIMITACIÓN DE RESPONSABILIDAD; SIN GARANTÍAS
                
                PARA CLIENTES DE LA UE, ESTE APARTADO 7 NO REDUCE SUS DERECHOS DE CONSUMIDOR AMPARADOS POR LA LEGISLACIONES VIGENTES EN SU JURISDICCIÓN LOCAL.
                
                A. RENUNCIAS
                
                SASUKI, SUS EMPRESAS ASOCIADAS Y SUS PROVEEDORES DE SERVICIOS RENUNCIAN DE FORMA EXPRESA A (I) CUALQUIER GARANTÍA SOBRE SASUKI, EL SOFTWARE DE SASUKI Y LOS ARTÍCULOS COMERCIALES, Y (II) CUALQUIER OBLIGACIÓN DE DERECHO CONSUETUDINARIO EN RELACIÓN CON SASUKI, EL SOFTWARE Y LAS SUSCRIPCIONES, INCLUIDAS LAS OBLIGACIONES POR AUSENCIA DE NEGLIGENCIA Y AUSENCIA DE ESFUERZO RAZONABLE Y DILIGENCIA. SASUKI, EL SOFTWARE, LAS SUSCRIPCIONES Y CUALQUIER INFORMACIÓN DISPONIBLE RELACIONADA CON ELLOS SE PROPORCIONAN «TAL CUAL», «SEGÚN DISPONIBILIDAD», «CON TODOS LOS DEFECTOS» Y SIN NINGÚN TIPO DE GARANTÍA, YA SEA EXPRESA O IMPLÍCITA, INCLUIDAS PERO SIN LIMITARSE A ELLAS, LAS GARANTÍAS IMPLÍCITAS DE COMERCIALIZACIÓN, ADECUACIÓN PARA UN DETERMINADO FIN O DE NO VIOLACIÓN DE DERECHOS. QUEDA EXCLUIDA DE MANERA EXPRESA CUALQUIER GARANTÍA CONTRA LA VIOLACIÓN DE DERECHOS QUE PUDIERA QUEDAR RECOGIDA EN EL APARTADO 2-312 DEL «UNIFORM COMMERCIAL CODE» (UCC) O EN CUALQUIER OTRO CÓDIGO ESTATAL COMPARABLE. ASIMISMO, NO EXISTE NINGUNA GARANTÍA DE TITULARIDAD, NO INTERFERENCIA EN SU DISFRUTE NI AUTORIDAD EN RELACIÓN CON SASUKI, EL SOFTWARE, LAS SUSCRIPCIONES O LA INFORMACIÓN DISPONIBLE RELATIVA A ELLOS. ESTE APARTADO SE APLICARÁ HASTA EL MÁXIMO PERMITIDO POR LAS LEYES VIGENTES.
                
                B. LIMITACIÓN DE RESPONSABILIDAD
                
                HASTA DONDE LO PERMITAN LAS LEYES CORRESPONDIENTES, NI SASUKI NI SUS OTORGANTES DE LICENCIAS NI SUS EMPRESAS ASOCIADAS NI NINGUNO DE LOS PROVEEDORES DE SERVICIOS DE SASUKI SERÁN RESPONSABLES EN MODO ALGUNO POR LAS PÉRDIDAS O DAÑOS DE CUALQUIER NATURALEZA DERIVADOS DEL USO O LA IMPOSIBILIDAD DE USAR SASUKI, LA CUENTA Y EL SOFTWARE, INCLUIDOS PERO SIN LIMITARSE A ELLOS, LA PÉRDIDA DE FONDO DE COMERCIO, LA INTERRUPCIÓN DE TRABAJOS, LOS FALLOS O ERRORES INFORMÁTICOS O CUALQUIER OTRO DAÑO O PÉRDIDA COMERCIAL. SASUKI NO SERÁ RESPONSABLE EN NINGÚN CASO DE DAÑOS INDIRECTOS, INCIDENTALES, CONSECUENTES, ESPECIALES, PUNITIVOS NI EJEMPLARES NI DE CUALQUIER OTRO TIPO QUE PUDIERAN DEPENDER O DERIVARSE DE CUALQUIER MODO DE SASUKI, EL SOFTWARE, LAS SUSCRIPCIONES Y CUALQUIER INFORMACIÓN DISPONIBLE RELACIONADA CON ELLOS NI DEL RETRASO O LA IMPOSIBILIDAD DE USO DEL SOFTWARE, LAS SUSCRIPCIONES O CUALQUIER INFORMACIÓN, INCLUSO EN CASO DE ERROR, AGRAVIO (INCLUIDA NEGLIGENCIA), RESPONSABILIDAD ESTRICTA Y RUPTURA DE CONTRATO O DE LA GARANTÍA DE SASUKI, NI SIQUIERA EN EL CASO DE QUE SE HUBIERA INFORMADO A SASUKI DE LA POSIBILIDAD DE DICHOS DAÑOS. ESTAS LIMITACIONES Y EXCLUSIONES RELATIVAS A DAÑOS SON APLICABLES INCLUSO EN EL SUPUESTO DE QUE ALGÚN RECURSO LEGAL NO PROPORCIONE UN RESARCIMIENTO ADECUADO.
                
                DEBIDO A QUE ALGUNOS PAÍSES O JURISDICCIONES NO PERMITEN LA EXCLUSIÓN O LA LIMITACIÓN DE LA RESPONSABILIDAD POR DAÑOS INCIDENTALES O DERIVADOS, EN DICHOS PAÍSES O JURISDICCIONES, LA RESPONSABILIDAD DE SASUKI, SUS OTORGANTES DE LICENCIAS Y SUS EMPRESAS ASOCIADAS SE LIMITARÁ HASTA DONDE LO PERMITAN LAS LEYES LOCALES VIGENTES.
                
                C. SIN GARANTÍAS
                
                NI SASUKI NI SUS ASOCIADAS GARANTIZAN LA CONTINUIDAD, LA AUSENCIA DE ERRORES, LA AUSENCIA DE VIRUS NI LA SEGURIDAD DEL FUNCIONAMIENTO Y EL ACCESO A SASUKI, EL SOFTWARE, LA CUENTA DEL USUARIO Y SUS SUSCRIPCIONES O CUALQUIER INFORMACIÓN DISPONIBLE Y RELACIONADA CON ELLOS.
                
                8. INDEMNIZACIÓN Y EXONERACIÓN
                
                Usted acepta defender, indemnizar y salvaguardar a Sasuki, sus otorgantes de licencias y sus afiliados ante cualquier responsabilidad, reclamación y gasto, incluidos cargos por costas legales, que dependan o se deriven del incumplimiento de este acuerdo, el uso de Sasuki o cualquier suscripción por parte de usted o cualquier otra persona que utilice su cuenta o en relación con cualquier contenido generado por el usuario o la creación, la distribución, la promoción y el uso de mods u obras derivadas, creados o suministrados por usted u otras personas que utilicen su cuenta. Sasuki se reserva el derecho, a su propio cargo, de asumir la defensa y el control exclusivos de cualquier asunto que pudiera estar sujeto de otro modo a indemnizaciones por parte de usted. En ese caso, usted no tendrá ninguna otra obligación de indemnizar a Sasuki en relación con tal asunto. Este apartado relativo a indemnizaciones seguirá vigente incluso después de la finalización del presente acuerdo.
                
                9. MODIFICACIONES AL PRESENTE ACUERDO
                
                AVISO IMPORTANTE: Si eres un cliente que reside en Alemania, se te aplica una versión diferente de la Sección 9, la cual está disponible aquí.
                
                Sasuki se reserva el derecho a modificar el presente acuerdo (incluidos los términos de suscripción y las normas de uso) en cualquier momento y a su exclusiva discreción. Si Sasuki modifica el acuerdo, tales modificaciones entrarán en vigor treinta (30) días después de que Sasuki le haga llegar el aviso del acuerdo modificado, ya sea por correo electrónico o como una notificación dentro del software. Puede consultar el acuerdo en cualquier momento en http://www.Sasukipowered.com/. Si no cancela su cuenta o no deja de utilizar las suscripciones afectadas por la modificación dentro de los treinta (30) días siguientes a recibir la notificación de la modificación, se entenderá que acepta todos los términos y condiciones modificados. Si no acepta las modificaciones o alguno de los términos del presente acuerdo, su único recurso es cancelar su cuenta o dejar de utilizar las suscripciones afectadas. Sasuki no tendrá obligación alguna de devolver las cantidades que se hayan podido cobrar en la cuenta antes de la cancelación de esta o de que deje de utilizar alguna suscripción; así mismo, bajo estas circunstancias, Sasuki tampoco tendrá ninguna obligación de devolver la parte proporcional de gasto alguno.
                
                10. VIGENCIA Y FINALIZACIÓN
                
                A. Vigencia
                
                La vigencia del presente acuerdo («vigencia») comienza en la fecha en que usted dio su primera aceptación de estos términos, y continuará hasta su rescisión, según lo estipulado en este acuerdo.
                
                B. Finalización por parte de usted
                
                Puede cancelar su cuenta en cualquier momento. Puede dejar de utilizar una suscripción en cualquier momento o, si lo prefiere, puede solicitar que cancelemos su acceso a una suscripción. No obstante, las suscripciones no son transferibles e, incluso si su acceso a una suscripción para un determinado juego o una aplicación concreta ha finalizado, la clave de activación original no podrá registrarse para ninguna otra cuenta, ni siquiera si la suscripción se ha obtenido en un comercio minorista. El acceso a las suscripciones adquiridas como parte de un paquete o conjunto no se puede cancelar de forma individual; al cancelar el acceso a uno de los juegos que componen el conjunto, se cancelará el acceso a todos los juegos adquiridos en el paquete. En el caso de que usted cancele una cuenta o deje de utilizar cualquier suscripción o solicite que se cancele el acceso a una suscripción, no tendrá derecho a recibir la devolución de cargo alguno ni a que se le reembolse el pago que hiciera por la suscripción. Sasuki se reserva el derecho a cobrar los cargos, recargos o costes realizados antes de la cancelación de la cuenta o de que usted dejara de tener acceso a una determinada suscripción. Además, usted es responsable de cualquier cargo al que se hubiera comprometido con distribuidores o proveedores de contenido antes de que procediera a la cancelación.
                
                C. Finalización por parte de Sasuki
                
                Sasuki puede cancelar su cuenta o cualquier suscripción en cualquier momento en caso de que (a) Sasuki deje de proporcionar ese tipo de suscripción en general a suscriptores en situaciones similares o (b) usted incumpla cualquiera de los términos del presente acuerdo (incluidos los términos de suscripción y las normas de uso). En el caso de que Sasuki cancele o rescinda su cuenta o una suscripción concreta por el incumplimiento de este acuerdo o por actividades inadecuadas o delictivas, usted no recibirá ningún reembolso ni se le devolverán los cargos por suscripción ni los fondos no usados de su cartera de Sasuki.
                
                D. Vigencia de los términos
                
                Los apartados 2(C), 2(D), 2(F), 2(G), 3(A), 3(B), 3(D), 3(H) y del 5 al 13 seguirán vigentes al término o a la finalización del presente acuerdo.
                
                11. LEGISLACIÓN O JURISDICCIÓN APLICABLES.
                
                Para suscriptores de países no pertenecientes a la UE:
                
                Usted acepta que el presente acuerdo se considerará redactado y otorgado en el estado de Washington (EE. UU.) y que cualquier disputa derivada de él se resolverá de acuerdo con las leyes de Washington. Según lo estipulado más adelante en el apartado 12 (Resolución de conflictos/Arbitraje vinculante/Renuncia a demandas colectivas), usted accede a que cualquier reclamación interpuesta por usted contra Sasuki mediante un proceso legal se iniciará y continuará de forma exclusiva en cualquier tribunal estatal o federal con sede en King County, Washington, y que dicho tribunal tendrá competencia en el asunto con respecto a la disputa entre las partes, y por el presente acuerdo usted reconoce la jurisdicción exclusiva de dicho tribunal. En cualquier disputa que pudiera surgir del presente acuerdo, la parte a la que el tribunal dé la razón tendrá derecho a que se le compensen los gastos y las costas legales.
                
                Para suscriptores de la UE:
                
                Usted accede a que este acuerdo se considere a todos los efectos como realizado y ejecutado en el Gran Ducado de Luxemburgo, y a que este acuerdo se suscriba sujeto a las leyes de Luxemburgo, excluidas la ley de conflictos y la Convención de las Naciones Unidas sobre los contratos de compraventa internacional de mercancías (CISG). No obstante, en el caso de que las leyes de Luxemburgo proporcionen un menor grado de protección al consumidor que las leyes de su país de residencia, prevalecerán las leyes de protección al consumidor de su país. En cualquier disputa que pudiera surgir del presente acuerdo, la parte a la que el tribunal dé la razón tendrá derecho a que se le compensen los gastos y las costas legales.
                
                12. RESOLUCIÓN DE CONFLICTOS/ARBITRAJE VINCULANTE/RENUNCIA A DEMANDAS COLECTIVAS
                
                La mayoría de los problemas de los usuarios se puede resolver mediante nuestro sitio de atención al cliente de Sasuki, en https://support.Sasukipowered.com/. Si no conseguimos resolver su problema y sigue habiendo motivo de conflicto entre usted y Sasuki, en este apartado se explica cómo nos comprometemos a resolverlo.
                
                USTED Y NOSOTROS, SASUKI, ACORDAMOS RESOLVER TODOS LOS CONFLICTOS Y RECLAMACIONES QUE SURJAN ENTRE LAS DOS PARTES MEDIANTE UN MECANISMO DE ARBITRAJE VINCULANTE E INDIVIDUAL. ESO INCLUYE, PERO SIN LIMITARSE A, CUALQUIER RECLAMACIÓN RESULTANTE O RELACIONADA CON (I) CUALQUIER ASPECTO DE LA RELACIÓN ENTRE USTEDES Y NOSOTROS; (II) ESTE ACUERDO, O (III) EL USO QUE USTED HAGA DE SASUKI, SU CUENTA O EL SOFTWARE. SE APLICARÁ INDEPENDIENTEMENTE DE SI DICHAS RECLAMACIONES SON DE CARÁCTER CONTRACTUAL O POR AGRAVIOS, INFRACCIÓN DE LEYES, FRAUDE, COMPETENCIA DESLEAL, FALSAS DECLARACIONES O TIENEN CUALQUIER OTRA BASE LEGAL.
                
                No obstante, este apartado no se aplica a los siguientes tipos de reclamaciones o conflictos, que usted o Sasuki pueden llevar ante cualquier tribunal competente: (i) reclamaciones o infracciones u otros malos usos de los derechos de propiedad intelectual, incluidas las reclamaciones que soliciten medidas cautelares, y (ii) reclamaciones relacionadas con o que se deriven de cualquier uso supuestamente no autorizado, piratería o robo.
                
                Este apartado no impide que usted lleve su conflicto ante cualquier organismo oficial federal, estatal o local que pueda, si la ley lo permite, solicitarnos una rectificación a favor de usted.
                
                El arbitraje consiste en presentar el motivo de un conflicto ante un mediador neutral, en vez de ante un juez o un jurado. El arbitraje es menos formal que una demanda judicial, y el proceso de presentación de pruebas es mucho menos exhaustivo. Sigue unas reglas distintas a las de los juicios ante un tribunal, y está sujeto a una revisión muy limitada por parte de los tribunales. El mediador emitirá una decisión por escrito y razonará los motivos de su fallo, si cualquiera de las dos partes lo solicita. USTED COMPRENDE QUE USTED Y SASUKI RENUNCIAN AL DERECHO A LLEVAR SUS CONFLICTOS ANTE UN TRIBUNAL ASÍ COMO SOMETERLOS A UN JUICIO ANTE UN JUEZ O UN JURADO.
                
                Usted y Sasuki están de acuerdo en hacer todos los esfuerzos razonables y de buena fe para resolver de manera informal cualquier conflicto, antes de iniciar un proceso de arbitraje. Si una de las partes decide recurrir al arbitraje, primero deberá enviar a la otra un aviso por escrito que describa la naturaleza de la reclamación o conflicto y que indique el tipo de compensación que se solicita. Si usted y Sasuki no llegan a un acuerdo para resolver esa reclamación o ese conflicto dentro de los 30 días siguientes a la recepción de ese aviso, usted o Sasuki pueden iniciar el proceso de arbitraje. El aviso escrito debe enviarse a Sasuki mediante correo postal a la atención de «Arbitration Notice, Sasuki Corporation, P.O. Box 1688, Bellevue, WA 98004 (EE. UU.)».
                
                En este apartado se aplica la Ley federal sobre arbitraje (Federal Arbitration Act). El arbitraje se regirá por las normas de arbitraje comercial (Commercial Arbitration Rules) de la asociación de arbitraje de Estados Unidos (American Arbitration Association, «AAA») y, cuando corresponda, por los procedimientos complementarios para la resolución de disputas relacionadas con el consumidor (Supplementary Procedures for Consumer Related Disputes) de la AAA, según lo modificado mediante este acuerdo; ambos conjuntos de normas y procedimientos se pueden consultar en http://www.adr.org. El mediador está obligado a actuar según los términos de este acuerdo.
                
                La AAA administrará el arbitraje. Este puede realizarse mediante la presentación de documentos, por teléfono o en persona en el lugar en el que usted viva o en otro lugar decidido de mutuo acuerdo.
                
                Si usted reclama una compensación de 10 000 USD o inferior, al final del procedimiento, Sasuki accede a reembolsarle las tasas de solicitud y la parte que le corresponda a usted de los costes del arbitraje, incluida su parte de la compensación al mediador, a no ser que este determine que, a su criterio, sus reclamaciones son frívolas, o los costes son poco razonables. Sasuki accede a no solicitar compensación por los honorarios de sus abogados o por los costes del arbitraje a no ser que el mediador determine que la reclamación que usted ha presentado es frívola o que, según su criterio, los costes son poco razonables. Si desea una compensación superior a 10 000 USD, los costes del arbitraje, incluida la retribución para el mediador, se dividirán entre usted y Sasuki, según las Normas de Arbitraje comercial de la AAA y los Procedimientos Suplementarios para la resolución de disputas relacionadas con el consumidor, también de la AAA, si son aplicables.
                
                USTED Y SASUKI ACUERDAN NO INICIAR NI PARTICIPAR EN UNA DEMANDA COLECTIVA O REPRESENTATIVA, UNA ACCIÓN GENERAL CON ABOGADO PRIVADO O UN ARBITRAJE COLECTIVO, INCLUSO EN EL CASO DE QUE LOS PROCEDIMIENTOS O LAS NORMAS DE LA AAA LO PERMITAN. EL MEDIADOR PUEDE CONCEDER UNA COMPENSACIÓN SOLO A FAVOR DE LA PARTE QUE SOLICITE COMPENSACIÓN Y SOLO HASTA EL PUNTO DE LO RECLAMADO POR LA PARTE INDIVIDUAL. Asimismo, usted y Sasuki acuerdan no buscar combinar ninguna acción legal o arbitraje con cualquier otra acción legal o arbitraje, sin el consentimiento de todas las partes firmantes de este acuerdo y de todas las demás acciones legales o arbitrajes.
                
                Si el acuerdo mencionado en este apartado respecto a no elevar ni formar parte de una demanda colectiva o representativa, una demanda general mediante abogado privado o un arbitraje colectivo se considerara ilegal o no practicable, usted y Sasuki acuerdan que no se podrá separar del resto del apartado, y que por lo tanto todo este apartado será inaplicable, y cualquier reclamación o conflicto deberá resolverse ante los tribunales y no mediante un arbitraje colectivo.
                
                No obstante lo contemplado en este apartado, usted tiene el derecho a presentar cualquier reclamación ante un tribunal de menor cuantía, siempre y cuando se cumplan todos los requisitos exigidos en un tribunal de menor cuantía, incluida cualquier restricción sobre la jurisdicción y el importe en cuestión.
                
                Este apartado 12 se aplicará hasta el máximo permitido por las leyes vigentes. Si las leyes de su jurisdicción prohíben la aplicación de algunas o todas las disposiciones de este apartado, independientemente de lo indicado en el apartado 11 (Leyes o jurisdicción aplicables), esas disposiciones no se le aplicarán.
                
                13. VARIOS
                
                Salvo estipulación expresa en contrario en este acuerdo, en el caso de que un tribunal competente
                 dictamine que alguna de las disposiciones de este acuerdo no son aplicables, esa disposición se
                  aplicará hasta el máximo permitido y el resto del acuerdo se mantendrá plenamente vigente y
                   aplicable. El presente acuerdo (incluidos los términos de suscripción, las normas de uso y la
                    política de confidencialidad de Sasuki) constituye e incluye la totalidad del acuerdo entre las
                     partes en cuanto al objeto del contrato y sustituye cualquier acuerdo oral o escrito previo. Usted
                      acepta que el presente acuerdo no pretende conceder ni concede ningún derecho o recurso a personas
                       que no sean las firmantes de este acuerdo.
                Las obligaciones de Sasuki están sujetas a las leyes vigentes y a los procesos legales y Sasuki
                 puede cumplir las solicitudes de aplicación de la ley a pesar de que algún término pueda entrar en conflicto.
                
                Usted acepta cumplir todas las leyes y normativas de importación y exportación aplicables. Usted acepta no exportar el software ni permitir el uso de su cuenta por parte de individuos de cualquier país partidario del terrorismo para los que la oficina de administración de exportaciones de EE. UU. haya decretado una restricción de las exportaciones cifradas en el momento de la exportación. Usted declara y garantiza que no se encuentra en ninguno de esos países prohibidos y que no está bajo su control ni es ciudadano o residente en ellos.
                                  
           		</div>

                <input type="checkbox" name="" value="Estoy de Acuerdo" required>     He leido y Acepto las condiciones mencionadas
            </div>
			<input type="submit" name="" value="Enviar">
        </div>
        <div class="row">
        </div>
        </fieldset>
       	</form>
    	<div class="row">
    	</div>
    </div>
</div><br>
<hr>
</div>
</div>
	<c:import url="footer.jsp" />    
</body>
</html>