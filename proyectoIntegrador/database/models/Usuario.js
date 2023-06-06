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
        usuario: {
                type: dataTypes.STRING,
        },
        contrasenia: {
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
             as: "producto",
             foreignKey : "userId"
             }),
        Usuario.hasMany(models.Comentario , {
            as: "comentario",
            foreignKey : "idUsuario"
            })
        }; 


    return Usuario;
}