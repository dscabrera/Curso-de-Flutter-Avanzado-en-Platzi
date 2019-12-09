import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageAPI {
  final StorageReference _storageReference = FirebaseStorage.instance.ref();

  Future<StorageUploadTask> uploadFile(String path, File image) async {
    /* es lo mismo que el return colocado debajo
    StorageUploadTask storageUploadTask = _storageReference.child(path).putFile(image);
    return storageUploadTask;*/
    return _storageReference.child(path).putFile(image);
  }
}