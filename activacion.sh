curl --request POST \
  --url https://api.conekta.io/orders \
  --header 'accept: application/vnd.conekta-v2.0.0+json' \
  -u key_vqe1TjHPe1YdcwCMkx3vqA: \
  --header 'content-type: application/json' \
  --data '{
    "line_items": [{
        "name": "Tacos",
        "unit_price": 1000,
        "quantity": 12
    }],
    "shipping_lines": [{
        "amount": 1500,
        "carrier": "mi compañia"
    }],
    "currency": "MXN",
    "customer_info": {
        "name": "Fulanito Pérez",
        "email": "fulanito@conekta.com",
        "phone": "+5218181818181"
      },
      "shipping_contact":{
           "phone": "5555555555",
           "receiver": "Bruce Wayne",
           "address": {
               "street1": "Calle 123 int 2 Col. Chida",
               "city": "Cuahutemoc",
               "state": "Ciudad de Mexico",
               "country": "MX",
               "postal_code": "06100",
               "residential": true
           }
       },
      "charges":[{
          "payment_method": {
              "type": "oxxo_cash"
          }
      }]
  }'
