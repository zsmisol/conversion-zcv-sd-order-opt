class ZCL_DEMO_AI_SD_ORDER_SERVICE definition
  public
  final
  create public .

public section.
protected section.
private section.

  methods GET_ORDERS .
ENDCLASS.



CLASS ZCL_DEMO_AI_SD_ORDER_SERVICE IMPLEMENTATION.


  method GET_ORDERS.
*&IMPORTANT:
* This program and its related objects were deliberately created
* as part of an AI demonstration project for S/4HANA conversion.
* Any changes, deletions, or transports are strictly not allowed.
  DATA lt_vbak TYPE TABLE OF vbak.
    SELECT * FROM vbak INTO TABLE lt_vbak.
  endmethod.
ENDCLASS.
