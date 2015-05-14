
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
```CSS
vuelo>billete>trayecto+pasajeros+fecha
```

```XML
<vuelo>
	<billete>
		<trayecto></trayecto>
		<pasajeros></pasajeros>
		<fecha></fecha>
	</billete>
</vuelo>
```


## Operador MULTIPLICACION *
```CSS
div>ul>li*5
```

```HTML
<div>
	<ul>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
```

## Operador CLIMB-UP ^
```CSS
vuelo>billete>trayecto>origen+destino+idayvuelta^fecha>salida+regreso^pasajeros>adultos+ninhos>clase
```

```XML
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
			<niños>
				<clase></clase>
			</niños>
		</pasajeros>
	</billete>
</vuelo>
```

```CSS
vuelo>billete*3>trayecto>origen+destino+idayvuelta^fecha>salida+regreso^pasajeros>adultos+ninhos>clase
```
	genera billete * 3


### Operador CLIMB-UP ^  n-veces:
```CSS
xs:schema>xs:element>xs:complextype>xs:sequence>xs:element*4^^^xs:element
```

```XML
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
```

### Igual a la anterior pero con grouping ( )
```CSS
xs:schema>(xs:element>xs:complextype>xs:sequence>xs:element*4)+xs:element
```

## ATRIBUTE OPERATORS

### CUSTOM ATTRIBUTES [ atrib = "valor" * n ]
```CSS
vuelo>billete[WAC]
```

```XML
<vuelo>
	<billete WAC=""></billete>
</vuelo>
```

### ID and CLASS
```CSS
div#contenedor>h1>ul>li.listitem*4
```

```HTML
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
```

```CSS
div#header+div.page+div#footer.class1.class2.class3
```

```HTML
	<div id="header"></div>
	<div class="page"></div>
	<div id="footer" class="class1 class2 class3"></div>
```

## Item numbering: $ => afecta al elemento que acompaña:
```CSS
div#contenedor>h1>ul>li.listitem$*4
```

```HTML
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
```
### Dos o tres dígitos:  $$$
```CSS
div#contenedor>h1>ul>li.listitem$$$*4
```

```HTML
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
```

### @- para cambiar el orden (sort) => add @- after $:
```CSS
div#contenedor>h1>ul>li.listitem$@-*4
```

```HML
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
```

## Algunas expresiones ejemplo Schema
```CSS
xs:sequence>xs:element[name type]*5
```

```XML
<xs:sequence>
	<xs:element name="" type=""></xs:element>
	<xs:element name="" type=""></xs:element>
	<xs:element name="" type=""></xs:element>
	<xs:element name="" type=""></xs:element>
	<xs:element name="" type=""></xs:element>
</xs:sequence>
```

```CSS
xs:complextype[name]>xs:sequence>xs:element[name type]*5
```

```XML
<xs:complextype name="">
	<xs:sequence>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
	</xs:sequence>
</xs:complextype>

```CSS
xs:complextype[name]>xs:sequence>xs:element[name type="xs:string"]*5^xs:attribute[name type]
```

```XML
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
```

```CSS
xs:element[name type]+xs:complextype[name]>xs:sequence>xs:element[name type]*4
```

```XML
<xs:element name="" type=""></xs:element>
<xs:complextype name="">
	<xs:sequence>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
		<xs:element name="" type=""></xs:element>
	</xs:sequence>
</xs:complextype>
```

