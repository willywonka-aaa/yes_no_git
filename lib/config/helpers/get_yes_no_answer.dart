import 'package:b_yes_no_git/domain/entities/message.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  
  Future<Message> getAnswer() async {
    final response = await _dio.get("https://yesno.wtf/api");

    throw UnimplementedError();
  }
}