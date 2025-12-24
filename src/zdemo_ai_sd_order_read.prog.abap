*&---------------------------------------------------------------------*
*& Report ZDEMO_AI_SD_ORDER_READ
*&---------------------------------------------------------------------*
*&IMPORTANT:
* This program and its related objects were deliberately created
* as part of an AI demonstration project for S/4HANA conversion.
* Any changes, deletions, or transports are strictly not allowed.
*&---------------------------------------------------------------------*
REPORT ZDEMO_AI_SD_ORDER_READ.


DATA: lt_vbak TYPE TABLE OF vbak,
      lt_vbap TYPE TABLE OF vbap WITH HEADER LINE,
      ls_vbak TYPE vbak.

SELECT * FROM vbak INTO TABLE lt_vbak
  WHERE auart = 'OR'.

LOOP AT lt_vbak INTO ls_vbak.
  SELECT * FROM vbap INTO TABLE lt_vbap
    WHERE vbeln = ls_vbak-vbeln.

  LOOP AT lt_vbap.
    WRITE: / ls_vbak-vbeln, lt_vbap-posnr.
  ENDLOOP.
ENDLOOP.
