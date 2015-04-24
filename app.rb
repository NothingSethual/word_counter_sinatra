require('sinatra')
require('sinatra/reloader')
require('./lib/word_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  phrase = params.fetch('phrase')
  target = params.fetch('target')
  @result = phrase.get_count(target)
  erb(:result)
end
