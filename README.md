# uclassify

# Map Reduce
```
map = function() {
  if (this.type == "product" && this.producer == "Samsung")
    emit(key: 1, price: this.price)
}

reduce = function(key, values) {
  sum = 0;
  count = 0;
  avgPrice = 0;
  for value in values {
    sum += value.price;
    count += 1;
  }
  avgPrice = sum / count;
  emit(key: 1, avgPrice);
}
```

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
