module.exports = function(sequelize, dataTypes) {
    
    let alias = "Producto";

    let cols = {
        id:{
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER,
        },
        user_id:{
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
        underscored: true, 
    };

    const Producto = sequelize.define(alias, cols, config);

    return Producto;
};