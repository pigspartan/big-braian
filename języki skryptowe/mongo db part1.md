

```
tworzenie databazy 
use <nazwa>
tworzenie kolekcji(tabela)
db.createCollection("<nazwa>")
```
dodawanie jednego elementu(dokumentu)
```jsx
db.nazwakol.insertOne({
  title: "Post Title 1",
  body: "Body of post.",
  category: "News",
  likes: 1,
  tags: ["news", "events"],
  date: Date()
})

```
dodawanie wielu
```jsx
db.nazwakol.insertMany([  
  {
    title: "Post Title 2",
    body: "Body of post.",
    category: "Event",
    likes: 2,
    tags: ["news", "events"],
    date: Date()
  },
  {
    title: "Post Title 3",
    body: "Body of post.",
    category: "Technology",
    likes: 3,
    tags: ["news", "events"],
    date: Date()
  }
])
```
znajdowanie
```jsx
//wyświelta wszystko
db.nazwakol.find()
//warunkie z warunkiem
db.nazwakol.find( {category: "News"} ) //w category jest news
db.nazwakol.find( {title:{$regex:"c"}} ) //zawiera c
db.nazwakol.find( {title:{$not:{$regex:"c"}}} ) //nie zawiera c
// quantity(pole) większe niż 20
db.inventory.find( { quantity: { $gt: 20 } } )

```
update
```jsx
//updateMany istnieje
//pierszy nawiaj warunek wybierający jak nic nie dasz to morze stworzyc sobie nowy document(element tabeli)
//drugi to nawias to to co chcemy zrobic $set dodaje/updatuje pole $unset je usuwa
// { upsert: true } pozwala komendzie na dodawanie nowych pul
db.nazwakol.updateOne( { title: "Post Title 1" }, { $set: { likes: 2 } } ) 
```
usuwanie 
```jsx
//usuwasz pierwszy spelniajoncy warunek/ deleteMany exists
db.posts.deleteOne({ title: "Post Title 5" })

```
indexowanie pul
```jsx
db.nazwakol.createIndex({nr:1}) // nr to nazwa pola 1 morzna z,ienic na "text"


```