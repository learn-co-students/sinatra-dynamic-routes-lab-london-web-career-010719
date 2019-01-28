require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
  end

  get "/square/:number" do
    @square = "#{params[:number].to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase].gsub("%20", " ")
    @new_phrase = ""
    @number.times do
      @new_phrase += @phrase
    end
    @new_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    case params[:operation] 
    when "add"
      "#{params[:number2].to_i + params[:number1].to_i}"
    when "subtract"
      "#{params[:number2].to_i - params[:number1].to_i}"
    when "multiply"
      "#{params[:number2].to_i * params[:number1].to_i}"
    when "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end


