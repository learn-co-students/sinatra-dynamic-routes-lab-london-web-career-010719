require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name_reversed = @name.reverse
    "#{@name_reversed}"
  end

  get "/square/:number" do
  @number = params[:number]
  @number_squared = @number.to_i * @number.to_i
  "#{@number_squared.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
      "#{@phrase}" * @number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      @addition = @number1.to_i + @number2.to_i
      "#{@addition}"

    elsif @operation == "subtract"
      @subtraction = @number1.to_i - @number2.to_i
      "#{@subtraction}"

    elsif @operation == "multiply"
      @product = @number1.to_i * @number2.to_i
      "#{@product}"

    elsif @operation == "divide"
      @divider = @number1.to_i / @number2.to_i
      "#{@divider}"
    end
  end

#class end
end
