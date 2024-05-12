'use strict';
require('dotenv').config();
const fs = require('fs');
const path = require('path');
const Sequelize = require('sequelize');
const basename = path.basename(__filename);
const db = {};
let sequelize;

sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USERNAME,process.env.DB_PASSWORD ,{
    host: process.env.DB_HOST,
    dialect: 'mysql',
    port: 8889,
    operatorsAliases: 0,
    dialectOptions: {
        dateStrings: true,
        typeCast: true,
        timezone: "+07:00"
    },
    timezone: "+07:00",
    logging: false,
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
      }
});

sequelize.authenticate().then(() => {
    console.log('Connection to your databse has been established successfully.');
}).catch(err => {
    console.error('Unable to connect to the database:', err);
});

fs.readdirSync(__dirname).filter(file => {
    return (file.indexOf('.') !== 0) && (file !== basename) && (file.slice(-3) === '.js');
}).forEach(file => {
    const model = sequelize['import'](path.join(__dirname, file));
    db[model.name] = model;
});

Object.keys(db).forEach(modelName => {
    if (db[modelName].associate) {
        db[modelName].associate(db);
    }
});

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;