const express = require('express');
const Router = express.Router();
const { checkToken } = require('../middleware/Auth')
const { getUser,createUser,login} = require('../controller/User');


Router.get('/:id',checkToken, getUser)
Router.post('/', createUser)
Router.post('/login', login)



module.exports = Router;
