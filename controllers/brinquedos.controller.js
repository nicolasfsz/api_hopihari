const mysql = require('../mysql');

exports.cadastrarBrinquedo = async (req, res) => {
    try {
        console.log('req.body:', req.body); 
        const resultado = await mysql.execute(
            `INSERT INTO brinquedos (name, waiting_time, status, area) 
            VALUES (?, ?, ?, ?)`,
            [
                req.body.name,
                req.body.waiting_time, 
                req.body.status, 
                req.body.area
            ]
        );
        return res.status(201).send({ 
            "mensagem": "Brinquedo cadastrado com sucesso!",
            "resultado": resultado
        });

    } catch (error) {
        console.error(error); 
        return res.status(500).send({ error });
    }
}