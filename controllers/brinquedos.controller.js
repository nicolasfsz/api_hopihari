const mysql = require('../mysql');


exports.cadastrarBrinquedo = async (req, res) => {
    try {
        console.log('req.body:', req.body); 
        const resultado = await mysql.execute(
            `INSERT INTO rides (name, waiting_time, status, area) 
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
        return res.status(500).send(error);
    }
}

exports.getBrinquedosByAreaName = async (req, res) => {
    try {
         resultados = await mysql.execute(
            `SELECT * FROM rides WHERE areas_id = 
            (SELECT id FROM areas WHERE name = ?)`,
            [req.params.areaName]
        );

        if (resultados.length === 0) {
            return res.status(404).send({ 
                "mensagem": "Nenhum brinquedo encontrado para a área especificada."
            });
        }

        return res.status(200).send({
            "mensagem": "Brinquedos encontrados com sucesso!",
            "resultado": resultados
        });
    } catch (error) {
        console.error(error);
        return res.status(500).send({ error });
    }
}