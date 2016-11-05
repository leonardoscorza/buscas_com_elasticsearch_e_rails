class SeriesController < ApplicationController
  def index
    # Verifica se o usuário entrou com keywords
    if params[:keywords].present?
      # Diz ao elastickick para pesquisas as keyrwords em Series nos campos name e description
      @series = Series.search params[:keywords], fields: [:name, :description]
    end
  end
end
