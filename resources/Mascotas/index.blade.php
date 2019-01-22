<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
   <button>Agregar mascota</button>
   <table>
        <thead>
                <tr>
                        <th></th>
                </tr>
    
        </thead>
   <tbody>

        @foreach($mascotas as $mascota)

        <tr>
            <td>{{ $mascota->nombre}}/td>
            <td>{{ $mascota->precio}</td>
            <td>
            <button>Editar</button>
            <button>Borrar</button>
            </td>
            <td>{{}}</td>
        
        </tr>
        @endforeach


   </tbody>
   </table>


</body>
</html>