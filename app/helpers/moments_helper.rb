module MomentsHelper

# method uses ActionController and Gmaps4Rails model to build markers based on
# latitude and longitudinal values provided from an object
# @param: object/instance with latitude and longitude values (ie cemeteries)
# @return: marker hash containing lat and long values used by JS scripts to
# produce pin-points with info windows on a Google Maps instance
def add_markers(object)
  # use ActionController to create object instance to use render_to_string method
  info = ActionController::Base.new()
  @markers_hash = Gmaps4rails.build_markers(object) do |mnt, marker|
    if mnt.latitude != 0 && mnt.longitude != 0
      # set long and lat from cem object
      # NOTE: keep marker.lat and marker.lng named that, even if you change the column names
      #       only works like that and I dont know why
      marker.lat mnt.latitude
      marker.lng mnt.longitude
      # set info window to paritial view, pass cem object and path to partial
      marker.infowindow info.render_to_string(:partial => 'moments/infowindow', :locals => {:moment => mnt, path: moment_path(:id => mnt.id_moment)})
    end
  end
  return @markers_hash
end

end
