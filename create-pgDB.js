require('dotenv').config();
const { Pool } = require('pg');

// Replace these with your PostgreSQL server connection details
const connectionDetails = {
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
};
const pool = new Pool(connectionDetails);

// Specify the name of the database you want to create
const databaseName = process.env.DB_NAME;

// Define the SQL query to create the database
const createDatabaseQuery = `CREATE DATABASE ${databaseName}`;

// Use the pool to run the query
pool.query(createDatabaseQuery, (error, result) => {
  if (error) {
    console.error('Error creating database:', error);
  } else {
    console.log('Database created successfully');

    const tablePool = new Pool({
      ...connectionDetails,
      database: databaseName,
    });

    const createTableQuery = `CREATE TABLE IF NOT EXISTS largestcities (
      name VARCHAR(50), 
      country VARCHAR(50),
      population INTEGER,
      area INTEGER
      )`;

    tablePool.query(createTableQuery, (error, result) => {
      if (error) {
        console.error('Error creating table', error);
      } else {
        console.log('Table created successfully');
      }
      // Close the pool to end the script
      tablePool.end();
    });
  }
  pool.end();
});
