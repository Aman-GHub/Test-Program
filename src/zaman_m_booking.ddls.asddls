@AbapCatalog.sqlViewName: 'ZAMAN_M_BOOK_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking CDS View (Managed Scenario)'
@Metadata.ignorePropagatedAnnotations: true
define view ZAMAN_M_BOOKING
  as select from /dmo/booking as Booking
  association     to parent ZAMAN_M_TRAVEL as _Travel     on  $projection.travel_id = _Travel.travel_id
  composition [0..*] of ZAMAN_M_BOOK_SUPP  as _Booksupplement
  association [1] to /DMO/I_Customer       as _Customer   on  $projection.customer_id = _Customer.CustomerID
  association [1] to /DMO/I_Carrier        as _Carrier    on  $projection.carrier_id = _Carrier.AirlineID
  association [1] to /DMO/I_Connection     as _Connection on  $projection.carrier_id    = _Connection.AirlineID
                                                          and $projection.connection_id = _Connection.ConnectionID
{
  key travel_id,
  key booking_id,
      booking_date,
      customer_id,
      carrier_id,
      connection_id,
      flight_date,
      flight_price,
      currency_code,
      _Travel.lastchangedat,
      _Customer,
      _Carrier,
      _Connection,
      _Travel,
      _Booksupplement
}
