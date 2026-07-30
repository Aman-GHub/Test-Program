@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Booking Suppliment'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZAMAN_M_PROJ_BOOK_SUPP
  as projection on ZAMAN_M_BOOK_SUPP
{
      @UI.facet: [
            { id:'BookSupplement',
              purpose:#STANDARD,
              type:#IDENTIFICATION_REFERENCE,
              label:'Booking Supplement',
              position: 10 }
              ]
      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{ position: 10 }]
  key travel_id,
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
  key booking_id,
      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position: 30 }]
  key booking_supplement_id,
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      supplement_id,
      @Semantics.amount.currencyCode: 'currency_code'
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 50 }]
      price,
      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position: 60 }]
      currency_code,
      last_changed_at,
      /* Associations */
      _Booking : redirected to parent ZAMAN_M_PROJ_BOOKING,
      _Product,
      _SupplementText,
      _Travel
}
