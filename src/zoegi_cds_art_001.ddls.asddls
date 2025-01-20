//@AbapCatalog.sqlViewName: 'ZOEGI_V_ART001'
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Art articles view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZOEGI_CDS_ART_001
  as select from zoegi_tab_art
{
  key id_art as IdArt,
      descr  as Descr,
      desc2  as Desc2,
      color  as Color,
      pieces as Pieces,
      stock  as Stock,
      url    as URL,
      // 0 neutral grey
      // 1 negative red
      // 2 critical yellow
      // 3 positive green
      case
      when stock = 0 then 0
      when stock between 1 and 10 then 1
      when stock between 11 and 99 then 2
      when stock >= 100 then 3
      else 0
      end    as status

}
