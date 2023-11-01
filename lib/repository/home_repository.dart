import '../data/network/base_api_service.dart';
import '../data/network/network_api_service.dart';
import '../model/movies_model.dart';
import '../res/app_urls.dart';

class HomeRepository {

  final BaseApiService _apiServices = NetworkApiService() ;

  Future<MovieListModel> fetchMoviesList()async{

    try{

      dynamic response = await _apiServices.getGetApiResponse(AppUrls.moviesListEndPoint);
      return MovieListModel.fromJson(response);

    }catch(e){
      throw e ;
    }
  }

}