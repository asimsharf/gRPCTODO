//
//  Generated code. Do not modify.
//  source: proto/todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $0;
import 'todo.pb.dart' as $1;
import 'todo.pbjson.dart';

export 'todo.pb.dart';

abstract class ToDoServiceBase extends $pb.GeneratedService {
  $async.Future<$1.Task> createTask($pb.ServerContext ctx, $1.CreateTaskRequest request);
  $async.Future<$1.Task> getTask($pb.ServerContext ctx, $1.GetTaskRequest request);
  $async.Future<$1.Task> updateTask($pb.ServerContext ctx, $1.UpdateTaskRequest request);
  $async.Future<$1.Task> deleteTask($pb.ServerContext ctx, $1.DeleteTaskRequest request);
  $async.Future<$1.ListTasksResponse> listTasks($pb.ServerContext ctx, $0.Empty request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateTask': return $1.CreateTaskRequest();
      case 'GetTask': return $1.GetTaskRequest();
      case 'UpdateTask': return $1.UpdateTaskRequest();
      case 'DeleteTask': return $1.DeleteTaskRequest();
      case 'ListTasks': return $0.Empty();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateTask': return this.createTask(ctx, request as $1.CreateTaskRequest);
      case 'GetTask': return this.getTask(ctx, request as $1.GetTaskRequest);
      case 'UpdateTask': return this.updateTask(ctx, request as $1.UpdateTaskRequest);
      case 'DeleteTask': return this.deleteTask(ctx, request as $1.DeleteTaskRequest);
      case 'ListTasks': return this.listTasks(ctx, request as $0.Empty);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ToDoServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ToDoServiceBase$messageJson;
}

