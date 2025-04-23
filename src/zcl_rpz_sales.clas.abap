CLASS zcl_rpz_sales DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA: go_instance TYPE REF TO zcl_rpz_sales,
                gt_sales    TYPE TABLE OF ztrpz_sales_un.

    CLASS-METHODS: get_instance RETURNING VALUE(ro_instance) TYPE REF TO zcl_rpz_sales.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rpz_sales IMPLEMENTATION.

  METHOD get_instance.

    go_instance = ro_instance = COND #(
        WHEN go_instance IS BOUND THEN go_instance
        ELSE NEW #(  )
     ).

  ENDMETHOD.

ENDCLASS.
