class GlobalVariable
    include HTTParty
    base_uri 'https://api.github.com/search/repositories?'

    def initialize
        @options={}
    end

    def general
        self.class.get('/', @options)
    end

    def ruby
        self.class.get('/ruby', @options)
    end

    def python
        self.class.get('/python', @options)
    end

    def elixir
        self.class.get('/elixir', @options)
    end

    def nodejs
        self.class.get('/nodejs', @options)
    end

    def aspnet
        self.class.get('/aspnet', @options)
    end

end