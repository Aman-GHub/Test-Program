@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Travel'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: { typeName: 'Travel', typeNamePlural: 'Travels' }
define root view entity ZAMAN_M_PROJ_TRAVEL
  as projection on ZAMAN_M_TRAVEL
{
      @UI.facet: [
      { id:'Travel',
        purpose:#STANDARD,
        type:#IDENTIFICATION_REFERENCE,
        label:'Travel',
        position: 10 },

      { id: 'Booking',
        purpose: #STANDARD,
        type: #LINEITEM_REFERENCE,
        label: 'Booking',
        position: 20,
        targetElement: '_Booking'}
      ]

      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{ position: 10 }]
  key travel_id,
      @UI.selectionField: [{ position: 10 }]
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
      @Consumption.valueHelpDefinition: [{entity:{name: '/dmo/i_Agency', element: 'AgencyID'}}]
      @ObjectModel.text.element: [ 'AgencyName' ]
      agency_id as AgencyID,
      _Agency.Name as AgencyName,
      @UI.selectionField: [{ position: 20 }]
      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position: 30 }]
      @Consumption.valueHelpDefinition: [{entity:{name: '/dmo/i_Customer', element: 'CustomerID'}}]
      @ObjectModel.text.element: [ 'CustomerName' ]
      customer_id as CustomerID,
      _Customer.last_name as CustomerName,
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      begin_date,
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 50 }]
      end_date,
      @Semantics.amount.currencyCode: 'currency_code'
      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position: 60 }]
      booking_fee,
      @Semantics.amount.currencyCode: 'currency_code'
      @UI.lineItem: [{ position: 70 }]
      @UI.identification: [{ position: 70 }]
      total_price,
      @UI.lineItem: [{ position: 80 }]
      @UI.identification: [{ position: 80 }]
      currency_code,
      @UI.lineItem: [{ position: 90 }]
      @UI.identification: [{ position: 90 }]
      description,
      @UI.lineItem: [{ position: 100 }]
      @UI.identification: [{ position: 100 }]
      status,
      createdby,
      createdat,
      lastchangedby,
      lastchangedat,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child ZAMAN_M_PROJ_BOOKING,
      _Customer
}
