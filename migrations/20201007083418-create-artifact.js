'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Artifacts', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      artifactName: {
        type: Sequelize.STRING
      },
      vendor: {
        type: Sequelize.STRING
      },
      material: {
        type: Sequelize.STRING
      },
      image: {
        type: Sequelize.STRING
      },
      section: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      userId: {
        type:Sequelize.INTEGER,
        references :{
          model:'Users',
          key:'id'
        },
        onDelete:"SET NULL",
        onUpdate:"CASCADE"
    }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('Artifacts');
  }
};