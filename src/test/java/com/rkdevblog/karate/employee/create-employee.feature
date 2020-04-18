Feature: Create employee

  Background:
    * url baseUrl

  Scenario: Create a employee

    Given path 'employee'
    And header Content-Type = 'application/json'
    And request { "id": "1234", "name": "start"}
    When method POST
    Then status 200
    And match $ == {name: 'start', message: "Successfully created employee"}
