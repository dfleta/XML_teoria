<?xml version="1.0"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
  <!ENTITY copy   "&#169;">
]>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:europass="http://europass.cedefop.europa.eu/Europass/V1.2">
<xsl:template match="/">
<xsl:comment>
  # 
	© European Communities, 2002-2007 http://europass.cedefop.europa.eu
  # http://europass.cedefop.europa.eu/europass/home/botnav/LegalNotice/navigate.action
  # Name      : cv_es_ES.xsl
  # Date      : 20070928
  # Purpose   : Provides a way to show the Europass CV in HTML format.
  # Author(s) : Europass team
  # URL       : http://europass.cedefop.europa.eu/TechnicalResources/XML/xsl/europass-xsl/cv_es_ES.xsl
</xsl:comment>
<xsl:variable name="firstNameBefore">
<xsl:choose>
  <xsl:when test="//field[@name='step1.firstName' and @before='step1.lastName']">1</xsl:when>
  <xsl:otherwise>0</xsl:otherwise>
</xsl:choose>
</xsl:variable>
<xsl:variable name="step3Before">
<xsl:choose>
  <xsl:when test="//field[@name='step3List' and @before='step4List']">1</xsl:when>
  <xsl:otherwise>0</xsl:otherwise>
</xsl:choose>
</xsl:variable>
<html>
  <head>
    <title>CV - HTML</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="http://europass.cedefop.europa.eu/instruments/css/html.css" type="text/css" rel="stylesheet"/>
  </head>
