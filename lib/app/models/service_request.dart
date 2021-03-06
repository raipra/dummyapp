import 'package:brick_offline_first/offline_first_with_rest.dart';
import 'employee.dart';
import 'customer.dart';
import 'service_request_item.dart';
import 'service_request_text.dart';
import 'address.dart';

@ConnectOfflineFirstWithRest(
  restConfig: RestSerializable(
    endpoint: r'''{
    if (query.action == QueryAction.upsert) {
      return "/ServiceRequestCollection";
    }
    if (query.action == QueryAction.get && query?.where != null) {
      final byId = Where.firstByField('ObjectID', query.where);
      // member endpoint
      if (byId != null && byId.value != null) {
        return "/ServiceRequestCollection(\'${byId.value}\')";
      }
      
    }
    if (query.action == QueryAction.get && query?.where != null) {
      final byId = Where.firstByField('ID', query.where);
      // member endpoint
      if (byId != null && byId.value != null) {
        return "/ServiceRequestCollection?\$filter=ID eq '${byId.value}'";
      }
    }  
    if (query.action == QueryAction.get) {
      return "/ServiceRequestCollection";
    }
    return null;
  }''',
  ),
)
class ServiceRequest extends OfflineFirstWithRestModel
{
  @Sqlite(unique: true)
  @Rest(name: 'ObjectID')
  final String objectId;

  @Rest(name: "ID")
  final String serviceRequestID;

  @Rest(name: "Name")
  final String subject;

  @OfflineFirst(where: {'parentId': "data['ObjectID']"})
  @Rest(ignoreTo: true)
  final ServiceRequestText workDescription;

  @Rest(name: 'LX_PRD_PD1')
  final bool inWarranty;

  @Rest(name: 'ProductID')
  final String productId;

  @Rest(name: 'ServicePerformerPartyID')
  final String technicianId;

  @OfflineFirst(where: {'employeeId': "data['ServicePerformerPartyID']"})
  @Rest(ignoreTo: true)
  final Employee technician;

  @Rest(name: 'BuyerPartyID')
  final String customerId;

  @OfflineFirst(where: {'customerId': "data['BuyerPartyID']"})
  @Rest(ignoreTo: true)
  final Customer customer;

  @Rest(name:'LX_PRD_SN1')
  final String serialNumber;

  @OfflineFirst(where: {'parentId': "data['ObjectID']"})
  @Rest(ignoreTo: true)
  final List <ServiceRequestItem> items;

  @OfflineFirst(where: {'parentId': "data['ObjectID']"})
  @Rest(ignoreTo: true)
  final Address serviceLocation;

  @Rest(ignore: true)
  final DateTime plannedStartDate;
  
  @Rest(ignore: true)
  final DateTime plannedEndDate;

  @Rest(name: 'LX_TKT_ASTDT')
  final DateTime actualVisitStartDate;

  @Rest(name: 'LX_TKT_AENDT')
  final DateTime actualVisitEndDate;

  @Rest(ignore: true)
  final double paymentAmount;

  @Rest(ignore: true)
  final String paymentID;

  @Rest(ignore: true)
  final String paymentStatus;

  @Rest(name: 'LX_TCK_CC')
  final String paymentMethod;

  @Rest(name: 'LX_TCK_EScontent')
  final double plannedAmount;

  @Rest(ignore: true)
  final double actualAmount;

  @Rest(ignore: true)
  final double maxAmount;

  @Rest(name: 'LX_TXT_FCK')
  final String faultCodeKey;

  @Rest(name: 'LX_TXT_CC')
  final String componentCode;

  @Rest(name: 'LX_TXT_DC')
  final String defectCode;

  @Rest(name: 'LX_TCK_FR')
  final String faultReported;

  @Rest(name: 'LX_TCK_EC')
  final String errorCode;

  @Rest(name: 'LX_TCK_AT')
  final String actionTaken;

  
  ServiceRequest({this.technician, this.objectId, this.serviceRequestID, this.subject, this.workDescription, this.inWarranty, this.productId, this.technicianId, this.customerId, this.customer, this.serialNumber, this.items, this.serviceLocation, this.plannedStartDate, this.plannedEndDate, this.paymentAmount, this.paymentID, this.paymentStatus, this.paymentMethod, this.plannedAmount, this.actualAmount, this.maxAmount, this.faultCodeKey, this.componentCode, this.defectCode, this.faultReported, this.errorCode, this.actionTaken, this.actualVisitStartDate, this.actualVisitEndDate});


}


