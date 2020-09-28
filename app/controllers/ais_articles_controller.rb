class AisArticlesController < ApplicationController
  def index
   @ais_article =  AisArticle.order(id: :desc)

  end

  def new
    @ais_article = AisArticle.new # needed to instantiate the form_for
  end

  def create
    @ais_article = AisArticle.new(ais_article_params)
    if @ais_article.save!
    redirect_to ais_articles_path(@ais_article)
    end

    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @ais_article = AisArticle.find(params[:id])
  end

  def update
    @ais_article = AisArticle.find(params[:id])
    @ais_article.update(ais_article_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to ais_article_path(@ais_article)
  end
  def show
    @ais_article = AisArticle.find(params[:id])
 end

  def destroy
    @ais_article = AisArticle.find(params[:id])
    @ais_article.destroy
    redirect_to ais_articles_path
  end

  private

  def ais_article_params
    params.require(:ais_article).permit(:title, :sous_titre, :lieu, :date, :image_url, :content, :image_url_2, :content_2, :image_url_3, :content_3, :image_url_4, :content_4, :image_url_5, :content_5, :content_6, :content_7, :content_8_en, :content_9_en, :content_10_en, :content_11_en, :content_12_en, :content_13_en, :content_14_en, :content_15_en, :image_url_6, :image_url_7, :image_url_8, :image_url_9, :image_url_10, :image_url_11, :image_url_12, :image_url_13, :image_url_14, :image_url_15, :legend, :legend_1, :legend_2, :legend_3, :legend_4, :legend_5, :legend_6, :legend_7, :legend_8, :legend_9, :legend_10, :legend_11, :legend_12, :legend_13, :legend_14, :legend_15, :video, :website1, :website2)
  end
end