<body>
<table width="700" border="0" cellspacing="0" cellpadding="0" class="CV">
  <tr>
    <td><img src="http://europass.cedefop.europa.eu/instruments/images/logospace.gif" height="1" width="190"/></td>
    <td><img src="http://europass.cedefop.europa.eu/instruments/images/logospace.gif" height="1" width="7"/></td>
	<td><img src="http://europass.cedefop.europa.eu/instruments/images/logospace.gif" height="1" width="8"/></td>
    <td colspan="11"><img src="http://europass.cedefop.europa.eu/instruments/images/logospace.gif" height="1" width="495"/></td>
  </tr>
  <tr>
    <td class="Logo" rowspan="2">&#160;</td>
	<td style="height:42px;">&#160;</td>
    <td colspan="12" rowspan="2">&#160;</td>
  </tr>
  <tr>
    <td class="Corner">&#160;</td>
  </tr>
  <tr>
    <td class="Heading1">&#160;</td>
    <td class="VerticalLine">&#160;</td>
	<td>&#160;</td>
    <td class="Normal" colspan="11">&#160;</td>
  </tr>
  <tr>
    <td class="Title">
	  Curriculum Vitae<br/>
      Europass
	</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11">&#160;</td>
  </tr>
  <tr>
    <td class="Heading1">&#160;</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11">&#160;</td>
  </tr>
  <tr>
    <td class="Heading1">Información personal</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11">&#160;</td>
  </tr>
  <tr>
    <td class="Label">
	  <xsl:choose>
	    <xsl:when test="$firstNameBefore=0">
	      Apellido(s)&#160;Nombre(s)
	    </xsl:when>
	    <xsl:otherwise>
		  Nombre(s)&#160;Apellido(s)
	    </xsl:otherwise>
	  </xsl:choose>
	</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Heading2" colSpan="11">
	  <xsl:choose>
	    <xsl:when test="$firstNameBefore=0">
          <xsl:value-of select="europass:learnerinfo/identification/lastname" />&#160;<xsl:value-of select="europass:learnerinfo/identification/firstname" />
		</xsl:when>
	    <xsl:otherwise>
		  <xsl:value-of select="europass:learnerinfo/identification/firstname" />&#160;<xsl:value-of select="europass:learnerinfo/identification/lastname" />
		</xsl:otherwise>
	  </xsl:choose>
	</td>
  </tr>
  <xsl:if test="//field[@name='step1.addressInfo' and @keep='true']">
  <tr>
    <td class="Label">Dirección (direcciones)</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11">
      <xsl:for-each select="europass:learnerinfo/identification/contactinfo/address/addressLine">
        <xsl:value-of select="current()" /><br/>
      </xsl:for-each>
      <xsl:value-of select="europass:learnerinfo/identification/contactinfo/address/postalCode" /><br/>
      <xsl:value-of select="europass:learnerinfo/identification/contactinfo/address/municipality" /><br/>
      <xsl:value-of select="europass:learnerinfo/identification/contactinfo/address/countryCode" /><br/>
    </td>
  </tr>
  </xsl:if>
  <xsl:if test="//field[@name='step1.mobile' and @keep='true']">
  <tr>
    <td class="Label">Teléfono(s)</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="5">
	  <xsl:value-of select="europass:learnerinfo/identification/contactinfo/telephone" />
	</td>
    <td class="Label" width="15%" colSpan="2">Móvil</td>
    <td class="Normal" colSpan="4">
	  <xsl:value-of select="europass:learnerinfo/identification/contactinfo/mobile" />
	</td>
  </tr>
  </xsl:if>
  <xsl:if test="//field[@name='step1.fax' and @keep='true']">
  <tr>
    <td class="Label">Fax(es)</td>
    <td class="VerticalLine">&#160;</td>
	<td>&#160;</td>
    <td class="Normal" colspan="11">
	  <xsl:value-of select="europass:learnerinfo/identification/contactinfo/fax" />
	</td>
  </tr>
  </xsl:if>
  <xsl:if test="//field[@name='step1.email' and @keep='true']">
  <tr>
    <td class="Label">Correo(s) electrónico(s)</td>
    <td class="VerticalLine">&#160;</td>
	<td>&#160;</td>
    <td class="Normal" colspan="11">
	  <xsl:value-of select="europass:learnerinfo/identification/contactinfo/email" />
	</td>
  </tr>
  </xsl:if>
  <xsl:if test="//field[@name='step1.nationality' and @keep='true']">
  <tr>
    <td class="Label">Nacionalidad</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11">
      <xsl:for-each select="europass:learnerinfo/identification/demographics/nationality">
    		<xsl:value-of select="current()"/>&nbsp;
    	</xsl:for-each>
    </td>
  </tr>
  </xsl:if>
  <xsl:if test="//field[@name='step1.birthDate' and @keep='true']">
  <tr>
    <td class="Label">Fecha de nacimiento</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11">
    	<xsl:value-of select="substring(europass:learnerinfo/identification/demographics/birthdate, 9, 2)" />/<xsl:value-of select="substring(europass:learnerinfo/identification/demographics/birthdate, 6, 2)" />/<xsl:value-of select="substring(europass:learnerinfo/identification/demographics/birthdate, 1, 4)" />
    </td>
  </tr>
  </xsl:if>
  <xsl:if test="//field[@name='step1.gender' and @keep='true']">
  <tr>
    <td class="Label">Sexo</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11">
	  <xsl:if test="europass:learnerinfo/identification/demographics/gender='M'"><xsl:text>Masculino</xsl:text></xsl:if>
	  <xsl:if test="europass:learnerinfo/identification/demographics/gender='F'"><xsl:text>Femenino</xsl:text></xsl:if>
	</td>
  </tr>
  </xsl:if>
  <xsl:if test="//field[@name='step1.application' and @keep='true']">
  <tr>
    <td class="Heading1">Empleo deseado / familia profesional</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11">
	  <PRE><xsl:value-of select="europass:learnerinfo/application" /></PRE>
	</td>
  </tr>
  </xsl:if>
  
  
  <xsl:choose>
    <xsl:when test="$step3Before=1">
	  <xsl:if test="//field[@name='step3List' and @keep='true']">
	  <tr>
	    <td class="Heading1">Experiencia de trabajo</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11">&#160;</td>
	  </tr>
	  <xsl:for-each select="europass:learnerinfo/workexperiencelist/workexperience">
		  <tr>
		    <td class="Label">Fechas</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11">
		    		<xsl:value-of select="translate(period/from/day,'-','')" />
		    		<xsl:if test="string-length(period/from/day) != 0">/</xsl:if>
				<xsl:value-of select="translate(period/from/month,'-','')" />
				<xsl:if test="string-length(period/from/month) != 0">/</xsl:if>
				<xsl:value-of select="translate(period/from/year,'-','')" />
				<xsl:if test="string-length(period/to/day) != 0 or string-length(period/to/month) != 0 or string-length(period/to/year) != 0">
				-
				</xsl:if>
				<xsl:value-of select="translate(period/to/day,'-','')" />
				<xsl:if test="string-length(period/to/day) != 0">/</xsl:if>
				<xsl:value-of select="translate(period/to/month,'-','')" />
				<xsl:if test="string-length(period/to/month) != 0">/</xsl:if>
				<xsl:value-of select="translate(period/to/year,'-','')" />
			</td>
		  </tr>
		  <xsl:variable name="indexedStep3">
			<xsl:value-of select="concat('step3List[', position()-1, ']')" />
		  </xsl:variable>
		  <xsl:if test="//field[@name=concat($indexedStep3,'.position') and @keep='true']">
		  <tr>
		    <td class="Label">Profesión o cargo desempeñado</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11"><xsl:value-of select="position" /></td>
		  </tr>
		  </xsl:if>
		  <xsl:if test="//field[@name=concat($indexedStep3,'.activities') and @keep='true']">
		  <tr>
		    <td class="Label">Funciones y responsabilidades principales</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="activities" /></PRE></td>
		  </tr>
		  </xsl:if>
		  <xsl:if test="//field[@name=concat($indexedStep3,'.employer') and @keep='true']">
		  <tr>
		    <td class="Label">Nombre y dirección de la empresa o empleador</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="employer" /></PRE></td>
		  </tr>
		  </xsl:if>
		  <xsl:if test="//field[@name=concat($indexedStep3,'.sector') and @keep='true']">
		  <tr>
		    <td class="Label">Tipo de empresa o sector</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11"><xsl:value-of select="sector" /></td>
		  </tr>
		  </xsl:if>
		  <tr>
		    <td class="Label">&#160;</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11">&#160;</td>
		  </tr>
	  </xsl:for-each>
	  </xsl:if>
	  <xsl:if test="//field[@name='step4List' and @keep='true']">
	  <tr>
	    <td class="Heading1">Educación y formación</td>
	    <td class="VerticalLine">&#160;</td>
		<td>&#160;</td>
	    <td class="Normal" colspan="11">&#160;</td>
	  </tr>
	  <xsl:for-each select="europass:learnerinfo/educationlist/education">
	  <tr>
	    <td class="Label">Fechas</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11">
			<xsl:value-of select="translate(period/from/day,'-','')" />
	    		<xsl:if test="string-length(period/from/day) != 0">/</xsl:if>
			<xsl:value-of select="translate(period/from/month,'-','')" />
			<xsl:if test="string-length(period/from/month) != 0">/</xsl:if>
			<xsl:value-of select="translate(period/from/year,'-','')" />
			<xsl:if test="string-length(period/to/day) != 0 or string-length(period/to/month) != 0 or string-length(period/to/year) != 0">
			-
			</xsl:if>
			<xsl:value-of select="translate(period/to/day,'-','')" />
			<xsl:if test="string-length(period/to/day) != 0">/</xsl:if>
			<xsl:value-of select="translate(period/to/month,'-','')" />
			<xsl:if test="string-length(period/to/month) != 0">/</xsl:if>
			<xsl:value-of select="translate(period/to/year,'-','')" />
		</td>
	  </tr>
	  <xsl:variable name="indexedStep4">
	    <xsl:value-of select="concat('step4List[', position()-1, ']')" />
	  </xsl:variable>
	  <xsl:if test="//field[@name=concat($indexedStep4,'.title') and @keep='true']">
	  <tr>
	    <td class="Label">Cualificación obtenida</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11"><xsl:value-of select="title" /></td>
	  </tr>
	  </xsl:if>
	  <xsl:if test="//field[@name=concat($indexedStep4,'.skills') and @keep='true']">
	  <tr>
	    <td class="Label">Principales materias o capacidades profesionales estudiadas</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="skills" /></PRE></td>
	  </tr>
	  </xsl:if>
	  <xsl:if test="//field[@name=concat($indexedStep4,'.organisation') and @keep='true']">
	  <tr>
	    <td class="Label">Nombre y tipo del centro de estudios</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="organisation" /></PRE></td>
	  </tr>
	  </xsl:if>
	  <xsl:if test="//field[@name=concat($indexedStep4,'.level') and @keep='true']">
	  <tr>
	    <td class="Label">Nivel conforme a una clasificación nacional o internacional</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11"><xsl:value-of select="level" /></td>
	  </tr>
	  </xsl:if>
	  <tr>
	    <td class="Label">&#160;</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11">&#160;</td>
	  </tr>          
	  </xsl:for-each>
	  </xsl:if>
	</xsl:when>
	<xsl:otherwise>
	  <xsl:if test="//field[@name='step4List' and @keep='true']">
	  <tr>
	    <td class="Heading1">Educación y formación</td>
	    <td class="VerticalLine">&#160;</td>
		<td>&#160;</td>
	    <td class="Normal" colspan="11">&#160;</td>
	  </tr>
	  <xsl:for-each select="europass:learnerinfo/educationlist/education">
	  <tr>
	    <td class="Label">Fechas</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11">
			<xsl:value-of select="translate(period/from/day,'-','')" />
	    		<xsl:if test="string-length(period/from/day) != 0">/</xsl:if>
			<xsl:value-of select="translate(period/from/month,'-','')" />
			<xsl:if test="string-length(period/from/month) != 0">/</xsl:if>
			<xsl:value-of select="translate(period/from/year,'-','')" />
			<xsl:if test="string-length(period/to/day) != 0 or string-length(period/to/month) != 0 or string-length(period/to/year) != 0">
			-
			</xsl:if>
			<xsl:value-of select="translate(period/to/day,'-','')" />
			<xsl:if test="string-length(period/to/day) != 0">/</xsl:if>
			<xsl:value-of select="translate(period/to/month,'-','')" />
			<xsl:if test="string-length(period/to/month) != 0">/</xsl:if>
			<xsl:value-of select="translate(period/to/year,'-','')" />
		</td>
	  </tr>
	  <xsl:variable name="indexedStep4">
	    <xsl:value-of select="concat('step4List[', position()-1, ']')" />
	  </xsl:variable>
	  <xsl:if test="//field[@name=concat($indexedStep4,'.title') and @keep='true']">
	  <tr>
	    <td class="Label">Cualificación obtenida</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11"><xsl:value-of select="title" /></td>
	  </tr>
	  </xsl:if>
	  <xsl:if test="//field[@name=concat($indexedStep4,'.skills') and @keep='true']">
	  <tr>
	    <td class="Label">Principales materias o capacidades profesionales estudiadas</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="skills" /></PRE></td>
	  </tr>
	  </xsl:if>
	  <xsl:if test="//field[@name=concat($indexedStep4,'.organisation') and @keep='true']">
	  <tr>
	    <td class="Label">Nombre y tipo del centro de estudios</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="organisation" /></PRE></td>
	  </tr>
	  </xsl:if>
	  <xsl:if test="//field[@name=concat($indexedStep4,'.level') and @keep='true']">
	  <tr>
	    <td class="Label">Nivel conforme a una clasificación nacional o internacional</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11"><xsl:value-of select="level" /></td>
	  </tr>
	  </xsl:if>
	  <tr>
	    <td class="Label">&#160;</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11">&#160;</td>
	  </tr>          
	  </xsl:for-each>
	  </xsl:if>
	  <xsl:if test="//field[@name='step3List' and @keep='true']">
	  <tr>
	    <td class="Heading1">Experiencia de trabajo</td>
	    <td class="VerticalLine">&#160;</td>
	    <td>&#160;</td>
	    <td class="Normal" colSpan="11">&#160;</td>
	  </tr>
	  <xsl:for-each select="europass:learnerinfo/workexperiencelist/workexperience">
		  <tr>
		    <td class="Label">Fechas</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11">
				<xsl:value-of select="translate(period/from/day,'-','')" />
		    		<xsl:if test="string-length(period/from/day) != 0">/</xsl:if>
				<xsl:value-of select="translate(period/from/month,'-','')" />
				<xsl:if test="string-length(period/from/month) != 0">/</xsl:if>
				<xsl:value-of select="translate(period/from/year,'-','')" />
				<xsl:if test="string-length(period/to/day) != 0 or string-length(period/to/month) != 0 or string-length(period/to/year) != 0">
				-
				</xsl:if>
				<xsl:value-of select="translate(period/to/day,'-','')" />
				<xsl:if test="string-length(period/to/day) != 0">/</xsl:if>
				<xsl:value-of select="translate(period/to/month,'-','')" />
				<xsl:if test="string-length(period/to/month) != 0">/</xsl:if>
				<xsl:value-of select="translate(period/to/year,'-','')" />
			</td>
		  </tr>
		  <xsl:variable name="indexedStep3">
			<xsl:value-of select="concat('step3List[', position()-1, ']')" />
		  </xsl:variable>
		  <xsl:if test="//field[@name=concat($indexedStep3,'.position') and @keep='true']">
		  <tr>
		    <td class="Label">Profesión o cargo desempeñado</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11"><xsl:value-of select="position" /></td>
		  </tr>
		  </xsl:if>
		  <xsl:if test="//field[@name=concat($indexedStep3,'.activities') and @keep='true']">
		  <tr>
		    <td class="Label">Funciones y responsabilidades principales</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="activities" /></PRE></td>
		  </tr>
		  </xsl:if>
		  <xsl:if test="//field[@name=concat($indexedStep3,'.employer') and @keep='true']">
		  <tr>
		    <td class="Label">Nombre y dirección de la empresa o empleador</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="employer" /></PRE></td>
		  </tr>
		  </xsl:if>
		  <xsl:if test="//field[@name=concat($indexedStep3,'.sector') and @keep='true']">
		  <tr>
		    <td class="Label">Tipo de empresa o sector</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11"><xsl:value-of select="sector" /></td>
		  </tr>
		  </xsl:if>
		  <tr>
		    <td class="Label">&#160;</td>
		    <td class="VerticalLine">&#160;</td>
		    <td>&#160;</td>
		    <td class="Normal" colSpan="11">&#160;</td>
		  </tr>
	  </xsl:for-each>
	  </xsl:if>
	</xsl:otherwise>
  </xsl:choose>
  
  <tr>
    <td class="Heading1">Capacidades y competencias personales</td>
    <td class="VerticalLine">&#160;</td>
	<td>&#160;</td>
    <td colspan="11" class="Normal">&#160;</td>
  </tr>
  <xsl:if test="//field[@name='step5.motherLanguages' and @keep='true']">
  <tr>
    <td class="Label">Idioma materno</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Heading2" colSpan="11"><xsl:value-of select="europass:learnerinfo/languagelist/language[@type='mother']/name" /></td>
  </tr>
  </xsl:if>
  <xsl:if test="//field[@name='step5.foreignLanguageList' and @keep='true']">
  <tr>
    <td class="Label">Otros idiomas</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11">&#160;</td></tr>
  <tr>
    <td class="Label">Autoevaluación</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Heading2Center" colSpan="4">Comprensión</td>
    <td class="Heading2Center" colSpan="4">Habla</td>
    <td class="Heading2Center" colSpan="2">Escritura</td>
    <td width="1%">&#160;</td>
  </tr>
  <tr>
    <td class="Label">Nivel europeo</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="NormalSmall" colSpan="2">Comprensión auditiva</td>
    <td class="NormalSmall" colSpan="2">Lectura</td>
    <td class="NormalSmall" colSpan="2">Interacción oral</td>
    <td class="NormalSmall" colSpan="2">Capacidad oral</td>
    <td class="NormalSmall" colSpan="2">&#160;</td>
    <td width="1%">&#160;</td>
  </tr>
    <xsl:for-each select="europass:learnerinfo/languagelist/language[@type='foreign']">
	  <xsl:variable name="indexedLang">
        <xsl:value-of select="concat('step5.foreignLanguageList[', position()-1, ']')" />
      </xsl:variable>
      <xsl:if test="//field[@name=$indexedLang and @keep='true']">
      <tr>
	    <td class="Heading1Box"><xsl:value-of select="name" /></td>
	    <td class="VerticalLineBox">&#160;</td>
	    <td>&#160;</td>
	    <td class="NormalSmall" width="5%"><xsl:value-of select="level/listening" /></td>
	    <td class="NormalSmall">
			<xsl:if test="level/listening='a1'">Usuario básico</xsl:if>
		    <xsl:if test="level/listening='b1'">Usuario autónomo</xsl:if>
			<xsl:if test="level/listening='c1'">Usuario competente</xsl:if>
			
			<xsl:if test="level/listening='a2'">Usuario básico</xsl:if>
		    <xsl:if test="level/listening='b2'">Usuario autónomo</xsl:if>
			<xsl:if test="level/listening='c2'">Usuario competente</xsl:if>
	    </td>
		<td class="NormalSmall" width="5%"><xsl:value-of select="level/reading" /></td>
	    <td class="NormalSmall">
			<xsl:if test="level/reading='a1'">Usuario básico</xsl:if>
			<xsl:if test="level/reading='b1'">Usuario autónomo</xsl:if>
			<xsl:if test="level/reading='c1'">Usuario competente</xsl:if>
		
			<xsl:if test="level/reading='a2'">Usuario básico</xsl:if>
			<xsl:if test="level/reading='b2'">Usuario autónomo</xsl:if>
			<xsl:if test="level/reading='c2'">Usuario competente</xsl:if>
		</td>
	    <td class="NormalSmall" width="5%"><xsl:value-of select="level/spokeninteraction" /></td>
	    <td class="NormalSmall">
			<xsl:if test="level/spokeninteraction='a1'">Usuario básico</xsl:if>
			<xsl:if test="level/spokeninteraction='b1'">Usuario autónomo</xsl:if>
			<xsl:if test="level/spokeninteraction='c1'">Usuario competente</xsl:if>
		
			<xsl:if test="level/spokeninteraction='a2'">Usuario básico</xsl:if>
			<xsl:if test="level/spokeninteraction='b2'">Usuario autónomo</xsl:if>
			<xsl:if test="level/spokeninteraction='c2'">Usuario competente</xsl:if>
		</td>
		<td class="NormalSmall" width="5%"><xsl:value-of select="level/spokenproduction" /></td>
	    <td class="NormalSmall">
			<xsl:if test="level/spokenproduction='a1'">Usuario básico</xsl:if>
			<xsl:if test="level/spokenproduction='b1'">Usuario autónomo</xsl:if>
			<xsl:if test="level/spokenproduction='c1'">Usuario competente</xsl:if>
		
			<xsl:if test="level/spokenproduction='a2'">Usuario básico</xsl:if>
			<xsl:if test="level/spokenproduction='b2'">Usuario autónomo</xsl:if>
			<xsl:if test="level/spokenproduction='c2'">Usuario competente</xsl:if>
		</td>
	    <td class="NormalSmall" width="5%"><xsl:value-of select="level/writing" /></td>
	    <td class="NormalSmall">
			<xsl:if test="level/writing='a1'">Usuario básico</xsl:if>
			<xsl:if test="level/writing='b1'">Usuario autónomo</xsl:if>
			<xsl:if test="level/writing='c1'">Usuario competente</xsl:if>
		
			<xsl:if test="level/writing='a2'">Usuario básico</xsl:if>
			<xsl:if test="level/writing='b2'">Usuario autónomo</xsl:if>
			<xsl:if test="level/writing='c2'">Usuario competente</xsl:if>
		</td>
	    <td width="1%">&#160;</td>
	  </tr>
	  </xsl:if>
    </xsl:for-each>
  </xsl:if>
  <tr>
    <td class="Label">&#160;</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11">&#160;</td>
  </tr>
  <xsl:if test="//field[@name='step6.socialSkills' and @keep='true']">
  <tr>
    <td class="Label">Capacidades y competencias sociales</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="europass:learnerinfo/skilllist/skill[@type='social']" /></PRE></td>
  </tr>
  </xsl:if>	  
  <xsl:if test="//field[@name='step6.organisationalSkills' and @keep='true']">
  <tr>
    <td class="Label">Capacidades y competencias organizativas</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="europass:learnerinfo/skilllist/skill[@type='organisational']" /></PRE></td>
  </tr>
  </xsl:if>	  
  <xsl:if test="//field[@name='step6.technicalSkills' and @keep='true']">
  <tr>
    <td class="Label">Capacidades y competencias técnicas</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="europass:learnerinfo/skilllist/skill[@type='technical']" /></PRE></td>
  </tr>
  </xsl:if>	  
  <xsl:if test="//field[@name='step6.computerSkills' and @keep='true']">
  <tr>
    <td class="Label">Capacidades y competencias informáticas</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="europass:learnerinfo/skilllist/skill[@type='computer']" /></PRE></td>
  </tr>
  </xsl:if>	  
  <xsl:if test="//field[@name='step6.artisticSkills' and @keep='true']">
  <tr>
    <td class="Label">Capacidades y competencias artísticas</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="europass:learnerinfo/skilllist/skill[@type='artistic']" /></PRE></td>
  </tr>
  </xsl:if>	  
  <xsl:if test="//field[@name='step6.otherSkills' and @keep='true']">
  <tr>
    <td class="Label">Otras capacidades y competencias</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="europass:learnerinfo/skilllist/skill[@type='other']" /></PRE></td>
  </tr>	
  </xsl:if>	  
  <xsl:if test="//field[@name='step6.drivingLicences' and @keep='true']">
  <tr>
    <td class="Label">Permiso(s) de conducción</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="europass:learnerinfo/skilllist/skill[@type='driving']" /></PRE></td>
  </tr>
  </xsl:if>	  
  <xsl:if test="//field[@name='step7.additionalInfo' and @keep='true']">
  <tr>
    <td class="Heading1">Otras informaciones</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="europass:learnerinfo/misclist/misc[@type='additional']" /></PRE></td>
  </tr>
  </xsl:if>	  
  <xsl:if test="//field[@name='step7.annexes' and @keep='true']">
  <tr>
    <td class="Heading1">Anexos</td>
    <td class="VerticalLine">&#160;</td>
    <td>&#160;</td>
    <td class="Normal" colSpan="11"><PRE><xsl:value-of select="europass:learnerinfo/misclist/misc[@type='annexes']" /></PRE></td>
  </tr>
  </xsl:if>
