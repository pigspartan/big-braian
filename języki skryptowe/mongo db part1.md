

```
tworzenie databazy 
use <nazwa>
tworzenie kolekcji(tabela)
db.createCollection("<nazwa>")
```
dodawanie jednego elementu
```jsx
db.posts.insertOne({
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
db.posts.insertMany([  
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
db.posts.find()
//warunkie z warunkiem
db.posts.find( {category: "News"} ) //w category jest news
db.posts.find( {title:{$regex:"c"}} ) //zawiera c
db.posts.find( {title:{$not:{$regex:"c"}}} ) //nie zawiera c
// quantity(pole) większe niż 20
db.inventory.find( { quantity: { $gt: 20 } } )

```
update
```jsx
//updateMany istnieje
//pierszy nawiaj warunek wybierający jak nic nie dasz to morze stworzyc sobie nowy document(element tabeli)
//drugi to nawias to to co chcemy zrobic $set dodaje/updatuje pole $unset je usuwa
// { upsert: true } pozwala komendzie na dodawanie nowych pul
db.posts.updateOne( { title: "Post Title 1" }, { $set: { likes: 2 } } ) 
```
usuwanie 
```jsx
//usuwasz pierwszy spelniajoncy warunek/ deleteMany exists
db.posts.deleteOne({ title: "Post Title 5" })
```