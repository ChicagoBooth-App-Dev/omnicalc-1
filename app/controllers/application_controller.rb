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
end
