# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.destroy_all

Product.create([
    {
        title: "Milk",
        description: "fresh cow juice",
        image: "milk.jpg",
        price: "3.07",
        available: 5,
        amount: "5",
        quantity: 5,
        stock: 5,
    },
    {
        title: "RTX 3090 GPU",
        description: "computer video card for all the frames per second",
        image: "rtx3090.png",
        price: "1500.00",
        available: 5,
        amount: "5",
        quantity: 5,
        stock: 5,
    },
    {
        title: "Spider-Man Suit",
        description: "adult-sized spider-man suit with muscles",
        image: "spiderman_suit.jpg",
        price: "60.00",
        available: 5,
        amount: "5",
        quantity: 5,
        stock: 5,
    }
])