CLASS zoegi_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zoegi_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: it_art TYPE STANDARD TABLE OF zoegi_tab_art.

    it_art = VALUE #(
    ( client = sy-mandt id_art = 1 descr = 'Mini colores' desc2 = 'Un mini estuche, con mini colores'
    color = 'varios' pieces = 12 stock = 10
    url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-planorama-verde-claro-001_600x.jpg?v=1699493660')
    ( client = sy-mandt id_art = 2 descr = 'MONTHLY PLANNER' desc2 = 'deal para planificar tus metas y proyectos'
    color = 'negro' pieces = 1 stock = 100
    url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-3_204e518f-b0a5-4ed1-a5c3-676dd8e98a6f_600x.jpg?v=1588283579')
    ( client = sy-mandt id_art = 3 descr = 'Marcadores' desc2 = 'ZEBRA MIDLINER COLORES PASTELES'
    color = 'varios' pieces = 5 stock = 20
    url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-kokuyo-two-way-mark-plus-marker-01_600x.jpg?v=1626225522')
    ( client = sy-mandt id_art = 4 descr = 'Lapiz' desc2 = 'TOMBOW 2558 #HB'
    color = 'negro' pieces = 1 stock = 1
    url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-staedtler-1_600x.jpg?v=1588192922')
    ).

    INSERT zoegi_tab_art FROM TABLE @it_art.
    IF sy-subrc EQ 0.
      out->write( 'Insert succesful' ).
    ELSE.
      out->write( 'Insert wrong' ).
    ENDIF.


  ENDMETHOD.
ENDCLASS.
