// /routes/dataRoutes.js
const express = require('express');
const Data = require('../models/DataModel'); // Ensure this points to the correct model
const router = express.Router();

// POST route to save data
router.post('/data', async (req, res) => {
  try {
    const newData = new Data(req.body);
    await newData.save();
    res.status(201).send('Data saved successfully');
  } catch (error) {
    console.error('Error saving data:', error); // Log the error for debugging
    res.status(400).send('Error saving data');
  }
});

// GET route to fetch all data (optional but useful for testing)
router.get('/data', async (req, res) => {
  try {
    const allData = await Data.find();
    res.status(200).json(allData);
  } catch (error) {
    console.error('Error fetching data:', error);
    res.status(500).send('Error fetching data');
  }
});

module.exports = router;
