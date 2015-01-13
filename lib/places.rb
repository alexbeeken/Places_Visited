class Places
    @@all_places = []

    define_method(:initialize) do |place_name|
      @place_name = place_name
    end

    define_singleton_method(:all) do
      @@all_places
    end

    define_method(:save) do
      @@all_places.push(self)
    end

    define_singleton_method(:clear) do
      @@all_places = []
    end

    define_method(:description) do
      @place_name
    end
end
