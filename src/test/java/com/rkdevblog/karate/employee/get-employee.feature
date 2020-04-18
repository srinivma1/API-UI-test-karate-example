Feature: Get employee

  Background:
    * url baseUrl

  Scenario: Fetch a employee

    Given path 'employee/1'
    And header Content-Type = 'application/json'
    When method GET
    Then status 200
    And match $ == {name: 'john', message: "Successfully returned employee"}

