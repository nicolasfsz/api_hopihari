const express = require("express");
const router = express.Router();
const login = require('../middleware/usuarios.middleware');
const notifications = require('../controllers/notifications.controller');

router.get("/:id",
     login.required, 
    notifications.getNotification);
router.put("/:id",
     login.required, 
    notifications.updateNotification);

module.exports = router;
