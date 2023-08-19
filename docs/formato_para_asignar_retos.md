# Retos sobre la máquina

¡Bienvenido cursante!

Sucede lo siguiente, hemos corrido a nuestro anterior encargado de sistemas.
Pero tras el día de su partida no hemos podido acceder a los sistemas de la empresa.
Queremos tu ayuda para restaurar el orden y averiguar qué ha sucedido.

Teníamos un servicio de ingreso vía SSH y un servidor Apache con nuestro sitio web con algún Gestor de Contenidos.
En teoría tenemos los respaldos en algún lugar del software opcional.

## Parte 1 - Configuraciones 
Por favor ayudanos a ingresar a nuestro sistema y crear los siguientes usuarios y configuraciones
### Usuarios: root
1. Recuperar contraseña de root [1]
1. Configuración correcta del teclado [1]
1. Levantar el servicio SSH [1]
1. Crear los siguientes usuarios [1]
	1. soporte (añadir al grupo sudo)
	1. superadmin (añadir al archivo sudoers)
	1. cliente (sin privilegios)
### Usuarios: soporte
1. APT - Instalar mate desktop [1]
1. Instalar vm-tools [1]
1. Hacer que se inicie solamente en modo consola y solamente se inicie la sesión gráfica si es necesario a través de un comando en la terminal [1]

## Parte 2 - Otras formas de instalar paquetes
Ahora, desde una sesión gráfica, por favor ayudanos a instalar los siguientes paquetes.
### Usuarios: soporte
1. DPKG - Instalación de:
	1. Google Chrome [ok]
	1. VS Code [ok]
	1. CherryTree [ok]
1. Compilar 
	1. Git [ok]

## Parte 3 - Restaurando el orden
Hemos recuperado las funcionalidades de nuestro sistema operativo. ¿Ahora podrías ayudarnos a restaurar el orden?
Sospechamos que nuestra máquina podría tener alguna clase de virus. Además que al iniciar en una terminal nos aparece un error.
+ ¡Pero primero lo primero! ¿Puedes recuperar nuestro sitio web?
+ Solamente entonces investigar qué fue lo que ha sucedido
+ Después, eliminar el malware en caso de existir
+ Para finalmente eliminar a todos los usuarios malignos

Si sirve de algo recordamos que originalmente solamente existía los usuarios: root, user y sistemas.

### Usuario: superadmin
1. Restaurando el sitio web en WordPress
	1. Descomprimir el archivo con contraseña
1. Invistigar qué ha hecho el usuario intruso (history)|
1. Eliminar todos los servicios malignos
	1. Reverse Shell UDP
	1. Reverse Shell TCP
	1. Crontab root
1. Eliminar a los usuarios malignos
	1. process %admin
	1. reverse /no/login
	1. sistemas (al que verán el history)

# Parte 4 - Blindando el sistema
### Usuarios: soporte
1. Instalar fail2ban
1. Implementar login mediante SSH Key
1. Cambiar SSH de puerto
1. Apagar firmas de servicios & banners
1. Script SIEM