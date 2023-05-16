module.exports = function (sequalize, dataTypes) {
    let alias = "Usarios";
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
        foto_de_perfil: {
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
        tableName: 'productos',
        timestamps: false,
        undercored: true, /* si tiene giones en vez de camel case */
    };

    const Usarios = sequalize.define(alias, cols, config);
    
}