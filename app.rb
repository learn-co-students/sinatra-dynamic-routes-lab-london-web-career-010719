require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @answer = params[:name].to_s.reverse
    "#{@answer}"
  end

  get '/square/:number' do
    @answer = params[:number].to_i * params[:number].to_i
    "#{@answer}"
  end

  get '/say/:number/:phrase' do 
    phrase = params[:phrase].to_s 
    repeats = params[:number].to_i
    printer = ""  
    repeats.times {
     printer << "#{phrase}"}
    "#{printer}"
  



  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do 
    erb :operator
  end


end