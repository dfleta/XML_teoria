
Expresiones Emmet
=================

## Documentacion

[Syntax](http://docs.emmet.io/abbreviations/syntax/)

## Eclipse Installation

 1. Go to `Help > Install New Software…` in your Eclipse IDE
 2. Add http://emmet.io/eclipse/updates/ in `update sites`.
 3. Check `Emmet for Eclipse` group in available plugins list, click Next button and follow the installation instructions
 4. Restart Eclipse

## Expansión de la expresión

	Ctrl + E

## Operador CHILD >  y  SIBLING +

	vuelo>billete>trayecto+pasajeros+fecha

	<vuelo>
		<billete>
			<trayecto></trayecto>
			<pasajeros></pasajeros>
			<fecha></fecha>
		</billete>
	</vuelo>


## Operador MULTIPLICACION *

	div>ul>li*5

	<div>
		<ul>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>


## Operador CLIMB-UP ^

	vuelo>billete>trayecto>origen+destino+idayvuelta^fecha>salida+regreso^pasajeros>adultos+ninhos>clase

	<vuelo>
		<billete>
			<trayecto>
				<origen></origen>
				<destino></destino>
				<idayvuelta></idayvuelta>
			</trayecto>
			<fecha>
				<salida></salida>
				<regreso></regreso>
			</fecha>
			<pasajeros>
				<adultos></adultos>
				<ninhos>
					<clase></clase>
				</ninhos>
			</pasajeros>
		</billete>
	</vuelo>

	vuelo>billete*3>trayecto>origen+destino+idayvuelta^fecha>salida+regreso^pasajeros>adultos+ninhos>clase

	genera billete * 3
	
## Operador CLIMB-UP ^  n-veces: 

	xs:schema>xs:element>xs:complextype>xs:sequence>xs:element*4^^^xs:element

	<xs:schema>
		<xs:element>
			<xs:complextype>
				<xs:sequence>
					<xs:element></xs:element>
					<xs:element></xs:element>
					<xs:element></xs:element>
					<xs:element></xs:element>
				</xs:sequence>
			</xs:complextype>
		</xs:element>
		<xs:element></xs:element>
	</xs:schema>


## Igual a la anterior pero con grouping ( )

	xs:schema>(xs:element>xs:complextype>xs:sequence>xs:element*4)+xs:element


## ATRIBUTE OPERATORS

	## CUSTOM ATTRIBUTES [ atrib = "valor" * n ]

	vuelo>billete[WAC]

	<vuelo>
		<billete WAC=""></billete>
	</vuelo>


	## ID and CLASS

	div#contenedor>h1>ul>li.listitem*4

	<div id="contenedor">
		<h1>
			<ul>
				<li class="listitem"></li>
				<li class="listitem"></li>
				<li class="listitem"></li>
				<li class="listitem"></li>
			</ul>
		</h1>
	</div>

	div#header+div.page+div#footer.class1.class2.class3

	<div id="header"></div>
	<div class="page"></div>
	<div id="footer" class="class1 class2 class3"></div>


	## Item numbering: $  		=> afecta al elemento que acompaña:

	div#contenedor>h1>ul>li.listitem$*4

	<div id="contenedor">
		<h1>
			<ul>
				<li class="listitem1"></li>
				<li class="listitem2"></li>
				<li class="listitem3"></li>
				<li class="listitem4"></li>
			</ul>
		</h1>
	</div>

	## Dos o tres dígitos:  $$$

	div#contenedor>h1>ul>li.listitem$$$*4

	<div id="contenedor">
		<h1>
			<ul>
				<li class="listitem001"></li>
				<li class="listitem002"></li>
				<li class="listitem003"></li>
				<li class="listitem004"></li>
			</ul>
		</h1>
	</div>

	## @- para cambiar el orden (sort) => add @- after $:

	div#contenedor>h1>ul>li.listitem$@-*4

	<div id="contenedor">
		<h1>
			<ul>
				<li class="listitem4"></li>
				<li class="listitem3"></li>
				<li class="listitem2"></li>
				<li class="listitem1"></li>
			</ul>
		</h1>
	</div>

## Algunas expresiones ejemplo Schema

	xs:sequence>xs:element[name type]*5

	<xs:sequence>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
	</xs:sequence>


	xs:complextype[name]>xs:sequence>xs:element[name type]*5

	<xs:complextype name="">
		<xs:sequence>
			<xs:element name="" type=""></xs:element>
			<xs:element name="" type=""></xs:element>
			<xs:element name="" type=""></xs:element>
			<xs:element name="" type=""></xs:element>
			<xs:element name="" type=""></xs:element>
		</xs:sequence>
	</xs:complextype>

	xs:complextype[name]>xs:sequence>xs:element[name type="xs:string"]*5^xs:attribute[name type]

	<xs:complextype name="">
		<xs:sequence>
			<xs:element name="" type="xs:string"></xs:element>
			<xs:element name="" type="xs:string"></xs:element>
			<xs:element name="" type="xs:string"></xs:element>
			<xs:element name="" type="xs:string"></xs:element>
			<xs:element name="" type="xs:string"></xs:element>
		</xs:sequence>
		<xs:attribute name="" type=""></xs:attribute>
	</xs:complextype>

	xs:element[name type]+xs:complextype[name]>xs:sequence>xs:element[name type]*4


