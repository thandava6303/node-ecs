const express = require('express');
const router = express.Router();
const joiMiddleware = require('../../middlewares/joi.middleware');
const joiSchemas = require('../../utils/joi.schemas');
const {constants} = require('../../config')


const baseComponent = require('../../components/v1/config/base');

router.get('/',baseComponent);

module.exports = router;