</table>
<br/>
<xsl:if test="//field[@name='grid' and @keep='true']">
<table width="710" border="0" cellspacing="0" cellpadding="0" class="Grid">
	<tr class="spacer">
		<td><img src="http://europass.cedefop.europa.eu/instruments/images/logospace.gif" width="20" height="1" /></td>
		<td><img src="http://europass.cedefop.europa.eu/instruments/images/logospace.gif" width="138"  height="1" /></td>
		<td><img src="http://europass.cedefop.europa.eu/instruments/images/logospace.gif" width="138"  height="1" /></td>
		<td><img src="http://europass.cedefop.europa.eu/instruments/images/logospace.gif" width="138"  height="1" /></td>
		<td><img src="http://europass.cedefop.europa.eu/instruments/images/logospace.gif" width="138"  height="1" /></td>
		<td><img src="http://europass.cedefop.europa.eu/instruments/images/logospace.gif" width="138"  height="1" /></td>
	</tr>
	<tr>
		<th colspan="6" class="title">Niveles europeos – Tabla de auto evaluación</th>
	</tr>
	<tr class="level">
		<th>A1</th>
		<td>Reconozco palabras y expresiones muy básicas que se usan habitualmente, relativas a mí mismo, a mi familia y a mi entorno inmediato cuando se habla despacio y con claridad.</td>
		<td>Comprendo palabras y nombres conocidos y frases muy sencillas, por ejemplo las que hay en letreros, carteles y catálogos.</td>
		<td>Puedo participar en una conversación de forma sencilla siempre que la otra persona esté dispuesta a repetir lo que ha dicho o a decirlo con otras palabras y a una velocidad más lenta y me ayude a formular lo que intento decir. Planteo y contesto preguntas sencillas sobre temas de necesidad inmediata o  asuntos muy habituales.</td>
		<td>Utilizo expresiones y frases sencillas para describir el lugar donde vivo y las personas que conozco.</td>
		<td>Soy capaz de escribir postales cortas y sencillas, por ejemplo para enviar felicitaciones. 
