@AbapCatalog.sqlViewName: 'ZAMAN_P_GP_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Kpop Groups'
@Metadata.ignorePropagatedAnnotations: true
define view ZAMAN_P_GROUPS as select from zkpop_groups
{
    key group_id as GroupId,
    key group_name as GroupName,
    debut_date as DebutDate,
    ent_comp as EntComp,
    member_count,
    fandom_name,
    gender,
    net_worth as NetWorth,
    currency
}
