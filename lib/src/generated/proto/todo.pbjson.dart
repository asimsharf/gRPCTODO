//
//  Generated code. Do not modify.
//  source: proto/todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import '../google/protobuf/empty.pbjson.dart' as $0;

@$core.Deprecated('Use taskDescriptor instead')
const Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'completed', '3': 4, '4': 1, '5': 8, '10': 'completed'},
  ],
};

/// Descriptor for `Task`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskDescriptor = $convert.base64Decode(
    'CgRUYXNrEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcH'
    'Rpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhwKCWNvbXBsZXRlZBgEIAEoCFIJY29tcGxldGVk');

@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest$json = {
  '1': 'CreateTaskRequest',
  '2': [
    {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.todo.Task', '10': 'task'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUYXNrUmVxdWVzdBIeCgR0YXNrGAEgASgLMgoudG9kby5UYXNrUgR0YXNr');

@$core.Deprecated('Use getTaskRequestDescriptor instead')
const GetTaskRequest$json = {
  '1': 'GetTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use updateTaskRequestDescriptor instead')
const UpdateTaskRequest$json = {
  '1': 'UpdateTaskRequest',
  '2': [
    {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.todo.Task', '10': 'task'},
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUYXNrUmVxdWVzdBIeCgR0YXNrGAEgASgLMgoudG9kby5UYXNrUgR0YXNr');

@$core.Deprecated('Use deleteTaskRequestDescriptor instead')
const DeleteTaskRequest$json = {
  '1': 'DeleteTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use listTasksResponseDescriptor instead')
const ListTasksResponse$json = {
  '1': 'ListTasksResponse',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.todo.Task', '10': 'tasks'},
  ],
};

/// Descriptor for `ListTasksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTasksResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0VGFza3NSZXNwb25zZRIgCgV0YXNrcxgBIAMoCzIKLnRvZG8uVGFza1IFdGFza3M=');

const $core.Map<$core.String, $core.dynamic> ToDoServiceBase$json = {
  '1': 'ToDoService',
  '2': [
    {'1': 'CreateTask', '2': '.todo.CreateTaskRequest', '3': '.todo.Task'},
    {'1': 'GetTask', '2': '.todo.GetTaskRequest', '3': '.todo.Task'},
    {'1': 'UpdateTask', '2': '.todo.UpdateTaskRequest', '3': '.todo.Task'},
    {'1': 'DeleteTask', '2': '.todo.DeleteTaskRequest', '3': '.todo.Task'},
    {'1': 'ListTasks', '2': '.google.protobuf.Empty', '3': '.todo.ListTasksResponse'},
  ],
};

@$core.Deprecated('Use toDoServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> ToDoServiceBase$messageJson = {
  '.todo.CreateTaskRequest': CreateTaskRequest$json,
  '.todo.Task': Task$json,
  '.todo.GetTaskRequest': GetTaskRequest$json,
  '.todo.UpdateTaskRequest': UpdateTaskRequest$json,
  '.todo.DeleteTaskRequest': DeleteTaskRequest$json,
  '.google.protobuf.Empty': $0.Empty$json,
  '.todo.ListTasksResponse': ListTasksResponse$json,
};

/// Descriptor for `ToDoService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List toDoServiceDescriptor = $convert.base64Decode(
    'CgtUb0RvU2VydmljZRIxCgpDcmVhdGVUYXNrEhcudG9kby5DcmVhdGVUYXNrUmVxdWVzdBoKLn'
    'RvZG8uVGFzaxIrCgdHZXRUYXNrEhQudG9kby5HZXRUYXNrUmVxdWVzdBoKLnRvZG8uVGFzaxIx'
    'CgpVcGRhdGVUYXNrEhcudG9kby5VcGRhdGVUYXNrUmVxdWVzdBoKLnRvZG8uVGFzaxIxCgpEZW'
    'xldGVUYXNrEhcudG9kby5EZWxldGVUYXNrUmVxdWVzdBoKLnRvZG8uVGFzaxI8CglMaXN0VGFz'
    'a3MSFi5nb29nbGUucHJvdG9idWYuRW1wdHkaFy50b2RvLkxpc3RUYXNrc1Jlc3BvbnNl');

