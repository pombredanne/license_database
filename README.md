Start unicorn with `unicorn_rails -c config/unicorn.rb`

Bypassing uniqueness validation:
`ab -c 10 -n 100 -m POST http://localhost:3000/free_licenses/`

Serialized transactions:
`ab -c 10 -n 100 -m POST http://localhost:3000/paid_licenses/`
