import 'package:brick_offline_first/offline_first_with_rest.dart';

class Product
{
  @Rest(name: 'ObjectID')
  String objectId;

  @Rest(name: 'ProductID')
  String productId;

  @Rest(name: 'Description')
  String productDescription;

  @Rest(name: 'LX_PRD_MI')
  String modelId;

  @Rest(name: 'Language')
  String language;

  @Rest(name: 'LX_PRD_TYP_KUT')
  String productType;

  @Rest(name: 'LX_PRD_CA')
  String connectedAppliance;

  @Rest(name: 'LX_PRD_PGText')
  String productGroup;
}