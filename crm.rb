require_relative 'contact'
require 'sinatra'

get '/' do
    @crm_app_name = "My CRM"
    erb :index
end

get '/contacts' do
    # @contacts = []
    # @contacts << Contact.new("name1", "lastname1", "email1", "note1")
    # @contacts << Contact.new("name2", "lastname2", "email2", "note2")
    # @contacts << Contact.new("name3", "lastname3", "email3", "note3")
    erb :contacts
end

get '/contacts/new' do
    erb :addnew
end