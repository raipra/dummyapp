import 'package:brick_offline_first/offline_first_with_rest.dart';

class ServiceRequestText
{
  @Rest(name: 'ObjectID')
  final String objectId;

  @Rest(name: 'ParentObjectID')
  final String parentObjectId;

  @Rest(name: 'Text')
  final String text;

  @Rest(name: 'TypeCode')
  final String typeCode;

  @Rest(name: 'ServiceRequestID')
  final String serviceRequestId;

}