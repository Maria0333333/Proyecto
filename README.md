# Modelo Relacional para una Pizzería

## Pizza(Pizza)
    pizza_id(PK) Primary Key / Llave Primaria (Número)
    pizza_type: Tipo de pizza (Texto)
    pizza_chef_id(FK): Foreing Key / Llave foránea Identificador del cocinero (Alfa numerico)
    pizza_seller_id(FK): Identificador del vendedor de pizza (Número o alfanumerico)
    pizza_ingredients_id (FK): Identificador de los ingredientes (Alfa numerico)
    pizza_date_preparation: Fecha de preparación (Alfa numerico)

## Cocinero(Chef)
    chef_id (PK): Identificador único del chef (Número o Alfanumerico)
    chef_name: Nombre del chef (Texto)
    chef_birthdate: Fecha de nacimiento del chef (Fecha o texto)
    chef_materials: Materiales del chef (Texto)

## Vendedor(Seller)
    seller_id (PK): Identificador único del chef (Número o Alfanumerico)
    seller_name: Nombre del chef (Texto)
    seller_birthdate: Fecha de nacimiento del vendedor (Fecha o texto)
    seller_materials: Materiales del vendedor (Texto)

## Cliente(Customer)
    customer_id (PK): Identificador único del cliente (Numero o alfanumerico)
    customer_name: Nombre del cliente (Texto)
    customer_credit card: Tarjeta de credito del cliente (Numero o alfanumerico)
    customer_phone: Telefono del cliente (Numero)
    customer_mail: Direccion de correo del cliente (Texto o alfanumerico) 

## Compra(Purchase)
    purchase_id (PK): Identificador único de la compra (Numero o alfanumerico)
    purchase_pizza_id (FK): Numero desde la entidad pizza
    purchase_customer_id (FK): Identificador único del cliente (Numero o alfanumerico)
    purchase_date: Fecha de la compra (Fecha o texto)
    
___________________________________________________________________________________
Relaciones
. Una pizza solo puede tener un cocinero, pero un cocinero puede cocinar muchas pizzas (Relación uno a muchos entre Cocinero y Pizza).

. Un libro puede ser vendido por una sola pizzeria, pero una pizzeria puede vender muchas pizzas (Relación uno a muchos entre Pizzeria y Pizza).

. Una pizza solo puede ser vendida a un cliente, pero un cliente puede comprar muchas pizzas (Relación uno a muchos entre Cliente y Pizza)

. Una pizzeria puede vender muchas pizzas, y un cliente puede comprar muchas pizzas (Relación muchos a muchos ente pizzeria y pizza)


___________________________________________________________________________________
## Normalización 1FN, 2FN y 3FN

Primera Forma Normal (1FN)
. Todos los atributos contienen valores atómicos.
. Cada tabla tiene una clave primaria. aplica para modelos o entidades

-----------------------------------
Segunda Forma Normal (2FN)
. Debemos asegurarnos de que cada atributo no clave sea completamente dependiente de la clave primaria. En nuestro modelo, cada tabla está en 2FN porque:
. En la tabla Pizza, type, cocinero_id, seller_id, dependen completamente de pizza_id
. En la tabla Cocinero, name y birthdate dependen completamente de chef_id 
. En la tabla Cliente, name y credit card dependen completamente de customer_id
. En la tabla Compra, pizza_id, customer_id y purchase_date, dependen completamente de purchase_id

-----------------------------------
Tercera Forma Normal (3FN)
. Aseguramos que no hay dependencias transitivas (un atributo no clave no debe depender de otro atributo no clave)
. En nuestro modelo :
  En la tabla Pizza, no hay dependencias transitivas. Todos los atributos dependen únicamente de pizza_id
  En la tabla Cocinero, no hay dependencias transitivas. Todos los atributos dependen únicamente de chef_id
  En la tabla Seller, no hay dependencias transitivas. Todos los atributos dependen únicamente de seller_id
  En la tabla Cliente, no hay dependencias transitivas. Todos los atributos dependen únicamente de customer_id
  En la tabla Compra, no hay dependencias transitivas. Todos los atributos dependen únicamente de purchase_id

