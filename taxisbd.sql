create database taxis;

create table vehiculo(
	idVehiculo int not null auto_increment,
	modelo varchar(100),
	placa varchar(50),
	numero varchar(50),
	foto varchar(100),
	primary key(idVehiculo)
);

create table conductorVehiculo(
	idConductorVehiculo int not null auto_increment,
	idVehiculo int,
	idPersonal int,
	estado varchar(100),
	primary key(idConductorVehiculo)

);


create table personal(
idPersonal int not null auto_increment,
nombre varchar(30),
apellido varchar(30),
telefono varchar(30),
correo varchar(50),
rol varchar(50),
contraseña varchar(30),
primary key(idPersonal));


create table carrera(
idCarrera int not null auto_increment,
idCliente int,
idConductorVehiculo int ,
fechaSolicitud datetime,
fechaFin datetime,
costo float,
direccionRecogida varchar(30),
direccionFinal varchar(30),
primary key(idCarrera)

);


create table cliente(
	idCliente int not null auto_increment,
	nombre varchar(30),
	apellido varchar(30),
	ciudad varchar(30),
	telefono varchar(30),
	correo varchar(30),
	contraseña varchar(30),
	primary key(idCliente)
);

alter table conductorVehiculo add foreign key(idVehiculo) 
references vehiculo(idVehiculo);

alter table conductorVehiculo  add foreign key(idPersonal)
references personal(idPersonal);


alter table carrera add foreign key(idCliente) references
cliente(idCliente);

alter table carrera add foreign key(idConductorVehiculo)
references conductorVehiculo(idConductorVehiculo);





