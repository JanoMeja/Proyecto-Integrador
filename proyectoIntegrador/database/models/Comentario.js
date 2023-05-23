module.exports = function (sequalize, dataTypes) {
    
    let alias = "Comentario";
    
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
    };

    let config = {
        tableName: 'comentarios',
        timestamps: false,
        undercored: true,
    };

    const Comentario = sequalize.define(alias, cols, config);

    return Comentario;
}