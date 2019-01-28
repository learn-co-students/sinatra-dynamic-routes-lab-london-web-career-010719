require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    "#{params[:number].to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phrase = ""
    num.times {phrase = phrase + params[:phrase].to_s}
    "#{phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    add = (params[:number1].to_i + params[:number2].to_i)
    subtract =  (params[:number1].to_i - params[:number2].to_i)
    divide = (params[:number1].to_i / params[:number2].to_i)
    multiply = (params[:number1].to_i * params[:number2].to_i)

    case params[:operation]
    when "add"
      "#{add}"
    when "subtract"
      "#{subtract}"
    when "divide"
      "#{divide}"
    when "multiply"
      "#{multiply}"
    end

  end



end
