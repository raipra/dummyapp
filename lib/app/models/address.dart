import 'package:brick_offline_first/offline_first_with_rest.dart';

class Address
{
  
  @Rest(name: 'ParentObjectID')
  final String parentObjectId;

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

  Address({this.parentObjectId, this.city, this.street, this.email, this.country, this.countryText, 
  this.phone, this.mobile});

}