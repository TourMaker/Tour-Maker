import 'dart:developer';

import 'package:dio/dio.dart';

import '../../services/network_services/dio_client.dart';
import '../models/razorpay_model.dart';

class RazorPayRepository {
  final Dio dio = Client().init();
  // RazorPayModel razorpayModel = RazorPayModel();
  Future<ApiResponse<RazorPayModel>> createPayment(
      RazorPayModel razorPayModel) async {
    try {
      final Map<String, dynamic>? authHeader = await Client().getAuthHeader();
      final Response<Map<String, dynamic>> response = await dio.postUri(
          Uri.parse('createPayment'),
          options: Options(headers: authHeader),
          data: razorPayModel.toJson());
      if (response.statusCode == 200) {
        log('adeeb ${response.statusMessage}');
        log('adeeb ${response.data}');

        // log('adeeb ${response.da}');
        final RazorPayModel razorpay = RazorPayModel.fromJson(
            response.data!['result'] as Map<String, dynamic>);
        return ApiResponse<RazorPayModel>.completed(razorpay);
      } else {
        return ApiResponse<RazorPayModel>.error(response.statusMessage);
      }
    } on DioError catch (de) {
      return ApiResponse<RazorPayModel>.error(de.error.toString());
    } catch (e) {
      return ApiResponse<RazorPayModel>.error(e.toString());
    }
  }

  Future<ApiResponse<bool>> verifyPayment(
      String? paymentID, String? signature, String? orderID) async {
    try {
      final Map<String, dynamic>? authHeader = await Client().getAuthHeader();
      final Response<Map<String, dynamic>> response = await dio.postUri(
          Uri.parse('verifyPayment'),
          options: Options(headers: authHeader),
          data: <String, dynamic>{
            'orderId': orderID,
            'merchantPaymentId': paymentID,
            'merchantSignature': signature
          });
      if (response.statusCode == 200) {
        log('adeeb ${response.statusMessage}');
        log('adeeb ${response.data!['success']}');

        // log('adeeb ${response.da}');
        final bool razorpay = response.data!['success'] as bool;
        log('adeeb messsage $razorpay');
        return ApiResponse<bool>.completed(razorpay);
      } else {
        return ApiResponse<bool>.error(response.statusMessage);
      }
    } on DioError catch (de) {
      return ApiResponse<bool>.error(de.error.toString());
    } catch (e) {
      return ApiResponse<bool>.error(e.toString());
    }
  }
}
