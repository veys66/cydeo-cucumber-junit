Feature: Web table user order feature

  Scenario: User should be able to place order and order seen in web table
    Given user is already logged in and on order page
    When user selects product type "Familybea"
    And user enters quantity 2
    And user enters customer name "Sherlock Holmes"
    And user enters street "221B Baker Street"
    And user enters city "London"
    And user enters state "England"
    And user enters zipcode "50505"
    And user selects credit card type "american express"
    And user enters credit card number "1111222233334444"
    And user enters expiry date "12/23"
    And user enters process order button
    Then user should see "Sherlock Holmes" in first row of the web table

  Scenario Template: User should be able to place order and order seen in web table
    Given user is already logged in and on order page
    When user selects product type "<product type>"
    And user enters <quantity>
    And user enters customer name "<customer name>"
    And user enters street "<street>"
    And user enters city "London"
    And user enters state "England"
    And user enters zipcode "<zipcode>"
    And user selects credit card type "<cardType>"
    And user enters credit card number "<cardNumber>"
    And user enters expiry date "<expDate>"
    And user enters process order button
    Then user should see "<expectedName>" in first row of the web table

    Examples: Famous female scientists
      | productType | quantity | customerName | street    | city   | state   | zipcode | cardType | cardNumber       | expDate | expectedName |
      | MoneyCog    | 2        | Marie Curie  | London st | London | England | 50505   | Visa     | 1111222233334444 | 12/24   | Marie Curie  |

