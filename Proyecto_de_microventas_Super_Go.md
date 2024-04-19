# Proyecto de microventas: Super Go 

# Datos del equipo

Nombre del equipo: **ZeitPunk**
Integrantes:

- José Mauricio Araujo García
- David Osorio Hernández
- Noé Osorio Hernández
# Definición y alcance del proyecto


## Que es


- Una app para presentar productos y servicios.
- Una interfaz web de backend para los vendedores.
- Un catálogo de productos y servicios con ubicación.

**Que no es**

- Una app de compras que acepta pagos online.
- Una empresa de compra y venta de productos/servicios.
- Una empresa de delivery.
- Una app de intermediación de conflictos.
- Un chat estilo Whatsapp.


# Problemática

Debido a la situación económica global, resultado de la crisis sanitaria por COVID-19, muchos negocios y particulares han suspendido sus actividades comerciales de manera física como medida necesaria para frenar los contagios, lo que ha tenido como consecuencia una caída en la economía afectando principalmente al mercado tradicional, donde el intercambio de productos y servicios se efectúa de persona a persona en establecimientos físicos.

Es por lo anterior que se propone la creación de una aplicación que permita a los comerciantes y profesionales ofrecer productos y servicios a través de un catálogo digital, disponible para gente dentro de su rango geográfico.


# Producto

El producto final será una aplicación móvil con las siguientes capacidades:

- Registro de usuarios
    - Negocios: Son las empresas que decidan publicar productos por medio de un catálogo dentro de esta aplicación. Estos usuarios serán los responsables de vender sus productos a sus clientes finales.
    - Clientes: Son los usuarios finales que podrán adquirir los productos que ofrezcan las empresas que registren su catálogo en la aplicación. 
- Catálogo de productos o servicios.
- Mapa donde muestre negocios cercanos a la ubicación del usuario.
- Sistema de mensajería interna para comunicarse con el vendedor.
- (Exclusivo para negocios) Espacio para poder agregar productos al catálogo de su negocio, donde pueden subir: nombre del producto, descripción, precio y fotografías de cada uno de sus productos.


## Funcionamiento

El proyecto consiste en el desarrollo de una aplicación móvil para las plataformas de IOS y Android, la cual será provista de un servicio elástico de backend que se encarga de centralizar la información en una base de datos; los vendedores crearán las publicaciones que estarán disponibles para el resto de los usuarios y de esa forma se podrá realizar un pedido o una consulta de información. Cada vendedor registrará su catálogo de productos y disponibilidad, así como su información general y específica, para que los usuarios en su rango geográfico puedan encontrarlo. El usuario simplemente registrará su cuenta y permitirá el acceso a su ubicación, para mostrarle los comercios relevantes. 


## Características
1. Los usuarios podrán registrarse o solo ver publicaciones.
2. Los usuarios registrados podrán hacer una publicación describiendo su producto/servicio(s).
3. Las publicaciones tendrán una calificación.
4. Las publicaciones contarán con ubicación.
5. Los usuarios podrán ver el catálogo de productos y servicios.
6. Los usuarios que deseen comprar podrán localizar en el mapa a los vendedores.
7. Los vendedores podrán solicitar la ubicación de entrega.
8. El pago y la entrega serán responsabilidad de los usuarios exclusivamente, la aplicación no procesará pagos ni envíos.
9. Los usuarios podrán buscar usando un motor de búsquedas.
10. Los usuarios podrán realizar un pedido a un vendedor.
11. El vendedor será notificado una vez que reciba un pedido.


## Tecnología

Para el desarrollo de la aplicación se utilizará la herramienta Flutter, debido a la portabilidad del código y velocidad de desarrollo. Con Flutter se pueden hacer aplicaciones híbridas para ambas plataformas móviles: Android y iOS, con un mismo código. Para el backend se utilizarán servicios REST en Python con infraestructura de AWS (como DynamoDB y Lambda) y Google Cloud, con el propósito de ofrecer una mayor escalabilidad y estabilidad.


# Justificación

El objetivo de esta aplicación es apoyar la economía de los negocios que están siendo afectados por la falta de clientes, así como aquellas personas que están en sus casas, sin poder salir a trabajar. Este objetivo se quiere lograr mediante el apoyo a la transformación digital de todas las personas afectadas, ayudando a que sus productos puedan llegar a más clientes mediante el e-commerce. Actualmente esta industria en México vale $10,000 millones de dólares con más de 60 millones de usuarios activos. 

Una gran parte de los negocios, sobre todo restaurantes y tiendas de primera necesidad, se están adaptando para repartir sus productos a domicilio. El problema es el canal de comunicación y distribución, pues la mayoría de ellos utilizan plataformas como whatsapp para poder ofrecer sus productos y comunicarse con sus clientes. Pero esto no es cómodo, ya que estas plataformas no están pensadas para vender productos, sino para la comunicación entre usuarios a través de un chat. Se busca ofrecer una herramienta para poder conectar comerciantes con la motivación de salir adelante vendiendo sus productos o servicios, con personas que se han apegado a la cuarentena pero que tienen la necesidad de salir a realizar sus compras y tienen la intención de apoyar al comercio local. Se propone una herramienta que beneficiará a ambas partes durante la difícil situación en la que se encuentra el país y que tendrá un impacto en la manera en la que se lleva a cabo la actividad económica en el futuro.


# Referencias
| Descripcion                           | Link                                                                                                                                 |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| Liga del Hackaton                     | https://hackathons.blockdemy.com/talent-at-home                                                                                      |
| ODS-17                                | [https://www.un.org/sustainabledevelopment/es/globalpartnerships/](https://www.un.org/sustainabledevelopment/es/globalpartnerships/) |
| Registro Jalisco TalentLand           | https://www.talent-land.tv/hackathon/track-estrategias-economia-mexico/                                                              |
| Estadísticas del e-commerce en México | https://www.statista.com/outlook/243/116/ecommerce/mexico#market-revenue                                                             |
|                                       |                                                                                                                                      |



