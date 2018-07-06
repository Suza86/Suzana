class Movies < Flexirest::Base
	
  base_url "https://api.themoviedb.org/3/movie/550?api_key=f4fb446a449344503c44be521694d3b3"
  get :create, "/movies/:logo_path"

end