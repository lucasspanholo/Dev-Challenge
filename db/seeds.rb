# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'json'
require 'rest-client'
require 'open-uri'


url = "https://api.github.com/search/repositories?q=#{@var_language}in:name"

response = RestClient.get("https://api.github.com/search/repositories?q=#{@var_language}in:name")


@var_language.foreach do |linha|
    post = JSON.parse(response.body)
    linha = URI.Post.get(
        total_count: post['total_count'],
        name: post['name'],
        login: post['login'],
        created_at: post['created_at'] 
    )
end