<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <a href="{{route('mascotas.create')}}">
        <button>Agregar mascota</button>
    </a>
   <table>
        <thead>
                <tr>
                        <th></th>
                </tr>
    
        </thead>
   <tbody>

        @foreach($mascotas as $mascota)

        <tr>
            <td>{{ $mascota->nombre}}</td>
            <td>{{ $mascota->precio}}</td>
            <td>
            <a href="{{route('mascotas.edit', $mascota->id)}}">
            <button>Editar</button>
            </a>
            <a>
            <button>Borrar</button>
            </a>
            </td>
          
        
        </tr>
        @endforeach


   </tbody>
   </table>


</body>
</html>