@AbapCatalog.sqlViewName: 'ZAMAN_AGENCY_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Agency details'
@Metadata.ignorePropagatedAnnotations: true
define view ZAMAN_P_AGENCY as select from /dmo/agency association [1] to I_Country as _Country
on $projection.CountryCode = _Country.Country
{
    key agency_id as AgencyId,
    @Semantics.text: true
    name as Name,
    street as Street,
    postal_code as PostalCode,
    city as City,
    country_code as CountryCode,
    phone_number as PhoneNumber,
    email_address as EmailAddress,
    web_address as WebAddress,
    _Country
}
