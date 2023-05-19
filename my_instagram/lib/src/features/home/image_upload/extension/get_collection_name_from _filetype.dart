// ignore_for_file: file_names

import '../../../../utils/src/extensions/file_type.dart';
import '../models/file_type.dart';

extension CollectionName on FileType {
  ///get the File Type
  String get collectionName {
    switch (this) {
      case FileType.image:
        return 'images';
      case FileType.video:
        return 'videos';
    }
  }
}