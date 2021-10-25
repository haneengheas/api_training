import 'package:api/screens/login/model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController {
  Dio _dio = Dio();

  Future<LoginModel> userLogin(
      {required String email, required String password}) async {
    FormData _formData =
        FormData.fromMap({'user': email, 'password': password});

    Response response = await _dio
        .post('https://marya.bedayh4it.com/api/auth/login', data: _formData);
    print(response.data['data']['email']);
    LoginModel loginModel = LoginModel.fromJson(response.data);
    SharedPreferences preferences= await SharedPreferences.getInstance();
    preferences.setString('token', loginModel.accessToken);
    return loginModel;
  }
}
