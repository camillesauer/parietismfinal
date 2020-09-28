class RirArticlesController < ApplicationController
  def index
   @rir_article =  RirArticle.order(id: :desc)

  end

  def new
    @rir_article = RirArticle.new # needed to instantiate the form_for
  end

  def create
    @rir_article = RirArticle.new(rir_article_params)
    if @rir_article.save!
    redirect_to themes_path
    end

    # Will rrire ActiveModel::ForbiddenAttributesError
  end

  def edit
    @rir_article = RirArticle.find(params[:id])
  end

  def update
    @rir_article = RirArticle.find(params[:id])
    @rir_article.update(rir_article_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to rir_article_path(@rir_article)
  end
  def show
    @rir_article = RirArticle.find(params[:id])
 end

  def destroy
    @rir_article = RirArticle.find(params[:id])
    @rir_article.destroy
    redirect_to themes_path
  end

  private

  def rir_article_params
    params.require(:rir_article).permit(:video_url, :url1, :url2, :legend1, :legend2, :legend3, :legend4, :legend5, :legend6, :legend7, :legend8, :legend9, :legend10, :title_rir, :sous_titre_rir, :date_rir, :lieu_rir, :image_1, :contenu_1, :contenu_2, :contenu_3, :contenu_4, :contenu_5, :image_2, :image_3, :image_4, :image_5, :image_6, :image_7, :image_8, :image_9, :image_10, :image_11, :image_12, :image_13, :image_14, :image_15, :theme_id, :legend11, :legend12, :legend13, :legend14, :legend15, :contenu_6, :contenu_7, :contenu_8_en, :contenu_9_en, :contenu_10_en, :contenu_11_en, :contenu_12_en, :contenu_13_en, :contenu_14_en, :contenu_15_en, :theme_id)
  end
end



