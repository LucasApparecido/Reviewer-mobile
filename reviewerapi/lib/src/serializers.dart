//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:reviewerapi/src/date_serializer.dart';
import 'package:reviewerapi/src/model/date.dart';

import 'package:reviewerapi/src/model/auth_dto.dart';
import 'package:reviewerapi/src/model/comment_list_dto.dart';
import 'package:reviewerapi/src/model/comment_request_dto.dart';
import 'package:reviewerapi/src/model/comment_response_dto.dart';
import 'package:reviewerapi/src/model/image_dto.dart';
import 'package:reviewerapi/src/model/page_comment_list_dto.dart';
import 'package:reviewerapi/src/model/page_review_list_dto.dart';
import 'package:reviewerapi/src/model/page_user_list_dto.dart';
import 'package:reviewerapi/src/model/page_user_log.dart';
import 'package:reviewerapi/src/model/pageable.dart';
import 'package:reviewerapi/src/model/pageable_object.dart';
import 'package:reviewerapi/src/model/review_list_dto.dart';
import 'package:reviewerapi/src/model/review_request_dto.dart';
import 'package:reviewerapi/src/model/review_response_dto.dart';
import 'package:reviewerapi/src/model/sort_object.dart';
import 'package:reviewerapi/src/model/user_group.dart';
import 'package:reviewerapi/src/model/user_list_dto.dart';
import 'package:reviewerapi/src/model/user_log.dart';
import 'package:reviewerapi/src/model/user_register_request_dto.dart';
import 'package:reviewerapi/src/model/user_request_dto.dart';
import 'package:reviewerapi/src/model/user_response_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  AuthDTO,
  CommentListDTO,
  CommentRequestDTO,
  CommentResponseDTO,
  ImageDTO,
  PageCommentListDTO,
  PageReviewListDTO,
  PageUserListDTO,
  PageUserLog,
  Pageable,
  PageableObject,
  ReviewListDTO,
  ReviewRequestDTO,
  ReviewResponseDTO,
  SortObject,
  UserGroup,
  UserListDTO,
  UserLog,
  UserRegisterRequestDTO,
  UserRequestDTO,
  UserResponseDTO,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UserGroup)]),
        () => ListBuilder<UserGroup>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
