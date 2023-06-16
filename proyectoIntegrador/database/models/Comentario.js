module.exports = function (sequelize, dataTypes) {
    
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
        undercored: false,
    };

    const Comentario = sequelize.define(alias, cols, config);

     Comentario.associate = function(models) {
         Comentario.belongsTo(models.Usuario , {
            as: "usuarios",
            foreignKey : "idUsuario"
            
        }) 
        Comentario.belongsTo(models.Producto, {
            as: "producto",
            onDelete: 'CASCADE',
            foreignKey: "idPost"
            })
         }; 
    return Comentario;
}