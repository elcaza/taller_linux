# Configuraciones necesarias para los retos

## Parte 1 - Configuraciones 
### Usuarios: root y soporte
1. Acceso a una máquina sin tener las contraseñas [ok]
1. Configuración correcta del teclado [ok]
1. Gestión de red [ok]
1. Levantar el servicio SSH [ok]
1. Reparar los repositorios de software [ok]
1. Instalar sudo [ok] [!!z]
1. Crear los siguientes usuarios [ok]
	1. soporte (añadir al grupo sudo)
	1. superadmin (añadir al archivo sudoers)
	1. cliente (sin privilegios)
### Usuarios: soporte
1. APT - Instalar mate desktop [ok]
1. Instalar vm-tools [ok]
1. Hacer que se inicie con interfaz gráfica [ok]

## Parte 2 - Otras formas de instalar paquetes
### Usuarios: soporte
1. DPKG - Instalación de: [ok]
	1. Google Chrome
	1. VS Code
	1. CherryTree
1. Compilar [ok]
	1. Git

## Parte 3 - Restaurando el orden
### Usuarios: superadmin
1. Restaurando el sitio web en WordPress
	1. Descomprimir el archivo con contraseña
1. Invistigar qué ha hecho el usuario intruso (history)
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
1. Script SIEM

# Ideas
1. Corroborar vulnerabilidad de escalar root
1. Limpiar path