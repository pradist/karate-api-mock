Feature: Karate Mock API Server

  Scenario: pathMatches('/api/mock') && methodIs('get')
    * def response = { message: 'Hello from Karate Mock!' }
    * def responseStatus = 200