Sé rellenar formularios con datos personales, por ejemplo mi nombre, mi nacionalidad y mi dirección en el formulario del registro de un hotel.</td>
	</tr>
	<tr class="level">
		<th>A2</th>
		<td>Comprendo frases y el vocabulario más habitual sobre temas de interés personal (información personal y familiar muy básica, compras, lugar de residencia, empleo).</td>
		<td>Soy capaz de leer textos muy breves y sencillos. Sé encontrar información específica y predecible en escritos sencillos y cotidianos como anuncios publicitarios, prospectos, menús y horarios y comprendo cartas personales breves y sencillas.</td>
		<td>Puedo comunicarme en tareas sencillas y habituales que requieren un intercambio simple y directo de información sobre actividades y asuntos cotidianos. Soy capaz de realizar intercambios sociales muy breves, aunque, por lo general, no puedo comprender lo suficiente como para mantener la conversación por mí mismo.</td>
		<td>Utilizo una serie de expresiones y frases para describir con términos sencillos a mi familia y otras personas, mis condiciones de vida, mi origen educativo y mi trabajo actual o el último que tuve.</td>
		<td>Soy capaz de escribir notas y mensajes breves y sencillos relativos a mis necesidades inmediatas. 
Puedo escribir cartas personales muy sencillas, por ejemplo agradeciendo algo a alguien.</td>
	</tr>
	<tr class="level">
		<th>B1</th>
		<td>Comprendo las ideas principales cuando el discurso es claro y normal y se tratan asuntos cotidianos que tienen lugar en el trabajo, en la escuela, durante el tiempo de ocio, etc. Comprendo la idea principal de muchos programas de radio o televisión que tratan temas actuales o asuntos de interés personal o profesional, cuando la articulación es relativamente lenta y clara.</td>
		<td>Comprendo textos redactados en una lengua de uso habitual y cotidiano o relacionada con el trabajo. Comprendo la descripción de acontecimientos, sentimientos y deseos en cartas personales.</td>
		<td>Sé desenvolverme en casi todas las situaciones que se me presentan cuando viajo donde se habla esa lengua. Puedo participar espontáneamente en una conversación que trate temas cotidianos de interés personal o que sean pertinentes para la vida diaria (por ejemplo, familia, aficiones, trabajo, viajes y acontecimientos actuales).</td>
		<td>Sé enlazar frases de forma sencilla con el fin de describir experiencias y hechos, mis sueños, esperanzas y ambiciones.</td>
		<td>Soy capaz de escribir textos sencillos y bien enlazados sobre temas que me son conocidos o de interés personal. 
