import 'package:brick_offline_first/offline_first_with_rest.dart';

class Customer
{
  @Rest(name: 'ObjectID')
  final String objectId;

  @Rest(name: 'CustomerID')
  final String customerId;

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

  Customer({this.objectId, this.customerId, this.firstName, this.lastName, this.country, this.city, this.mobileNumber, this.street, this.email, this.language});
}