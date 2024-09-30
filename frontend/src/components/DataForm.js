import React, { useState } from 'react';
import axios from 'axios';
import { Container, Form, Button, Row, Col } from 'react-bootstrap';
import './DataForm.css';


const DataForm = () => {
  const [formData, setFormData] = useState({
    region: '',
    age: '',
    gender: 'male',
    occupation: '',
    income: '',
    farmingCycle: 'sowing',
    financialProductsInterest: [],
    children: 0,
    elderly: 0,
    dependents: 0,
    educationLevel: '',
    economicActivity: '',
    propertyOwnership: false,
    seniorCitizen: false,
    phone: '',
    email: '',
    preferredCommunicationMethod: 'email',
  });

  const handleChange = (e) => {
    const { name, value, type, checked } = e.target;
    setFormData({
      ...formData,
      [name]: type === 'checkbox' ? checked : value,
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    axios
      .post('http://localhost:5000/api/data', formData)
      .then(() => alert('Data submitted successfully'))
      .catch((error) => console.error('Error submitting data:', error));
  };

  return (
    <Container className="mt-5">
      <h2 className="mb-4 text-center">Financial Needs Assessment</h2>
      <Form onSubmit={handleSubmit}>
        <Row>
          <Col md={6}>
            <Form.Group controlId="region">
              <Form.Label>Region</Form.Label>
              <Form.Control
                type="text"
                name="region"
                placeholder="Enter Region"
                value={formData.region}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group controlId="age">
              <Form.Label>Age</Form.Label>
              <Form.Control
                type="number"
                name="age"
                placeholder="Enter Age"
                value={formData.age}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
        </Row>

        <Row>
          <Col md={6}>
            <Form.Group controlId="gender">
              <Form.Label>Gender</Form.Label>
              <Form.Control
                as="select"
                name="gender"
                value={formData.gender}
                onChange={handleChange}
              >
                <option value="male">Male</option>
                <option value="female">Female</option>
              </Form.Control>
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group controlId="occupation">
              <Form.Label>Occupation</Form.Label>
              <Form.Control
                type="text"
                name="occupation"
                placeholder="Enter Occupation"
                value={formData.occupation}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
        </Row>

        <Row>
          <Col md={6}>
            <Form.Group controlId="income">
              <Form.Label>Income</Form.Label>
              <Form.Control
                type="number"
                name="income"
                placeholder="Enter Income"
                value={formData.income}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group controlId="farmingCycle">
              <Form.Label>Farming Cycle</Form.Label>
              <Form.Control
                as="select"
                name="farmingCycle"
                value={formData.farmingCycle}
                onChange={handleChange}
              >
                <option value="sowing">Sowing</option>
                <option value="harvesting">Harvesting</option>
              </Form.Control>
            </Form.Group>
          </Col>
        </Row>

        <Row>
          <Col md={6}>
            <Form.Group controlId="children">
              <Form.Label>Number of Children</Form.Label>
              <Form.Control
                type="number"
                name="children"
                placeholder="Enter Number of Children"
                value={formData.children}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group controlId="elderly">
              <Form.Label>Number of Elderly</Form.Label>
              <Form.Control
                type="number"
                name="elderly"
                placeholder="Enter Number of Elderly"
                value={formData.elderly}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
        </Row>

        <Row>
          <Col md={6}>
            <Form.Group controlId="dependents">
              <Form.Label>Number of Dependents</Form.Label>
              <Form.Control
                type="number"
                name="dependents"
                placeholder="Enter Number of Dependents"
                value={formData.dependents}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group controlId="educationLevel">
              <Form.Label>Education Level</Form.Label>
              <Form.Control
                type="text"
                name="educationLevel"
                placeholder="Enter Education Level"
                value={formData.educationLevel}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
        </Row>

        <Row>
          <Col md={6}>
            <Form.Group controlId="economicActivity">
              <Form.Label>Economic Activity</Form.Label>
              <Form.Control
                type="text"
                name="economicActivity"
                placeholder="Enter Economic Activity"
                value={formData.economicActivity}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group controlId="propertyOwnership">
              <Form.Check
                type="checkbox"
                label="Property Ownership"
                name="propertyOwnership"
                checked={formData.propertyOwnership}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
        </Row>

        <Row>
          <Col md={6}>
            <Form.Group controlId="seniorCitizen">
              <Form.Check
                type="checkbox"
                label="Senior Citizen"
                name="seniorCitizen"
                checked={formData.seniorCitizen}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group controlId="phone">
              <Form.Label>Phone Number</Form.Label>
              <Form.Control
                type="text"
                name="phone"
                placeholder="Enter Phone Number"
                value={formData.phone}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
        </Row>

        <Row>
          <Col md={6}>
            <Form.Group controlId="email">
              <Form.Label>Email</Form.Label>
              <Form.Control
                type="email"
                name="email"
                placeholder="Enter Email"
                value={formData.email}
                onChange={handleChange}
              />
            </Form.Group>
          </Col>
          <Col md={6}>
            <Form.Group controlId="preferredCommunicationMethod">
              <Form.Label>Preferred Communication</Form.Label>
              <Form.Control
                as="select"
                name="preferredCommunicationMethod"
                value={formData.preferredCommunicationMethod}
                onChange={handleChange}
              >
                <option value="email">Email</option>
                <option value="phone">Phone</option>
              </Form.Control>
            </Form.Group>
          </Col>
        </Row>

        <Button variant="primary" type="submit">
          Submit
        </Button>
      </Form>
    </Container>
  );
};

export default DataForm;