Puedo escribir cartas personales que describen experiencias e impresiones.</td>
	</tr>
	<tr class="level">
		<th>B2</th>
		<td>Comprendo discursos y conferencias extensos e incluso sigo líneas argumentales complejas siempre que el tema sea relativamente conocido. Comprendo casi todas las noticias de la televisión y los programas sobre temas actuales.</td>
		<td>Soy capaz de leer artículos e informes relativos a problemas contemporáneos en los que los autores adoptan posturas o puntos de vista concretos. Comprendo la prosa literaria contemporánea.</td>
		<td>Puedo participar en una conversación con cierta fluidez y espontaneidad, lo que posibilita la comunicación normal con hablantes nativos. Puedo tomar parte activa en debates desarrollados en situaciones cotidianas explicando y defendiendo mis puntos de vista.</td>
		<td>Presento descripciones claras y detalladas de una amplia serie de temas relacionados con mi especialidad.</td>
		<td>Soy capaz de escribir textos claros y detallados sobre una amplia serie de temas relacionados con mis intereses. 
Puedo escribir redacciones o informes transmitiendo información o proponiendo motivos que apoyen o refuten un punto de vista concreto. Sé escribir cartas que destacan la importancia que le doy a determinados hechos y experiencias.</td>
	</tr>
	<tr class="level">
		<th>C1</th>
		<td>Comprendo discursos extensos incluso cuando no están estructurados con claridad y cuando las relaciones están sólo implícitas y no se señalan explícitamente. Comprendo sin mucho esfuerzo los programas de televisión y las películas.</td>
		<td>Comprendo textos largos y complejos de carácter literario o basados en hechos, apreciando distinciones de estilo.</td>
		<td>Me expreso con fluidez y espontaneidad sin tener que buscar de forma muy evidente las expresiones adecuadas. Utilizo el lenguaje con flexibilidad y eficacia para fines sociales y profesionales.</td>
		<td>Presento descripciones claras y detalladas sobre temas complejos que incluyen otros temas, desarrollando ideas concretas y terminando con una conclusión apropiada.</td>
		<td>Soy capaz de expresarme en textos claros y bien estructurados exponiendo puntos de vista con cierta extensión. 
