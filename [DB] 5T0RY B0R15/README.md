# 🧩 [DB] 5T0RY B0R15
## ENUNCIADO
<h4>
La base de datos de la película 'Story Boris' story_boris_db
ha sido modificada sin autorización por un usuario
ajeno a la empresa. Ha cambiado la contraseña del usuario
'admin' de la base de datos y para colmo ha añadido datos inecesarios
en las tablas. Encuentra la contraseña y la flag almacenada en la base de datos.</h4>

Puedes acceder a la base de datos mediante la URL `postgres://localhost:5432/story_boris_db`, pero antes debes ejecutar docker:
```
docker build -t story_boris .
```
```
docker run -d -p 5432:5432 --name story_boris_container story_boris
```
<br>

# PISTAS
## PISTA 1
- Lee bien el enunciado. Hay un detalle que podría ayudarte con el inicio de sesión en la base de datos
  
## PISTA 2
- Como no conocemos la contraseña para el acceso a la base de datos, puedes usar herramientas de ""ayuda""

## PISTA 3
- En las tablas tienes todo lo que necesitas para encontrar la flag

## Flag
flag{h4yun453rp13nt33nm1b0t4}

## Solución
<details>
    <summary> Cúrratelo anda 😉, y si ves que nada, pulsa aquí para ver la solución</summary>
    - Realizar ataque con hydra: hydra -l admin -P file.log postgres://localhost:5432/story_boris_db
    <br>
    - Conectar a la base de datos: psql -h localhost -U admin -d story_boris_db
    <br>
    - Realizar las consultas a las tablas para ver pistas en las columnas 'fl' y 'ag' de las tablas 'songs' y 'users'
</details>
