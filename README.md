# uclassify

# Build Image
`docker build . -t uclassify-app`

# Run Image
`docker run -d -p 80:9292 uclassify-app`

# Endpoints
Check if it's running: http://localhost/

`GET /language-detector?text=guten tag`

`GET /sport-topics?text=manchester united`

# Hosted

http://128.199.175.109/language-detector?text=guten+tag

http://128.199.175.109/sport-topics?text=manchester+united
