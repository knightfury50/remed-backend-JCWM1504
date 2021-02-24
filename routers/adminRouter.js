// import router from express
const router = require('express').Router()

// import controller
const { adminController } = require('../controllers')

// create router
router.get('/get/sales', adminController.getSales)
router.get('/get/report', adminController.getReport)

// export router
module.exports = router