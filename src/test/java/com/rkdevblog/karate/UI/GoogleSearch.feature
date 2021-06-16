Feature: Google Search

  Background:
    * configure driver = { type: 'chrome', executable: 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe'}
  Scenario: google search, land on yahoo

    Given driver 'https://google.com'
    And input('input[name=q]', 'Yahoo')
    And click('input[name=btnK]')
    When click("h3[class='LC20lb DKV0Md']")
    Then waitForUrl('https://in.yahoo.com/')
    And match driver.url == 'https://in.yahoo.com/'
