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
class Employee extends OfflineFirstWithRestModel
{
  @Rest(name: 'ObjectID')
  final String objectId;

  @Rest(name: 'EmployeeID')
  final String employeeId;

  @Rest(name: 'FirstName')
  final String firstName;

  @Rest(name: 'LastName')
  final String lastName;

  @Rest(name: 'CountryCodeText')
  final String country;

  @Rest(name: 'City')
  final String city;

  @Rest(name: 'MobilePhoneNumber')
  final String mobileNumber;

  @Rest(name: 'Street')
  final String street;


  @Rest(name: 'Email')
  final String email;

  @Rest(name: 'LanguageCodeText')
  final String language;

  Employee({this.objectId, this.employeeId, this.firstName, this.lastName, this.country, this.city, this.mobileNumber, this.street, this.email, this.language});
}