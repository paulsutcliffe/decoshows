class AlbumesController < InheritedResources::Base
  
  def index
    @album = Album.new
    @albumes = Album.all
  end
  
  def create
    create!(:notice => "Su álbum fue creado con éxito.") { @album }
  end
  
  def update
    update!(:notice => "Álbum actualizado con éxito.") { root_url }
  end
  
  def destroy
    destroy!(:notice => "Álbum eliminado con éxito.") { root_url }
  end
  
end
