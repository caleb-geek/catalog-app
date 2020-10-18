'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Artifact extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Artifact.belongsTo(models.User)
    }
  };
  Artifact.init({
    artifactName: DataTypes.STRING,
    vendor: DataTypes.STRING,
    material: DataTypes.STRING,
    image: DataTypes.STRING,
    section: DataTypes.STRING,
    userId: {
      type:DataTypes.INTEGER,
      references :{
        model:'Users',
        key:'id'
      },
      onDelete:"SET NULL",
      onUpdate:"CASCADE"
  }
  }, {
    sequelize,
    modelName: 'Artifact',
  });
  return Artifact;
};