class ApplicationController < ActionController::Base

  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    # params = {'number'=>n}
    @num = params.fetch('number').to_f
    @square_num = @num**2
    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb"})
  end

  def calculate_square_root
      # params = {'number'=>n}
    @num = params.fetch('number').to_f
    @square_root = @num**0.5
    render({ :template => "calculation_templates/square_root_results.html.erb"})
  end  

  def payment_form
     render({ :template => "calculation_templates/payment_form.html.erb"})
  end   

  def calculate_payment
    @APR = (params.fetch('APR').to_f)
    @years = params.fetch('years').to_f
    @principal = params.fetch('principal').to_f
    numerator = (@APR/(12*100))*@principal
    denominator = 1 - (1+(@APR/(12*100)))**(-(@years*12))
    @payment = (numerator/denominator).round(2)
    render({ :template => "calculation_templates/payment_results.html.erb"})

  end

  def random_form
    render({ :template => "calculation_templates/random_form.html.erb"})
  end 

  def calculate_random
    @lower = params.fetch('user_min').to_f
    @upper = params.fetch('user_max').to_f
    @random = rand(@lower..@upper)
    render({ :template => "calculation_templates/random_results.html.erb"})
  end

end
