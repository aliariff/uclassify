# uclassify

# Build Image
`docker build . -t uclassify-app`

# Run Image
`docker run -d -p 80:9292 uclassify-app`

# Endpoints
`POST /language-detector`

`POST /sport-topics`

Body Example: `{ "text": "manchester united" }` or `{ "text": ["guten tag", "good morning"] }`
