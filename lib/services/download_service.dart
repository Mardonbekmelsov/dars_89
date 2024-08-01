// ignore_for_file: avoid_print

import 'dart:io';

import 'package:dars_89/services/permission_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DownloadPdfService extends ChangeNotifier {

  static Future<String> _getSavePath() async {
    Directory? savePath = await getApplicationDocumentsDirectory();

    final fullPath = "${savePath.path}/cv.pdf";
    return fullPath;
  }

  Future<void> downloadPdfIsolate(String url) async {
    if (await PermissionService.requestStoragePermission()) {
      final Dio dio = Dio();
      final String filePath = await _getSavePath();
      print(filePath);
      await dio.download(
        url,
        filePath,
        onReceiveProgress: (count, total) {
          print(count);
          print(total);
        },
      );
    } else {
      throw "Permission Denied";
    }
  }
}
