module.exports = function (sequelize, dataTypes) {
    let alias = "Usuario";
    
    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER,
        },
        email: {
                type: dataTypes.STRING,
        },
        constraseña: {
                type: dataTypes.STRING,
        },
        fotoDePerfil: {
                type: dataTypes.STRING,
        },
        fecha: {
                type: dataTypes.DATE,
        },
        dni: {
                type: dataTypes.INTEGER,
        },

    };
    let config = {
        tableName: 'usuarios',
        timestamps: false,
        undercored: false,
    };

    const Usuario = sequelize.define(alias, cols, config);
    
    Usuario.associate = function(models) {
        Usuario.hasMany(models.Producto , {
            as: "usuario",
            foreingKey : "user_id"
            }),
        Usuario.hasMany(models.Comentario , {
            as: "comentario",
            foreingKey : "idUsuario"
            })};


    return Usuario;
}