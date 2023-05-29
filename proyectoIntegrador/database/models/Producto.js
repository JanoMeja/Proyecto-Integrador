module.exports = function(sequelize, dataTypes) {
    
    let alias = "Producto";

    let cols = {
        id:{
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER,
        },
        userId:{
            type: dataTypes.INTEGER,
        },
        nombre:{
            type: dataTypes.STRING,
        },
        descripcion:{
            type: dataTypes.STRING,
        },
        img: {
            type: dataTypes.STRING
        }
    };

    let config = {
        tableName: 'productos',
        timestamps: false, 
        underscored: false, 
    };

    const Producto = sequelize.define(alias, cols, config);

     /* Crear relaciones */
   Producto.associate = function(models) {
        Producto.belongsTo(models.Usuario , {
            as: "usuario",
            foreingKey : "user_id"
            
        }),
        Producto.hasMany(models.Comentario, {
            as: "post",
            foreingKey: "idPost"
            })
         };

    return Producto;
};