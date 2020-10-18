const fs = require('fs');
const Artifact = require('../../models').Artifact;
const User = require('../../models').User;

//Create Artifact
exports.createArtifact = (req,res) => {
  const url = req.protocol + '://' + req.get('host');
  const {artifactName,vendor,material,section} = JSON.parse(req.body.values)
  
    return Artifact.create({artifactName:artifactName,vendor:vendor,material:material,image: url + '/images/' + req.file.filename,section:section,userId:parseInt(req.params.id)})
      .then((artifact)=>{
        return res.status(201).json(artifact);
      }).catch((err) => {
        return res.status(400).json({message:err.message})
      })
  }

  // Update Artifact
exports.updateArtifact = async(req,res) => {
  const artifact = await Artifact.findByPk(parseInt(req.params.id))
  const {artifactName,vendor,material,section} = JSON.parse(req.body.values)
  
  const filename = artifact.dataValues.image.split('/images/')[1];
  const url = req.protocol + '://' + req.get('host');

  if(req.file){
    //Delete image from folder
    fs.unlink('images/'+filename, ()=>{
      return Artifact.update({artifactName:artifactName,vendor:vendor,material:material,section:section,image: url + '/images/' + req.file.filename},
      {
        where:{
          id:req.params.id
        }})
        .then(()=>{
          return res.status(200).json({message:"Artifact updated succesfully"})
        }).catch((err) => {
          return res.status(400).json({message:err.message})
        })
    })
   
  }else{
    return Artifact.update({artifactName:artifactName,vendor:vendor,material:material,section:section},
    {
      where:{
        id:req.params.id
      }})
      .then(()=>{
        return res.status(200).json({message:"Artifact updated succesfully"})
      }).catch((err) => {
        return res.status(400).json({message:err.message})
      })
  }
 
   
   }

   // view all Artifacts
exports.getAllArtifacts = (req,res) => {
    return Artifact.findAll()
    .then((artifacts) => {
      res.status(200).json(artifacts)
    })
    .catch((err) => {
      res.status(404).json(err)
    })
  }

  //Get a spefic  Artifact
exports.getArtifact = (req, res) => {
  return Artifact.findByPk(req.params.id).then(artifact => {
    res.status(200).json(artifact)
  })
}

//Delete artifact

exports.deleteArifact =async (req,res) => {
  const artifact = await Artifact.findByPk(parseInt(req.params.id))
  const filename = artifact.dataValues.image.split('/images/')[1];
  fs.unlink('images/' + filename,()=>{
    return Artifact.destroy({
      where: {
         id: req.params.id
       }})
       .then(()=>{
         res.status(200).json({message:"Artifact has been deleted"})
       })
       .catch((err)=>{
         res.status(404).json({error:err})
       })
  })
 
}
