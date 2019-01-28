require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @num2 = @num*@num
    "#{@num2}"
  end


  get '/say/:number/:phrase' do
  output = ''
  params[:number].to_i.times do
    output += params[:phrase]
  end
  output
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
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
    when "divide"
      @value = @num1/@num2
    when "multiply"
      @value = @num1*@num2
    when "subtract"
      @value = @num1-@num2
    when "add"
      @value = @num1+@num2
    end
  "#{@value}"
  end
end


# get '/goodbye/:name' do
#   @user_name = params[:name]
#   "Goodbye, #{@user_name}."
# end
#
# get '/multiply/:num1/:num2' do
#   num1 = params[:num1].to_i
#   num2 = params[:num2].to_i
#   @num = num1 * num2
#   "Answer: #{@num}"
# end
