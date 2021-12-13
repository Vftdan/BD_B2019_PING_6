## Schema 1

`readers.json`:

``` json
{
  "123": {
    "lastName": "Pupkin",
    "firstName": "Vasya",
    "address": {
      "country": "Russia",
      "state": "Moscow",
      "city": "Moscow",
      "street": "Pushkina",
      "house": "1A",
      "apt": "10"
    }
  },
  "456": {
    "lastName": "Ivan",
    "firstName": "Petrov",
    "address": {
      "country": "Russia",
      "state": "Kakaya-to republic",
      "city": "Gryazi",
      "street": "Lenina",
      "house": "10",
      "apt": null
    }
  }
}
```

`books.json`:

``` json
{
  "978-1-4868-5761-6": {
    "title": "Сказка 1",
    "author": {
      "firstName": "Alexander",
      "lastName": "Pushkin"
    },
    "pagesNum": 200,
    "pubYear": 2000,
    "pubName": "Publisher 1",
    "categories": [
      "сказки"
    ]
  },
  "123-4-5678-9101-2": {
    "title": "Энциклопедия 1",
    "author": {
      "firstName": "Ivan",
      "lastName": "Ivanov"
    },
    "pagesNum": 500,
    "pubYear": 2015,
    "pubName": "Publisher 2",
    "categories": [
      "энциклопедии"
    ]
  }
}
```

`publishers.json`:

``` json
{
  "Publisher 1": {
    "pubAddress": {
      "country": "Russia",
      "state": "Moscow",
      "city": "Moscow",
      "street": "Pushkina",
      "house": "5",
      "apt": null
    }
  },
  "Publisher 2": {
    "pubAddress": {
      "country": "Russia",
      "state": "Moscow",
      "city": "Moscow",
      "street": "Lenina",
      "house": "7",
      "apt": 1
    }
  }
}
```

`categories.json`:

``` json
{
  "художественные": {
    "parent": null
  },
  "научные": {
    "parent": null
  },
  "сказки": {
    "parent": "художественные"
  },
  "энциклопедии": {
    "parent": "научные"
  }
}
```

`copies.json`:

``` json
[
  {
    "isbn": "978-1-4868-5761-6",
    "copyNumber": 1,
    "position": {
      "bookcase": 1,
      "level": 2,
      "offset": 0.1
    },
    "borrowed": [
      {
        "reader": "123",
        "returnDate": {
          "year": 2020,
          "month": 12,
          "day": 10
        }
      }
    ]
  },
  {
    "isbn": "123-4-5678-9101-2",
    "copyNumber": 1,
    "position": {
      "bookcase": 2,
      "level": 3,
      "offset": 0.8
    },
    "borrowed": [
      {
        "reader": "123",
        "returnDate": {
          "year": 2022,
          "month": 1,
          "day": 5
        }
      }
    ]
  }
]
```
