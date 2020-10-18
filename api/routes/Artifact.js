const express = require('express');
const Router = express.Router();
const { checkToken } = require('../middleware/Auth')
const multer = require('../middleware/Multer');

const { createArtifact,updateArtifact,getAllArtifacts,getArtifact ,deleteArifact} = require('../controller/Artifact');

Router.post('/artifact/:id', checkToken, multer, createArtifact)
Router.put('/artifact/:id',multer, updateArtifact)
Router.get('/artifacts', getAllArtifacts)
Router.get('/artifact/:id', getArtifact)
Router.delete('/artifact/:id', deleteArifact)

module.exports = Router;