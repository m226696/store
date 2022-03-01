# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete([
    {
        name: "Snake Oil",
        description: "maybe it works?",
        price: 10.00
    },
    {
        name: "Venom Oil",
        description: "maybe it works?",
        price: 10.00
    },
    {
        name: "Snake",
        description: "a real snake",
        price: 10.00
    },
    {
        name: " Oil",
        description: "probably olive",
        price: 10.00
    }
])