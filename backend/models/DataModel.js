const mongoose = require('mongoose');

const dataSchema = new mongoose.Schema({
  region: { type: String, required: true },
  age: { type: Number, required: true },
  gender: { type: String, required: true },
  occupation: { type: String, required: true },
  income: { type: Number, required: true },
  farmingCycle: { type: String, required: true },
  financialProductsInterest: [{ type: String }],
  familyDetails: {
    children: { type: Number },
    elderly: { type: Number },
    dependents: { type: Number },
  },
  educationLevel: { type: String },
  economicActivity: { type: String },
  propertyOwnership: { type: Boolean },
  seniorCitizen: { type: Boolean },
  contactDetails: {
    phone: { type: String },
    email: { type: String },
  },
  preferredCommunicationMethod: { type: String },
  dateOfFormSubmission: { type: Date, default: Date.now },
});

module.exports = mongoose.model('Data', dataSchema);
