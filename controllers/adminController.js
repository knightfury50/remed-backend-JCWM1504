const { generateQuery, asyncQuery } = require('../helpers/queryHelp')
const db = require('../database')
    
module.exports = {
    getSales: async (req, res) => {
        try {
            const result = await asyncQuery(`select 
            s.id, s.name, s.address, s.hp, b.jabatan, b.atasan from sales s
            JOIN jabatan b ON s.id_jabatan = b.id`)
            res.status(200).send(result)
        }
        catch (err) {
            console.log(err)
            res.status(400).send(err)
        }
    },
    getReport: async (req, res) => {
        try {
            const result = await asyncQuery(`select a.id, a.name, a.hp, count(b.name) as total_client, sum(b.credit) as total_credit from sales a
            left join client b
            on a.id = b.id_sales
            group by a.id
            order by total_credit desc`
            )
            res.status(200).send(result)
        }
        catch (err) {
            console.log(err)
            res.status(400).send(err)
        }
    },
}