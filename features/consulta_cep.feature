Feature: Consulta de CEP

  Scenario: Consultar CEP válido
    Given que eu possuo o CEP "45989479"
    When eu faço uma requisição GET para /ws/45989479/json/
    Then o status da resposta deve ser 200
    And o campo "localidade" deve ser "Teixeira de Freitas"


Scenario: Consultar por endereço
    Given que desejo realizar consulta por endereço
    When eu faço uma requisição GET para /ws/ba/teixeira de freitas/Rua Abaete/json/
    Then o status da resposta deve ser 200
    And resposta deve ser um array
    And deve conter a localidade "Teixeira de Freitas"


Scenario: Consultar CEP inválido
    Given que eu possuo o CEP "00000000"
    When eu faço uma requisição GET para /ws/00000000/json/
    Then o status da resposta deve ser 200
    And campo "erro" deve estar presente com valor "true"
