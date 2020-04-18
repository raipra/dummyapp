import 'package:brick_offline_first/offline_first_with_rest.dart';

class Product extends OfflineFirstWithRestModel
{
  @Rest(name: 'ObjectID')
  final String objectId;

  @Rest(name: 'ProductID')
  final String productId;

  @Rest(name: 'Description')
  final String productDescription;

  @Rest(name: 'LX_PRD_MI')
  final String modelId;

  @Rest(name: 'Language')
  final String language;

  @Rest(name: 'LX_PRD_TYP_KUT')
  final String productType;

  @Rest(name: 'LX_PRD_CA')
  final String connectedAppliance;

  @Rest(name: 'LX_PRD_PGText')
  final String productGroup;

  Product.name({this.objectId, this.productId, this.productDescription,
      this.modelId, this.language, this.productType, this.connectedAppliance,
      this.productGroup});


}