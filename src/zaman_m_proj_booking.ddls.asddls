@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Booking'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: { typeName: 'Travel', typeNamePlural: 'Travels' }
define view entity ZAMAN_M_PROJ_BOOKING
  as projection on ZAMAN_M_BOOKING
{
      @UI.facet: [
      { id:'Booking',
        purpose:#STANDARD,
        type:#IDENTIFICATION_REFERENCE,
        label:'Booking',
        position: 10 },

      { id: 'BookSupplement',
        purpose: #STANDARD,
        type: #LINEITEM_REFERENCE,
        label: 'Booking Supplements',
        position: 20,
        targetElement: '_Booksupplement'}
      ]
      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{ position: 10 }]
  key travel_id,
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
  key booking_id,
      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position: 30 }]
      booking_date,
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      @Consumption.valueHelpDefinition: [{entity: {name:'/dmo/i_Customer', element:'CustomerID'}}]
      @ObjectModel.text.element: [ 'CustomerName' ]
      customer_id        as CustomerID,
      _Customer.LastName as CustomerName,
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 50 }]
      @Consumption.valueHelpDefinition: [{entity: {name:'/dmo/i_Carrier', element:'AirlineID'}}]
      @ObjectModel.text.element: [ 'CarrierrName' ]
      carrier_id         as CarrierID,
      _Carrier.Name      as CarrierrName,
      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position: 60 }]
      @Consumption.valueHelpDefinition: [{entity: {name:'/dmo/i_Connection', element:'ConnectionID'},
      additionalBinding: [{ localElement: 'CarrierID', element: 'AirlineID' }]}]
      connection_id,
      @UI.lineItem: [{ position: 70 }]
      @UI.identification: [{ position: 70 }]
      flight_date,
      @Semantics.amount.currencyCode: 'currency_code'
      @UI.lineItem: [{ position: 80 }]
      @UI.identification: [{ position: 80 }]
      flight_price,
      currency_code,
      lastchangedat,
      /* Associations */
      _Booksupplement : redirected to composition child ZAMAN_M_PROJ_BOOK_SUPP,
      _Carrier,
      _Connection,
      _Customer,
      _Travel         : redirected to parent ZAMAN_M_PROJ_TRAVEL
}
