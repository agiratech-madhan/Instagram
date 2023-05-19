import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../../../utils/src/firebase_field_name.dart';

@immutable
class CommentPayload extends MapView<String, dynamic> {
  CommentPayload({
    required String fromUserId,
    required String onPostId,
    required String comment,
  }) : super(
          {
            FireBaseFieldName.userId: fromUserId,
            FireBaseFieldName.postId: onPostId,
            FireBaseFieldName.comment: comment,
            FireBaseFieldName.createdAt: FieldValue.serverTimestamp(),
          },
        );
}
