module.exports = function (sequilize, dataTypes) {
    //creo un alias para que sequelize sepa con cual modelo debe conectar */
    let alias = "Comentario";
    // creo una variable (Cols) con la estructura de la tabla
    let cols  = {
        id:{
            AutoIncrement : true,
            primaryKey: true,
            type:dataTypes.INTEGER
        },
        idPost:{
            type:dataTypes.INTEGER
        },
        idUsuario:{
            type:dataTypes.INTEGER
        },
        comentarios:{
            type:dataTypes.STRING
        },
        createdAT:{
            type: dataTypes.DATE,
            allownull: true
        },
        updatedAT: {
            type: dataTypes.DATE,
            allownull: true
        }
    }

//creo un OBJ con la configuracion de la tabla
    let config = {
        tableName: "comentarios",
        timeStamp: false,
        undercored: true,
    } 
}