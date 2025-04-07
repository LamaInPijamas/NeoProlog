class PrologController < ApplicationController
  def new
    @user_input = session[:user_input] || ''
  end

  def execute
    @code = params[:code]
    session[:user_input] = @code
    flash[:output] = "Otrzymano kod Prologu:\n\n#{@code}\n\n(Tu kiedyś będzie wynik z Prologa)"
    flash[:status] = 0
    redirect_to prolog_result_path
  end

  def result
    @output = flash[:output]
    @status = flash[:status]
  end

  private

  def process_with_prolog(input)
    # na razie skip
  end
end
