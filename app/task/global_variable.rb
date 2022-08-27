class GlobalVariable
    include HTTParty
    base_uri "https://api.github.com/search/repositories?q="
end 