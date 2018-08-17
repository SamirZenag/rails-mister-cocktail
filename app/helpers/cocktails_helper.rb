module CocktailsHelper
  def cocktail_image_path(cocktail)
    if cocktail.photo.blank?
      image_path("z.jpg")
    else
      cl_image_path(cocktail.photo, height: 300, width: 400, crop: :fill)
    end
  end
end
