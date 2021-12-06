sleep 1

#1 Listar todos los archivos del directorio bin. 
echo  '1. Listar todos los archivos del directorio bin. '
sleep 1
ls /bin


#2 Listar todos los archivos del directorio tmp.
echo -e '\n2. Listar todos los archivos del directorio tmp.'
sleep 1
ls /tmp

#3 Listar todos los archivos del directorio etc que empiecen por t en orden inverso.
echo -e '\n3. Listar todos los archivos del directorio etc que empiecen por t en orden inverso.'
sleep 1
ls -r /etc/t*


#4 Listar todos los archivos del directorio dev que empiecen por tty y tengan 5 caracteres. 
echo -e '\n4. Listar todos los archivos del directorio dev que empiecen por tty y tengan 5 caracteres.'
sleep 1
ls /dev/tty??

#5 Listar todos los archivos del directorio dev que empiecen por tty y acaben en 1,2,3 ó 4.
sleep 1


#6 Listar todos los archivos del directorio dev que empiecen por t y acaben en C1.
echo -e '\n6. Listar todos los archivos del directorio dev que empiecen por t y acaben en C1'
sleep 1
touch /dev/ttyc1
ls /dev/t*c1


#7 Listar todos los archivos, incluidos los ocultos, del directorio raíz. 
echo -e '\n7. Listar todos los archivos, incluidos los ocultos, del directorio raíz. '
sleep 1
ls -lha /

#8 Listar todos los archivos del directorio etc que no empiecen por t. 
echo -e '\n8. Listar todos los archivos del directorio etc que no empiecen por t. '
sleep 1
ls -d /etc/[!t]*

#9 Listar todos los archivos del directorio usr y sus subdirectorios.
echo -e '\n9. Listar todos los archivos del directorio usr y sus subdirectorios.'
sleep 1
ls -R /usr


#10 Cambiarse al directorio tmp
echo -e '\n10. Cambiarse al directorio tmp'
sleep 1
cd /tmp

#11. Verificar que el directorio actual ha cambiado.
echo -e '\n11. Verificar que el directorio actual ha cambiado.'
sleep 1
pwd

#12. Mostrar el día y la hora actual.
echo -e '\n12. Mostrar el día y la hora actual.'
sleep 1
date


#13. Con un solo comando posicionarse en el directorio $HOME. 
echo -e '\n13. Con un solo comando posicionarse en el directorio $HOME. '
sleep 1
cd


#14. Verificar que se está en él. 
echo -e '\n14. Verificar que se está en él. '
sleep 1
pwd


#15. Listar todos los ficheros del directorio HOME mostrando su número de inodo.  
echo -e '\n15. Listar todos los ficheros del directorio HOME mostrando su número de inodo. '
sleep 1
ls -i /


