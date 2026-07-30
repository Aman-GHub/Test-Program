@AbapCatalog.sqlViewName: 'ZAMAN_M_TRAV_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel CDS View (Managed Scenario)'
@Metadata.ignorePropagatedAnnotations: true

define root view ZAMAN_M_TRAVEL
  as select from /dmo/travel as Travel
  composition [0..*] of ZAMAN_M_BOOKING as _Booking
  association [1] to /DMO/I_Agency      as _Agency   on $projection.agency_id   = _Agency.AgencyID
  association [1] to /dmo/customer      as _Customer on $projection.customer_id = _Customer.customer_id
{
  key travel_id,
      agency_id,
      customer_id,
      begin_date,
      end_date,
      booking_fee,
      total_price,
      currency_code,
      description,
      status,
      @Semantics.user.createdBy: true
      createdby,
      @Semantics.systemDateTime.createdAt: true
      createdat,
      @Semantics.user.lastChangedBy: true
      lastchangedby,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat,
      _Agency,
      _Customer,
      _Booking
}
