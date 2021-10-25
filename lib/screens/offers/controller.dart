import 'package:api/screens/offers/model.dart';
import 'package:dio/dio.dart';

class OffersController {
  Dio _dio = Dio();
  Future<OffersModel> getOffers() async {
    _dio.options.headers = {
      'Authorization':
          'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImYwMjkwOTNlODE3OTA1ZWI2ZDllNzFiMDk0MjgxZTc0NjkzY2U2M2Q2Zjc1ODIyYzQ2NGI4MGJhY2MxMmEwZjM2ZDgyZDNmZWNkYmRmMmRkIn0.eyJhdWQiOiIzIiwianRpIjoiZjAyOTA5M2U4MTc5MDVlYjZkOWU3MWIwOTQyODFlNzQ2OTNjZTYzZDZmNzU4MjJjNDY0YjgwYmFjYzEyYTBmMzZkODJkM2ZlY2RiZGYyZGQiLCJpYXQiOjE2MzE3ODgwMDcsIm5iZiI6MTYzMTc4ODAwNywiZXhwIjoxNjYzMzI0MDA3LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.pWK5B6ukkq7vFwlPIVO4wyok9EtT-aMkG9chCy-fNyt_UdyYS6XS1CsCChqajwPcab9eLSacjJOR7OYxMM0p_DtoJYcW5nsbw-LGPrPkwDIrQB_cv6uuOsDlwtBDRX5QFMwkyvDqAQMx0TvNmWq_pJw4WQPO05D3JF-Z2qTjoVP8frPUB4MAEOB2_LWJICWo_Tn8Z6OA9zKwXfowSNYR4MxmneNP311dxylOs35I7wsWmFoteOJoJq40St4OWU4xU5s9ae_lHv2Nb1sh2qEg7Xh05_nnGvDb3ZZzY5a0toVRBNJpQK5paIyfbqLcbGacCMHuPvC8a-1lCrDg0rp5h9Cq4ZJDrDm3h8LEURna6qbcUW4XXnVBNX06vDduX2FM3xdbpCrJss_uv6gCABUKgxbzPVvTeY1due3rUdIVh9OpSC2xjU8WFtE1V1S73EEzsCC-0XyXZrZ7E4qVDh0ALUwuxGMteEFRDNQtnfYv1vTOGNCfCgp7cEE6272OUzREMRdN5TQeN-l02i2kCqWwFFr3EC9UIDSGcJigA0bw7NSFmN--zFCRpA_SelqUJYnnjsjtCLLE3UFD4EodlCh2BR7iHqhEILO7kmA53hxQZ59ZpP-6t_AhzTsbHot5jEG4eRKfWRCdTUcjBhbcUjomizqAD42cm0lQBu0PiNqWz20'
    };
    Response response = await _dio.get(
      'https://marya.bedayh4it.com/api/offers',
    );
    print(response);
    OffersModel offersModel = OffersModel.fromJson(response.data);
    return offersModel;
  }
}
