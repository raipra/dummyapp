import 'package:brick_offline_first/offline_first_with_rest.dart';
@ConnectOfflineFirstWithRest(
  restConfig: RestSerializable(
    endpoint: r'''{
    if (query.action == QueryAction.upsert) {
      return "/IndividualCustomerCollection";
    }
    if (query.action == QueryAction.get && query?.where != null) {
      final byId = Where.firstByField('ObjectID', query.where);
      // member endpoint
      if (byId != null && byId.value != null) {
        return "/IndividualCustomerCollection(\'${byId.value}\')";
      }
      
    }
    if (query.action == QueryAction.get && query?.where != null) {
      final byId = Where.firstByField('ID', query.where);
      // member endpoint
      if (byId != null && byId.value != null) {
        return "/IndividualCustomerCollection?\$filter=CustomerID eq '${byId.value}'";
      }
    }  
    if (query.action == QueryAction.get) {
      return "/IndividualCustomerCollection";
    }
    return null;
  }''',
  ),
)
class Address extends OfflineFirstWithRestModel
{
  
  @Rest(name: 'ParentObjectID')
  final String parentId;

  @Rest(name: 'City')
  final String city;

  @Rest(name: 'Street')
  final String street;

  @Rest(name: 'Email')
  final String email;

  @Rest(name: 'Country')
  final String country;

  @Rest(name: 'CountryText')
  final String countryText;

  @Rest(name: 'Phone')
  final String phone;

  @Rest(name: 'Mobile')
  final String mobile;

  Address({this.parentId, this.city, this.street, this.email, this.country, this.countryText, 
  this.phone, this.mobile});

}