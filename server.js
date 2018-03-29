'use strict';

//Application Dependencies

const express = require('express');
const pg = require('pg');
const cors = require('cors');
const bodyParser = require('body-parser');

//Application Setup

const app = express();
const PORT = process.env.PORT;
const CLIENT_URL = process.env.CLIENT_URL;

//Database Setup

const client = new pg.Client(process.env.DATABASE_URL);
client.connect();
client.on('error', err => console.log(err));

// application middleware
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));

//API endpoints

app.get('/api/v1/books', (req, res) => {
  client.query(`SELECT book_id, title, author, image_url, isbn FROM books ORDER BY title;`)
    .then(results => res.send(results.rows))
    .catch(console.error);
});

app.get('/api/v1/books/:id', (req, res) => {
  client.query(
    `SELECT * FROM books WHERE book_id = $1;`,
    [req.params.id])
    .then(results => res.send(results.rows))
    .catch(console.error);
});

app.post('/api/v1/books', (req, res) => {
  console.log(req.body);
  client.query(
    `INSERT INTO books(title, author, image_url, isbn, description) 
    VALUES($1, $2, $3, $4, $5);`,
    [
      req.body.title,
      req.body.author,
      req.body.image_url,
      req.body.isbn,
      req.body.description
    ]
  )
    .then(function() {
      res.send('Insert complete')
    })
    .catch(function(err) {
      console.error(err);
    });
});

app.put('/api/v1/books/:id', function(req, res) {
  client.query(`
  UPDATE books
  SET title=$1, author=$2, isbn=$3, image_url=$4, description=$5
  WHERE book_id=$6;
  `, [
    req.body.title,
    req.body.author,
    req.body.isbn,
    req.body.image_url,
    req.body.description,
    req.params.book_id
  ])
    .then(() => {
      res.send('update complete');
    })
    .catch(err => {
      console.error(err);
    });
});

app.get('*', (req, res) => res.redirect(CLIENT_URL));

app.listen(PORT, () => console.log(`Server listening on ${PORT}`));