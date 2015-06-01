eCall – MINIMUM SET OF DATA (MSD)
=================================
La Unión Europea está elaborando una directiva para obligar a los fabricantes de vehículos a  incluir obligatoriamente en 2018 un dispositivo que alerte a los servicios de emergencia cuando el vehículo sufra un accidente. Se trata del programa _eCall_.

Este dispotivo envía un mensaje con un conjunto de datos llamado _MINIMUM SET OF DATA (MSD)_ útiles para gestionar la emergencia, así como para realizar el análisis forense del accidente.

Cada fabricante ya dispone de dispositivos que registran estos parámetros y desarrollan su propio sitema operativo. Como se muestran reacios a proporcionar el código así como la API para trabajar sobre él, la comisión encargada del proyecto determina que lo más sencillo y rápido para lgograr la integración entre sistemas es volcar dichos datos a un fichero de texto plano en formato XML.

Como integrante de la comisión técnica del programa eCall de la Comisión Europea, **has de diseñar el Schema prototipo que todo fabricante ha de implementar para generar la instancia XML que se enviará de manera telemática**.

La documentación que hasta el momento se ha elaborado incluye esta descripción del modelo de datos.

## Contenido del MSD

The information from the MSD can be divided in two categories: _mandatory_ and _optional_. 

**The mandatory information includes:**

 1. message ID,
 2. vehicle identification
 3. vehicle propulsion storage type, 
 4. time stamp, 
 5. vehicle location and direction and
 6. format field. 

### 1. The ID field
The ID field,which contains the MSD format version as well as a message identifier. The
message identifier will initially have a value of 1, which will be incremented with every MSD
retransmission after the incident event.

The MSD will also have:

 - a Control field which will indicate the activation type (0 for automatic and 1 for manual), 
 - the call type (1 for test call and 0 for an emergency call), 
 - the position confidence (1 for low confidence in position or 0 if the position can be trusted). The position confidence bit will be set to 1 (low confidence in position) if the position is not within the limits of +/- 150m with a confidence of 95%. 
 - and the vehicle type consisting of 4 bits which indicate de vehicle class. 

### 2. The Vehicle Identification field 
The Vehicle Identification field will indicate the VIN number of the vehicle, according to ISO 3779 http://es.wikipedia.org/wiki/N%C3%BAmero_de_chasis  

### The Vehicle Propulsion Storage Type
The Vehicle Propulsion Storage Type field indicates the type of energy storage(s) available on the vehicle (0 indicates a type of storage is not present and 1 indicates a type of storage is present). All bits set to 0 indicate an unknown type of energy storage is present. 

The following types of energy storage have an assigned field: hydrogen, electric (with more than 42v and 100Ah), liquid propane gas (LPG), compressed natural gas (CNG), diesel tank and gasoline tank.

### 4. The Time Stamp field 
The Time Stamp field stores the time of the accident, expressed in seconds elapsed since midnight January 1st 1970 UTC.

### 5. The MSD contains a field regarding the vehicle location and direction. 
The position latitude and longitude are expressed according to IS0 6709 http://en.wikipedia.org/wiki/ISO_6709#XML_representation_.28Annex_F.29 

If the longitude or latitude is invalid or unknown, the value 0xFFFFFFFF shall be used. 

The vehicle direction is expressed in 2 degrees steps from magnetic north (0-358 clockwise).

### 6. The Format field 
The Format field contains information regarding the optional additional data: 

 + 0 - No optional additional data, 
 + 1 - Binary data, 
 + 2 – BCD, 
 + 3 - XML encoded data, 
 + 4 - ASN.1 BER defined data, 
 + 5 - ASN.1 PER defined data, 
 + 6 - ASCII encoded data.



## Tu propuesta

Propón un juego de Schemas que describan la **jerarquía de la información**, los **tipos de datos** y los **elementos necesarios**, así como los **espacios de nombres** a utilizar.


## Consideraciones
 - Profundiza en la referencia XML Schema para construir el tipo de dato más adecuado al componente que estás definiendo y el Schema más eficiente posible.
 - Los tipos de datos elegidos, deberán ceñirse a aquellos que encontrarías en una
situación real de modelado de un tweet.
 - Se recomienda vivamente hacer uso de aquellos recursos que proporciona la referencia Schema utilizados en tus proyectos de evaluación, para así dotar a tu modelado de la máxima eficiencia.
 - Los tipos de datos – salvo contadas excepciones – **no deberían ser anónimos**.
 - Define aquellos espacios de nombres que consideres oportunos.
 - **Respeta las indicaciones que encuentres en los ficheros Schema que se adjuntan**.
 - Reutilización y modularidad son dos conceptos que encajan con las tecnologías XML y Schema.
 - Incluye –si es necesario– una breve justificación del análisis de la información que has realizado, con aquellas suposiciones o datos que no sea posible indicar en los documentos Schema y que resulten necesarios para comprender tu propuesta.
 - Todos y cada uno de los puntos anteriormente citados, se tendrán en cuenta a la hora de calificar la práctica.

## Presentación

Envía por correo electrónico el proyecto generado en eclipse en un fichero comprimido.

Incluye:

 - Una instancia XML que valide contra tu juego de Shemas.
 - El juego de Schemas que propongas.
 - Los ficheros Schema proporcionados debidamente completados.