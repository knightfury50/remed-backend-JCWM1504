const { generateQuery, asyncQuery } = require('../helpers/queryHelp')
const db = require('../database')
    
module.exports = {
    get: async (req, res) => {
        try {
            const result = await asyncQuery(`select * from client where id_sales=${db.escape(req.params.id_sales)}`)
            res.status(200).send(result)
        }
        catch (err) {
            console.log(err)
            res.status(400).send(err)
        }
    },
    add: async (req, res) => {
        try {
            const result = await asyncQuery(`insert into client set ${generateQuery(req.body)}`)
            res.status(200).send({id: result.insertId, ...req.body})
        }
        catch (err) {
            console.log(err)
            res.status(400).send(err)
        }
    },
    edit: async (req, res) => {
        const id= req.params.id_client
        try {
            const result = await asyncQuery(`update client set ${generateQuery(req.body)} where id = ${id}`)
            res.status(200).send({status:200, message:`client with id ${id} has been updated`})
        }
        catch (err) {
            console.log(err)
            res.status(400).send(err)
        }
    },
    delete: async (req, res) => {
        try {
            const result = await asyncQuery(`delete from client where id=${db.escape(req.params.id_client)}`)
            res.status(200).send({status:200, message:`client with id ${db.escape(req.params.id_client)} has been deleted`})
        }
        catch (err) {
            console.log(err)
            res.status(400).send(err)
        }
    },

}