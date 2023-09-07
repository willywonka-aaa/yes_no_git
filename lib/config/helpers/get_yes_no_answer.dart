import 'package:b_yes_no_git/domain/entities/message.dart';
import 'package:b_yes_no_git/infrastructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get("https://yesno.wtf/api");
    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}