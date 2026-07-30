@AbapCatalog.sqlViewName: 'ZAMAN_P_COMP_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Kpop Companies'
@Metadata.ignorePropagatedAnnotations: true
define view ZAMAN_P_COMP as select from zkpop_comp
{
    key comp_id as CompId,
    key comp_name as CompName,
    ceo_name as CeoName,
    city as City,
    country as Country
}
