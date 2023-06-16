module.exports = function (sequelize, dataTypes) {

    let alias = "Producto";

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER,
        },
        userId: {
            type: dataTypes.INTEGER,
        },
        nombre: {
            type: dataTypes.STRING,
        },
        descripcion: {
            type: dataTypes.STRING,
        },
        img: {
            type: dataTypes.STRING
        },
        createdAt: {
            type: dataTypes.DATE
        },
        updatedAt: {
            type: dataTypes.DATE

        }
    };

    let config = {
        tableName: 'productos',
        timestamps: false,
        underscored: false,
    };

    const Producto = sequelize.define(alias, cols, config);

    /* Crear relaciones */
    Producto.associate = function (models) {
        Producto.belongsTo(models.Usuario, {
            as: "usuarios",
            foreignKey: "userId"

        })

        Producto.hasMany(models.Comentario, {
            as: "comentario",
            onDelete: 'CASCADE',
            foreignKey: "idPost"
        })
    };

    return Producto;
};