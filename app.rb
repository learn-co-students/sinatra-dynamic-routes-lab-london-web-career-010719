require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    to_say = []
    number.times do
      to_say << phrase
    end
    to_say.join(" ")
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get "/:operation/:num1/:num2" do
    op = params[:operation]
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    resp = ""
    case op
    when "add"
      resp = "#{num1 + num2}"
    when "subtract"
      resp = "#{num1 - num2}"
    when "multiply"
      resp = "#{num1 * num2}"
    when "divide"
      resp = "#{num1 / num2}"
    end
    resp
  end


end
