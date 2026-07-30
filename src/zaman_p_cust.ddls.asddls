@AbapCatalog.sqlViewName: 'ZAMAN_CUST_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Customer details'
@Metadata.ignorePropagatedAnnotations: true
define view ZAMAN_P_CUST as select from /dmo/customer association [1] to I_Country as _Country
on $projection.CountryCode = _Country.Country
{
    key customer_id as CustomerId,
    @Semantics.text: true
    first_name as FirstName,
    last_name as LastName,
    title as Title,
    street as Street,
    postal_code as PostalCode,
    city as City,
    country_code as CountryCode,
    phone_number as PhoneNumber,
    email_address as EmailAddress,
    _Country
}
