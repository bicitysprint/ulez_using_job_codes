view: salecode {
  sql_table_name: CC.SALECODE ;;

  dimension: address {
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  dimension: amt_1 {
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: controller_fax {
    type: string
    sql: ${TABLE}."CONTROLLER_FAX" ;;
  }

  dimension: controller_offic {
    type: string
    sql: ${TABLE}."CONTROLLER_OFFIC" ;;
  }

  dimension: controller_title {
    type: string
    sql: ${TABLE}."CONTROLLER_TITLE" ;;
  }

  dimension: data_source {
    type: number
    sql: ${TABLE}."DATA_SOURCE" ;;
  }

  dimension: disp_deliver_by {
    type: string
    sql: ${TABLE}."DISP_DELIVER_BY" ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}."DIVISION" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: flag_1 {
    type: string
    sql: ${TABLE}."FLAG_1" ;;
  }

  dimension: flag_2 {
    type: string
    sql: ${TABLE}."FLAG_2" ;;
  }

  dimension: group_a_flag {
    type: string
    sql: ${TABLE}."GROUP_A_FLAG" ;;
  }

  dimension: group_b_flag {
    type: string
    sql: ${TABLE}."GROUP_B_FLAG" ;;
  }

  dimension: group_c_flag {
    type: string
    sql: ${TABLE}."GROUP_C_FLAG" ;;
  }

  dimension: group_d_flag {
    type: string
    sql: ${TABLE}."GROUP_D_FLAG" ;;
  }

  dimension: group_e_flag {
    type: string
    sql: ${TABLE}."GROUP_E_FLAG" ;;
  }

  dimension: group_f_flag {
    type: string
    sql: ${TABLE}."GROUP_F_FLAG" ;;
  }

  dimension: group_g_flag {
    type: string
    sql: ${TABLE}."GROUP_G_FLAG" ;;
  }

  dimension: group_h_flag {
    type: string
    sql: ${TABLE}."GROUP_H_FLAG" ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}."MOBILE" ;;
  }

  dimension: num_1 {
    type: number
    sql: ${TABLE}."NUM_1" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: sales_code {
    type: string
    sql: ${TABLE}."SALES_CODE" ;;
  }

  dimension: sales_code_desc {
    type: string
    sql: ${TABLE}."SALES_CODE_DESC" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
