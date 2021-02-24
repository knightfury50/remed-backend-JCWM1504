const express = require('express')
const cors = require('cors')
const bodyparser = require('body-parser')
require('dotenv').config() // untuk setup file .env


// main app
const app = express()

// apply middleware
app.use(cors())
app.use(bodyparser.json())

const db = require('./database')
db.connect((err) => {
    if (err) return console.error('error connecting: ' + err.stack)

    console.log('connected to mysql as id ' + db.threadId)
})


// main route
const response = (req, res) => res.status(200).send('<h1>REST API JCWM1504</h1>')
app.get('/', response)

const { adminRouter, salesRouter } = require('./routers')
app.use('/admin', adminRouter)
app.use('/sales', salesRouter)

// bind to local machine
const PORT = process.env.PORT || 2000
app.listen(PORT, () => console.log(`CONNECTED : port ${PORT}`))