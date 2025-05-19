const express = require("express");
const router = express.Router();
const login = require('../middleware/usuarios.middleware');
const notifications = require('../controllers/notifications.controller');

router.get("/:id",
     login.required, 
    notifications.getNotification
 );

module.exports = router;
