#!/bin/bash

arg=$1
numarg=$#
read arg
echo "Estadísticas del directorio: $arg"

if [ $numarg -gt 1 ]; then
	echo "El script debe recibir 1 o 0 argumentos"
	exit
fi

if [ $numarg == 1 ]; then
	echo "Estas trabajando en el directorio que pasaste como argumento"
	if [ -d $arg ]; then
		cd $arg
	else
		echo "El directorio introducido es inválido"
		exit
	fi
fi
if [ $numarg == 0 ]; then
	echo "Estas trabajando sobre el directorio actual"
fi
	 


function menu {
	
	echo "Elige una opción: "
	echo "1. Total disk used (utiliza el comando du)."
	echo "2. Number of directories."
	echo "3. Number of regular files."
	echo "4. Biggest file."
	echo "5. Smallest file."
	echo "6. Number of files with read permission for the owner."
	echo "7. Number of files with write permission for the group."
	echo "8. Number of files with execution permission for the rest of users."
	echo "9. Number of files with execution permission for everyone."
	echo "10. Exit"	
}

function menu2 {

	menu
	read case;
    case $case in
        1)  echo "1. Total disk used (utiliza el comando du)." ;;
		2)  echo "2. Number of directories." ;;
		3)  echo "3. Number of regular files." ;;
		4)  echo "4. Biggest file." ;;
		5)  echo "5. Smallest file." ;;
		6)  echo "6. Number of files with read permission for the owner." ;;
		7)  echo "7. Number of files with write permission for the group." ;;
		8)  echo "8. Number of files with execution permission for the rest of users" ;;
		9)  echo "9. Number of files with execution permission for everyone." ;;
		10) exit ;;
		*)  echo "Debes introducir un número entre 1 y 10"
	esac
}
function disk_used{
	echo "Elegiste la opción 1 : total del disco usado"
	used=du -h $arg
	echo "El tamaño total del disco usado es: $used"

}
function num_dir {
	echo "Elegiste la opción 2: número de directorios"
	dirc=ls -l | grep ^d | wc -l
	echo "El número de directorios es: $dirc"
}

function num_arch{
	echo "Elegiste la opción 3: número de archivos regulares"
	arch=ls -l | grep ^f | wc -l
	echo "El número de archivos regulares es: $arch"
}

function big_file{
	echo "Elegiste la opción 4: archivo de mayor tamaño"

	echo "El archivo de mayor tamaño es: "
}

function small_file{
	echo "Elegiste la opción 5: archivo de menor tamaño"

	echo "El archivo de menor tamaño es: "
}

function read_own{
	echo "Elegiste la opción 6: número de archivos con permisos de lectura para el usuario"

	echo "El número de archivos es: "
}

function write_grp{
	echo "Elegiste la opción 7: número de archivos con permisos de escritura para el grupo"

	echo "El número de archivos es: "
}

function exct_rest{
	echo "Elegiste la opción 8: número de archivos con permisos de ejecución para el resto"

	echo "El número de archivos es: "
}

function exct_all{
	echo "Elegiste la opción 9: número de archivos con permisos de ejecución para todos"

	echo "El número de archivos es: "
}

menu2	