#16. Borrar todos los archivos y directorios visibles de vuestro directorio PRUEBA.   
echo -e '\n16. Borrar todos los archivos y directorios visibles de vuestro directorio PRUEBA. '
sleep 1
mkdir -p PRUEBA/dir1/dir11/
echo -e '\nDirectorios encontrados dentro de prueba'
ls -R PRUEBA
echo -e '\nBorrando directorios...'
rm -rf PRUEBA/*
echo -e '\nDirectorios encontrados dentro de prueba'
ls -R PRUEBA
sleep 2

#17. Crear los directorios dir1, dir2 y dir3 en el directorio PRUEBA. Dentro de dir1 crear el directorio dir11.
# Dentro del directorio dir3 crear el directorio dir31. Dentro del directorio dir31, crear los directorios dir311 y dir312. 
echo -e '\n17. Crear los directorios dir1, dir2 y dir3 en el directorio PRUEBA. Dentro de dir1 crear el directorio dir11. Dentro del directorio dir3 crear el directorio dir31. Dentro del directorio dir31, crear los directorios dir311 y dir312.'
sleep 1
echo -e '\nCreando directorios...'
mkdir -p PRUEBA/dir1/dir11/ PRUEBA/dir2/ PRUEBA/dir3/dir31/dir311 PRUEBA/dir3/dir31/dir312 
echo -e '\nDirectorios encontrados dentro de prueba'
ls -R PRUEBA


#18. Copiar el archivo /etc/motd a un archivo llamado mensaje de vuestro directorio PRUEBA. 
echo -e '\n18. Copiar el archivo /etc/motd a un archivo llamado mensaje de vuestro directorio PRUEBA. '
sleep 1
touch /etc/motd.txt
mkdir /etc
cp /etc/motd.txt PRUEBA/mensaje.txt


#19. Copiar mensaje en dir1, dir2 y dir3. 
echo -e '\n19. Copiar mensaje en dir1, dir2 y dir3. '
sleep 1
mkdir -p PRUEBA/dir1/dir11/ PRUEBA/dir2/ PRUEBA/dir3/dir31/dir311 PRUEBA/dir3/dir31/dir312
echo -e '\nCopiando archivos de texto'
touch PRUEBA/mensaje.txt
cp PRUEBA/mensaje.txt PRUEBA/dir1/mensaje.txt | cp PRUEBA/mensaje.txt PRUEBA/dir2/mensaje.txt | cp PRUEBA/mensaje.txt PRUEBA/dir3/mensaje.txt

#20. Comprobar el ejercicio anterior mediante un solo comando.  
echo -e '\n20. Comprobar el ejercicio anterior mediante un solo comando.  '
sleep 1
ls -R PRUEBA

#21. Copiar los archivos del directorio rc.d que se encuentra en /etc al directorio dir31. 
echo -e '\n21. Copiar los archivos del directorio rc.d que se encuentra en /etc al directorio dir31'
sleep 1
cp -r /etc/rc.d PRUEBA/dir3/dir31

#22. Copiar en el directorio dir311 los archivos de /bin que tengan una a como segunda letra y su nombre tenga cuatro letras. 
echo -e '\n22. Copiar en el directorio dir311 los archivos de /bin que tengan una a como segunda letra y su nombre tenga cuatro letras. '
sleep 1
cp -r /bin/?a?? PRUEBA/dir3/dir31/dir311
ls -R PRUEBA/dir3/dir31/dir311

#23. Copiar el directorio de otro usuario y sus subdirectorios debajo de dir11 (incluido el propio directorio). 
echo -e '\n23. Copiar el directorio de otro usuario y sus subdirectorios debajo de dir11 (incluido el propio directorio). '
sleep 1
cp -r ../../isaac PRUEBA/dir1/dir11

#24. Mover el directorio dir31 y sus subdirectorios debajo de dir2.  
echo -e '\n24. Mover el directorio dir31 y sus subdirectorios debajo de dir2. '
sleep 1
mv PRUEBA/dir3/dir31 PRUEBA/dir2
ls -R PRUEBA/dir2


#25. Mostrar por pantalla los archivos ordinarios del directorio HOME y sus subdirectorios.  
echo -e '\n25. Mostrar por pantalla los archivos ordinarios del directorio HOME y sus subdirectorios.'
sleep 1
ls -R $HOME

#26. Ocultar el archivo mensaje del directorio dir3. 
echo -e '\n26. Ocultar el archivo mensaje del directorio dir3. '
sleep 1
mv PRUEBA/dir3/mensaje.txt PRUEBA/dir3/.mensaje.txt
echo -e '\nMostrando los archivos del directorio dir3'
ls -lha PRUEBA/dir3

#27. Borrar los archivos y directorios de dir1, incluido el propio directorio . 
echo -e '\n27. Borrar los archivos y directorios de dir1, incluido el propio directorio.'
sleep 1
rm -r PRUEBA/dir1
echo -e '\n Mostrando el contenido del directorio PRUEBA'
ls

#28. Copiar al directorio dir312 los ficheros del directorio /dev que empiecen por t, acaben en una letra que vaya de la a a la b y tengan cinco letras en su nombre. . 
echo -e '\n28. Copiar al directorio dir312 los ficheros del directorio /dev que empiecen por t, acaben en una letra que vaya de la a a la b y tengan cinco letras en su nombre. '
sleep 1
cp /dev/t???[a*b] PRUEBA/dir2/dir31/dir312
echo -e '\n Mostrando el contenido del directorio dir312'
ls -R PRUEBA/dir2/dir31/dir312

#29. Borrar los archivos de dir312 que no acaben en b y tengan una q como cuarta letra. 
echo -e '\n29. Borrar los archivos de dir312 que no acaben en b y tengan una q como cuarta letra. '
sleep 1
rm -r PRUEBA/dir2/dir31/dir312/???q[!b]

#30. Mover el directorio dir312 debajo de dir3. 
echo -e '\n30. Mover el directorio dir312 debajo de dir3.  '
sleep 1
mv PRUEBA/dir2/dir31/dir312 PRUEBA/dir3
echo -e '\nMostrando los archivos del directorio dir3  '
ls -R PRUEBA/dir3


#31. Crear un enlace simbólico al directorio dir1 dentro del directorio dir3 llamado enlacedir1.
echo -e '\n31. Crear un enlace simbólico al directorio dir1 dentro del directorio dir3 llamado enlacedir1.'
sleep 1
mkdir PRUEBA/dir1
ln -s PRUEBA/dir1 PRUEBA/dir3/enlacedir1
echo -e '\nMostrando enlace simbolico en el directorio dir3  '
ls -R PRUEBA/dir3


#32. Posicionarse en dir3 y, empleando el enlace creado en el ejercicio anterior, crear el directorio nuevo1 dentro de dir1. 
echo -e '\n32. Posicionarse en dir3 y, empleando el enlace creado en el ejercicio anterior, crear el directorio nuevo1 dentro de dir1. '
sleep 1
cd PRUEBA/dir3
echo -e '\nMostrando ubicación actual '
pwd
mkdir enlacedir1/nuevo1
echo -e '\nMostrando información del enlace simbólico '
ls -lha enlacedir1/

#33. Utilizando el enlace creado copiar los archivos que empiecen por u del directorio /bin en directorio nuevo1. 
echo -e '\n33. Utilizando el enlace creado copiar los archivos que empiecen por u del directorio /bin en directorio nuevo1.'
sleep 1
cd PRUEBA/dir3
echo -e '\nMostrando ubicación actual '
pwd
mkdir enlacedir1/nuevo1
echo -e '\nCopiando archivos'
cp -r /bin/u* enlacedir1/nuevo1
echo -e '\nMostrando información del enlace simbólico '
ls -lha enlacedir1


#34. Crear dos enlaces duros del fichero fich1, llamarlo enlace, en los directorios dir1 y dir2. 
echo -e '\n34. Crear dos enlaces duros del fichero fich1, llamarlo enlace, en los directorios dir1 y dir2. '
sleep 1
touch fich1
ln fich1  ../dir1/enlace
ln fich1  ../dir2/enlace
echo -e '\Mostrando infornación del directorio PRUEBA'
ls -R ../../PRUEBA

#35.Borrar el archivo fich1 y copiar enlace en dir3. 
echo -e '\n35.Borrar el archivo fich1 y copiar enlace en dir3. '
sleep 1
echo -e '\nBorrando archivo'
rm -r fich1
echo -e '\nCopiando enlace'
cp ../dir1/enlace ../dir3/
echo -e '\Mostrando infornación del directorio dir3'
ls ../../PRUEBA/dir3

#36. Crear un enlace simbólico (llamado enlafich1) al fichero enlace de dir2 en dir1. 
echo -e '\n36. Crear un enlace simbólico (llamado enlafich1) al fichero enlace de dir2 en dir1. '
sleep 1
cd ..
echo -e '\nCreando enlace '
ln -s dir2/enlace dir1/enlafich1
echo -e '\nMostrando información del directorio dir1. '
ls dir1

#37. Posicionarse en dir1 y, mediante el enlace creado, copiar el archivo fichl dentro de dir311. 
echo -e '\n37. Posicionarse en dir1 y, mediante el enlace creado, copiar el archivo fichl dentro de dir311. '
sleep 1
echo -e '\nAccediendo al direcorio dir1'
cd dir1
pwd
echo -e '\nCopiando el archivo'
cp enlace ../dir2/dir31/dir311/fich1


#38. Seguir en dir1 y, mediante el enlace creado, sacar por pantalla las líneas que tiene el archivo fich1. 
echo -e '\n38.Seguir en dir1 y, mediante el enlace creado, sacar por pantalla las líneas que tiene el archivo fich1. '
sleep 1
echo -e '\nMostrando informacion del enlafich1'
cat enlafich1

#39. Borrar el fichero fich1 de dir2. 
echo -e '\n39.Borrar el fichero fich1 de dir2. '
sleep 1
touch ../dir2/fich1
echo -e '\nMostrando informacion del directorio dir2'
ls ../dir2
echo -e '\nEliminando fichero del directorio dir2'
rm -r ../dir2/fich1
echo -e '\nMostrando informacion del directorio dir2'
ls ../dir2


#40. Borrar todos los archivos y directorios creados durante los ejercicios.
echo -e '\n40.Borrar todos los archivos y directorios creados durante los ejercicios.'
sleep 1
cd ../..
echo -e '\nBorrando directorios...'
rm -r PRUEBA
echo -e '\nMostrando informacion del directorio'
ls

#41. Crear el directorio dir2 y dir3 en el directorio PRUEBA ¿Cuáles son los actuales permisos del directorio dir2? 
echo -e '\n41. Crear el directorio dir2 y dir3 en el directorio PRUEBA ¿Cuáles son los actuales permisos del directorio dir2? '
sleep 1 
echo -e '\nCreando directorios...'
mkdir -p PRUEBA/dir2 PRUEBA/dir3
echo -e '\nMostrando permisos...'
cd PRUEBA
ls -l


#42. Utilizando la notación simbólica, eliminar todos los permisos de escritura (propietario, grupo, otros) del directorio dir2. 
echo -e '\n42. Utilizando la notación simbólica, eliminar todos los permisos de escritura (propietario, grupo, otros) del directorio dir2. '
sleep 1 
echo -e '\nCambiando permisos...'
chmod 555 dir2
echo -e '\nMostrando permisos...'
ls -l


#43. Utilizando la notación octal, eliminar el permiso de lectura del directorio dir2, al resto de los usuarios.  
echo -e '\n43. Utilizando la notación octal, eliminar el permiso de lectura del directorio dir2, al resto de los usuarios. '
sleep 1
echo -e '\nCambiando permisos...'
chmod 551 dir2

#44. ¿Cuáles son ahora los permisos asociados a dir2?   
echo -e '\n44. ¿Cuáles son ahora los permisos asociados a dir2?'
sleep 1
echo -e '\nMostrando permisos...'
ls -l

#45. Crear bajo dir2, un directorio llamado dir2l.    
echo -e '\n45. Crear bajo dir2, un directorio llamado dir2l. '
sleep 1
echo -e '\nCreando directorio'
mkdir -p dir2/dir2l


#46. Concederse a sí mismo permiso de escritura en el directorio dir2 e intentar de nuevo el paso anterior. 
echo -e '\n46. Concederse a sí mismo permiso de escritura en el directorio dir2 e intentar de nuevo el paso anterior. '
sleep 1
echo -e '\nCambiando permisos...'
chmod +w dir2
echo -e '\nCreando directorio'
mkdir -p dir2/dir2l

#47. ¿Cuáles son los valores por omisión asignados a los archivos? 
echo -e '\n47. ¿Cuáles son los valores por omisión asignados a los archivos?'
sleep 1
ls -lha dir2


#48. Cambiar el directorio actual al directorio dir3. Imprimir su trayectoria completa para verificar el cambio. 
echo -e '\n48. Cambiar el directorio actual al directorio dir3. Imprimir su trayectoria completa para verificar el cambio. '
sleep 1
cd dir31
pwd


#49. ¿Cuáles son los permisos asignados en su momento a este directorio
echo -e '\n49. ¿Cuáles son los permisos asignados en su momento a este directorio'
sleep 1
ls -lha

#50. Establecer mediante el comando umask (buscar este comando) los siguientes valores por omisión: rwxr--r-- para los directorios y rw-r--r-- para los archivos ordinarios.
# umask (user mask) -> establece permisos por defecto para los nuevos arhivos y directorios creados por el proceso actual
echo -e '\n50. Establecer mediante el comando umask (buscar este comando) los siguientes valores por omisión: rwxr--r-- para los directorios y rw-r--r-- para los archivos ordinarios. '
sleep 1
echo -e '\nEstableciendo permisos por defecto'
umask 022
ls -l


#51. Crear cuatro nuevos directorios llamados dira, dirb, dirc, y dird bajo el directorio actual. 
echo -e '\n51. Crear cuatro nuevos directorios llamados dira, dirb, dirc, y dird bajo el directorio actual. '
sleep 1
echo -e '\nCreando directorios'
mkdir dira dirb dirc dird 
echo -e '\nMostrando directorios'
ls


#52. Comprobar los permisos de acceso de los directorios recién creados para comprobar el funcionamiento del comando umask. 
echo -e '\n52. Comprobar los permisos de acceso de los directorios recién creados para comprobar el funcionamiento del comando umask. '
sleep 1
echo -e '\nMostrando permisos de los directorios'
ls -l

