Feature: Karate Mock API Server

  Scenario: pathMatches('/api/mock') && methodIs('get')
    * def response = { message: 'Hello from Karate Mock!' }
    * def responseStatus = 200

  Scenario: pathMatches('/api/user') && methodIs('post')
    * def req = karate.request.body
    * print 'Incoming request body:', req
    * match req == { name: '#string', email: '#string' }
    * def response = { message: 'User created successfully'}
    * def responseStatus = 201
