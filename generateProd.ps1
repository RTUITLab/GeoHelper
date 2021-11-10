$stack = docker-compose -f .\docker-compose.yml -f .\GeoHelper-Back\docker-compose.yml -f .\GeoHelper-Back\docker-compose.prod.yml -f .\docker-compose.prod.yml config
$stack = $stack -replace '\d+\.\d+$', '''$0'''
$stack > stack.yml