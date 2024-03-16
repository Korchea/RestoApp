# RestoApp

RestoApp es una aplicación de gestión de restaurantes diseñada para clientes y empleados. Con ella, podrás administrar eficientemente el inventario de ingredientes y platos, así como las mesas disponibles, pedidos para llevar (si se desea implementar), gestión de empleados y la carta del restaurante, además de contar con una página web.

## Objetivos

- Iniciar un nuevo proyecto en el ámbito de la gestión de restaurantes.
- Repasar y aplicar conocimientos Full-Stack en el desarrollo de aplicaciones web y móviles.
- Desarrollar una aplicación web y móvil, priorizando el uso del framework React.

### Funcionalidades Deseadas

- **Gestión de Inventario**: Los empleados tendrán la capacidad de ingresar y actualizar el inventario del local, incluyendo ingredientes y productos.

- **Gestión de Mesas en Tiempo Real**: La aplicación permitirá a los empleados gestionar las mesas en tiempo real, asignando mesas disponibles, registrando pedidos y actualizando el estado de ocupación.

- **Creación de Recibos de Facturas**: Se podrá generar de manera automática y precisa los recibos de las facturas para los clientes, facilitando el proceso de pago.

- **Carta Digital**: Los clientes podrán acceder digitalmente a la carta del restaurante, facilitando la selección de platos y la visualización de información relevante, como ingredientes, precios y opciones disponibles.

- **Actualización en Tiempo Real de la Carta**: La carta del restaurante se actualizará en tiempo real, reflejando los cambios realizados en el inventario y garantizando la precisión de la información para los clientes.

- **Gestión Autónoma de la Carta**: La aplicación gestionará de forma autónoma la carta del restaurante, adaptándola dinámicamente según la disponibilidad de ingredientes en el inventario. Esto permitirá a los clientes filtrar los platos según alergias alimentarias o preferencias personales.

- **Gestión de Caja**: Los empleados tendrán la capacidad de gestionar la caja del local, registrando pagos, gestionando el flujo de efectivo y generando informes de cierre de caja.

Con RestoApp, se busca optimizar la gestión y operación de restaurantes, ofreciendo una plataforma intuitiva y eficiente tanto para empleados como para clientes.

## Environment
This project is interpreted/tested on Ubuntu 14.04 LTS using python3 (version 3.4.3)

## Arquitectura

Back-End:
* Python
* MySQL Local o SupaBase(PostgreSQL)
* RestFull Api

Front-End:
*React

## Autor
* Guillermo Vega - [Github](https://github.com/Korchea).



para arrancar mysql 'service mysql start', para ejecutar un script .sql 'cat script.sql | mysql -hlocalhost -uroot -p'