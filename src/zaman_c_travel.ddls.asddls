@AbapCatalog.sqlViewName: 'ZAMAN_TRAVEL_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Travel Details'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: { typeName: 'Travel', typeNamePlural: 'Travels' }
@Search.searchable: true
define root view ZAMAN_C_TRAVEL as select from /dmo/travel association [1] to ZAMAN_P_AGENCY as _agency
on $projection.AgencyId = _agency.AgencyId
association [1] to ZAMAN_P_CUST as _customer on $projection.CustomerId = _customer.CustomerId
association [1] to I_Currency as _currency on $projection.CurrencyCode = _currency.Currency
{
    @UI.facet: [{ purpose:#STANDARD, type:#IDENTIFICATION_REFERENCE, label:'Details', position: 10 }]
    @UI.lineItem: [{ position: 10, label: 'Travel No' }]
    @UI.identification: [{ position: 10 }]
    key travel_id as TravelId,
    @UI.selectionField: [{ position: 10 }]
    @EndUserText.label: 'Agency No'
    @UI.lineItem: [{ position: 20 }]
    @UI.identification: [{ position: 20 }]
    @ObjectModel.text.association: '_agency'
    @Consumption.valueHelpDefinition: [{ entity:{ name: 'ZAMAN_P_AGENCY', element:'AgencyId'} }]
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.75
    agency_id as AgencyId,
    @UI.selectionField: [{ position: 20 }]
    @UI.lineItem: [{ position: 30 }]
    @UI.identification: [{ position: 30 }]
    @ObjectModel.text.association: '_customer'
    @Consumption.valueHelpDefinition: [{ entity:{ name: 'ZAMAN_P_CUST', element:'CustomerId'} }]
    customer_id as CustomerId,
    @UI.identification: [{ position: 40 }]
    begin_date as BeginDate,
    @UI.identification: [{ position: 50 }]
    end_date as EndDate,
    @UI.lineItem: [{ position: 40 }]
    @UI.identification: [{ position: 60 }]
    booking_fee as BookingFee,
    @UI.lineItem: [{ position: 50 }]
    @UI.identification: [{ position: 70 }]
    total_price as TotalPrice,
    @UI.lineItem: [{ position: 60 }]
    @UI.identification: [{ position: 80 }]
    currency_code as CurrencyCode,
    @UI.identification: [{ position: 90 }]
    description as Description,
    @UI.lineItem: [{ position: 70 }]
    @UI.identification: [{ position: 100 }]
    status as Status,
    _agency,
    _customer,
    _currency
}
