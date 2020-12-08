module ApplicationHelper
  def data_br(data_us)
    data_us.strftime("%d-%m-%Y")
  end

  def ambiente_rails
    ambiente =  Rails.env

    if ambiente == "development"
      "Desenvolvimento"
      elsif ambiente == "production"
        "Produção"
      else
        'Teste'
    end
  end
  
end
