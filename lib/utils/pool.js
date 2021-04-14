const { Pool } = require('pg');

const pool = new Pool({
  connectionString: 'postgres://alchemy:alchemycodes@database-1.cxuumjqqqkri.us-west-2.rds.amazonaws.com:5432/postgres',
  ssl: process.env.PGSSLMODE && { rejectUnauthorized: false }
});

module.exports = pool;
