import 'package:brick_offline_first/offline_first_with_rest.dart';

class Employee
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
}