Puedo escribir sobre temas complejos en cartas, redacciones o informes resaltando lo que considero que son aspectos importantes. Selecciono el estilo apropiado para los lectores a los que van dirigidos mis escritos.</td>
	</tr>
	<tr class="level">
		<th>C2</th>
		<td>No tengo ninguna dificultad para comprender cualquier tipo de lengua hablada, tanto en conversaciones en vivo como en discursos retransmitidos, aunque se produzcan a una velocidad de hablante nativo, siempre que tenga tiempo para familiarizarme con el acento.</td>
		<td>Soy capaz de leer con facilidad prácticamente todas las formas de lengua escrita, incluyendo textos abstractos estructural o lingüísticamente complejos como, por ejemplo, manuales, artículos especializados y obras literarias.</td>
		<td>Tomo parte sin esfuerzo en cualquier conversación o debate y conozco bien modismos, frases hechas y expresiones coloquiales. Me expreso con fluidez y transmito matices sutiles de sentido con precisión. Si tengo un problema, sorteo la dificultad con tanta discreción que los demás apenas se dan cuenta.</td>
		<td>Presento descripciones o argumentos de forma clara y fluida y con un estilo que es adecuado al contexto y con una estructura lógica y eficaz que ayuda al oyente a fijarse en las ideas importantes y a recordarlas.</td>
		<td>Soy capaz de escribir textos claros y fluidos en un estilo apropiado. Puedo escribir cartas, informes o artículos complejos que presentan argumentos con una estructura lógica y eficaz que ayuda al oyente a fijarse en las ideas importantes y a recordarlas. Escribo resúmenes y reseñas de obras profesionales o literarias.</td>
	</tr>
</table>
</xsl:if>		
		<img style="display: none" src="http://europass.cedefop.europa.eu/instruments/images/cv_verline.gif" /> 
		<img style="display: none" src="http://europass.cedefop.europa.eu/instruments/images/logo_for_htmlpreview.gif" /> 
		<img style="display: none" src="http://europass.cedefop.europa.eu/instruments/images/bg_win4.jpg" /> 
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
