// import router from express
const router = require('express').Router()

// import controller
const {salesController} = require('../controllers')

// create router
router.get('/get/client/:id_sales', salesController.get)
router.post('/add/client', salesController.add)
router.patch('/edit/client/:id_client', salesController.edit)
router.delete('/delete/client/:id_client', salesController.delete)

// export router
module.exports = router