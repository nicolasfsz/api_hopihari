const mysql = require('../mysql');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

exports.atualizarUsuario = async (req, res,) => {
    try {
        const idUsuario = Number(req.params.id);

        const resultado = await mysql.execute(
            `update users
                set name = ?,
                    email = ?,
                    password = ?
                 where id = ?;`,
            [
                req.body.name, 
                req.body.email, 
                req.body.password,
                 idUsuario
                ]
        );
        return res.status(201).send({ 
            "mensagem": "Usuario atualizado com sucesso!",
            "resultado": resultado
             });

}catch (error) {
    return res.status(500).send({"mensagem": error});

}
}

exports.cadastrarUsuario = async (req, res) => {
    try {
        const resultado = await mysql.execute(
            `insert into users (first_name, last_name, email, password, birth_date, phone) values (?, ?, ?, ?, ?, ?);`,
            [req.body.first_name, req.body.last_name, req.body.email, req.body.password, req.body.birth_date, req.body.phone]
        );
        return res.status(201).send({ 
            "mensagem": "Usuario cadastrado com sucesso!",
            "resultado": resultado
             });
    }
    catch (error) {
        return res.status(500).send({"mensagem": error});
    }
}

exports.deletarUsuario = async (req, res) => {
    try {
        const idUsuario = Number(req.params.id);

        const resultado = await mysql.execute(
            `delete from users where id = ?;`,
            [idUsuario]
        );
        return res.status(201).send({ 
            "mensagem": "Usuario deletado com sucesso!",
            "resultado": resultado
             });
    }
    catch (error) {
        return res.status(500).send({"mensagem": error});
    }
}

exports.login = async (req, res) => {
    try {
        const usuario = await mysql.execute(
            `SELECT * FROM users WHERE email = ? and password = ?;`,
            [req.body.email, req.body.password]
        );
        if (usuario.length == 0) {
            return res.status(401).send({ 
                "mensagem": "usuario não cadastrado!"
            });
        }

        const match = await bcrypt.compare(usuario[0].password, req.body.password)
        if (!match) {
            return res.status(401).send({ 
                "mensagem": "senha incorreta!"
            });
        }
        console.log(match, req.body.password, usuario[0].password);

        const token = jwt.sign({
            id: usuario[0].id,
            first_name: usuario[0].first_name,
            last_name: usuario[0].last_name,    
            email: usuario[0].email,
            birth_date: usuario[0].birth_date,
            phone: usuario[0].phone,
        }, 'senhajwt');
        return res.status(201).send({ 
            "mensagem": "Usuario logado com sucesso!",
            "resultado": resultado
             });
    }
    catch (error) {
        return res.status(500).send({"Error": error});
    }
}