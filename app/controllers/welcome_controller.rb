class WelcomeController < ApplicationController
  def index
    cookies[:meu_nome] = "Rodrigo Barreto"
    @meu_nome = params[:nome]
    
    @curso = "Ruby on Rails"
  end
end
