#Gives you the ability to whitelist certain domains
#If you are going to use credentials and sessions you need to use cors

#We are inserting a middlewere here, and all will be intercepted by rails config with our rules.
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origin "http://localthost:3000" #This is going to change depending on what kind of frontend application you are working with and what port you are using
        resource "*", headeres: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]#To allow all resources, headers that need to be sent and what methods we allow.
credentials: true #What is going to allow you to pass those headers back n forth
    end
end