class ThemesController < ApplicationController
  def index
    @themes = Theme.order(id: :desc)
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    if @theme.save!
    redirect_to themes_path
  end
  end

  def edit
    @theme = Theme.find(params[:id])
  end

  def update
    @theme = Theme.find(params[:id])
    @theme.update(theme_params)
    redirect_to theme_path(@theme)
  end

   def show
    @theme = Theme.find(params[:id])
 end

  def destroy
    @theme = Theme.find(params[:id])
    @theme.destroy
    redirect_to themes_path
  end

  private

  def theme_params
    params.require(:theme).permit(:name_theme, :img_theme)
  end
end


