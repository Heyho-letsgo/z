module ItemsHelper

def item_params
    params.require(:item).permit(:title, :body, :image)
  end

end
