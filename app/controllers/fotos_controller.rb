class FotosController < InheritedResources::Base
  def create
    @album = Album.find(params[:album_id])
    @foto = Foto.new(params[:foto])
    
    if @foto.save
      @album.fotos << @foto
      flash[:notice] = "Foto agregada correctamente."
      redirect_to album_url(@album)
    else
      flash[:notice] = "Hubo un error, inténtalo de nuevo"
      redirect_to album_url(@album)
    end
   
  end
  
  def destroy
    _find_album
    @foto = @album.fotos.find(params[:id])
    @foto.destroy
    flash[:notice] = "Foto eliminada."
    redirect_to albums_url
  end
  
  def _find_album
    @album = Album.find(params[:album_id])
  end
  
  protected
  
  def collection
    @fotos ||= end_of_association_chain.paginate(:page => params[:page], :per_page => 12)
  end
end
