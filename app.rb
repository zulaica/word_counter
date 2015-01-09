require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_counter')

get('/') do
  erb(:form)
end

get('/results') do
  erb(:results)
end
