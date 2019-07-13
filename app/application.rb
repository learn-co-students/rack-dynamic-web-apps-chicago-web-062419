class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Welcome to Slots World!"

    num_1 = Kernel.rand(1..9)
    num_2 = Kernel.rand(1..9)
    num_3 = Kernel.rand(1..9)

    resp.write "#{num_1}"
    resp.write "#{num_2}"
    resp.write "#{num_3}"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.write "(evil voice) 'Hehehe, You'll never win...'"
    resp.finish
  end

end
