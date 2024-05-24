import 'package:dio/dio.dart';
import 'package:maybe_app/domain/entities/message.dart';
import 'package:maybe_app/infrastructure/models/yes_no_model.dart';

mixin class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final mappingResponse = YesNoModel.fromJson(response.data);

    return mappingResponse.toMessageEntity();
  }
}