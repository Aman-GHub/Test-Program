@AbapCatalog.sqlViewName: 'ZAMAN_P_IDOL_SQL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view for Kpop Idols'
@Metadata.ignorePropagatedAnnotations: true
define view ZAMAN_P_IDOLS as select from zkpop_idols association[0..*] to zkpop_groups as _kpopgrp on
$projection.idol_group = _kpopgrp.group_name

{
    key idol_id,
    idol_name,
    idol_group,
    idol_dob,
    idol_pos,
    _kpopgrp
}
