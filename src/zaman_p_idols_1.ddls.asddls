@AbapCatalog.sqlViewName: 'ZAMAN_KIDOL_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view for Kpop Idols 1'
@Metadata.ignorePropagatedAnnotations: true
define view ZAMAN_P_IDOLS_1 as select from zkpop_idols association[0..*] to zkpop_groups as _kpopgroups on
$projection.idol_group = _kpopgroups.group_name

{
    key idol_id,
    idol_name,
    idol_group,
    idol_dob,
    idol_pos,
    _kpopgroups    
}
