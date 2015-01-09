require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_counter')

get('/') do
  erb(:form)
end

get('/results') do
  word_to_count = params.fetch('word_to_count')
  words_to_check = params.fetch('words_to_check')
  number_of_times = params.fetch('words_to_check').word_counter(params.fetch('word_to_count'))
  preposition = "times"

  if number_of_times.==(1)
    preposition = "time"
  end

  @word_to_count = word_to_count
  @words_to_check = words_to_check
  @number_of_times = number_of_times
  @preposition = preposition

  erb(:results)
end
