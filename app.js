var express = require('express');
var mysql = require('mysql');

var app = express();

// Parsea la informacion recibida en JSON.
app.use(express.json());

//Establecemos parametros de conexión con la DB
var conn = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'articulosdb'
});

//Probamos conexión
conn.connect((error) => {
    if(error){
        throw error;
    }else{
        console.log("Conexión exitosa a base de datos");
    }
});

//Si es que no se define un puerto por variable de entorno, se conectará en el puerto 3000
const port = process.env.PORT || 3000;

app.listen(port, () =>{
    console.log("Servidor OK en puerto: "+port);
});

app.get('/', (req, res) => {
    res.send('Ruta INICIO');
});

//Mostrar todos los articulos
app.get('/api/articulos', (req, res) => {
    conn.query('SELECT * FROM articulos', (error, filas) => {
        if(error){
            throw error;
        }else{
            res.send(filas);
        }
    })
});

//Mostrar un articulo por id
app.get('/api/articulos/:id', (req, res) => {
    conn.query('SELECT * FROM articulos WHERE id = ?',[req.params.id], (error, fila) => {
        if(error){
            throw error;
        }else{
            res.send(fila);
            //res.send(fila[0].descripcion); //Envia un campo especifico de la tabla.
        }
    })
});

//Crear un articulo
app.post('/api/articulos', (req, res) => {
    let data = {descripcion:req.body.descripcion, precio:req.body.precio, stock:req.body.stock};
    console.log(data);
    let sql = "INSERT INTO articulos SET ?";
    conn.query(sql, data, (error, results) => {
        if(error){
            throw error;
        }else{
            res.send(results);
        }
    })
});

//Editar un Articulo
app.put('/api/articulos/:id', (req, res) => {
    let id = req.params.id;
    let descripcion = req.body.descripcion;
    let precio = req.body.precio;
    let stock = req.body.stock;
    let sql = "UPDATE articulos SET descripcion = ?, precio = ?, stock = ? WHERE id = ?";
    conn.query(sql, [descripcion, precio, stock, id], (error, results) => {
        if(error){
            throw error;
        }else{
            res.send(results);
        }
    })
});

//Eliminar un articulo
app.delete('/api/articulos/:id', (req, res) => {
    conn.query("DELETE FROM articulos WHERE id = ?", [req.params.id], (error, filas) => {
        if(error){
            throw error;
        }else{
            res.send(filas);
        }
    })
});