import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  static Future<bool> requestStoragePermission() async {
    final isGranted = await Permission.manageExternalStorage.isGranted;
    print(await Permission.manageExternalStorage.status);
    if (!isGranted) {
      await Permission.manageExternalStorage.request();
    }

    return isGranted;
  }
}
