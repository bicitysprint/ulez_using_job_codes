view: salecode {
  sql_table_name: CC.SALECODE ;;


################################## DIMENSIONS #############################################
  dimension: address {
    hidden: yes
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  dimension: amt_1 {
    hidden: yes
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: archive {
    label: "archive"
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: controller_fax {
    hidden: yes
    type: string
    sql: ${TABLE}."CONTROLLER_FAX" ;;
  }

  dimension: controller_offic {
    hidden: yes
    type: string
    sql: ${TABLE}."CONTROLLER_OFFIC" ;;
  }

  dimension: controller_title {
    hidden: yes
    type: string
    sql: ${TABLE}."CONTROLLER_TITLE" ;;
  }

  dimension: data_source {
    hidden: yes
    type: number
    sql: ${TABLE}."DATA_SOURCE" ;;
  }

  dimension: disp_deliver_by {
    hidden: yes
    type: string
    sql: ${TABLE}."DISP_DELIVER_BY" ;;
  }

  dimension: division {
    hidden: yes
    type: string
    sql: ${TABLE}."DIVISION" ;;
  }

  dimension: email {
    hidden: yes
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: flag_1 {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAG_1" ;;
  }

  dimension: flag_2 {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAG_2" ;;
  }

  dimension: group_a_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."GROUP_A_FLAG" ;;
  }

  dimension: group_b_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."GROUP_B_FLAG" ;;
  }

  dimension: group_c_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."GROUP_C_FLAG" ;;
  }

  dimension: group_d_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."GROUP_D_FLAG" ;;
  }

  dimension: group_e_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."GROUP_E_FLAG" ;;
  }

  dimension: group_f_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."GROUP_F_FLAG" ;;
  }

  dimension: group_g_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."GROUP_G_FLAG" ;;
  }

  dimension: group_h_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."GROUP_H_FLAG" ;;
  }

  dimension: mobile {
    hidden: yes
    type: string
    sql: ${TABLE}."MOBILE" ;;
  }

  dimension: num_1 {
    hidden: yes
    type: number
    sql: ${TABLE}."NUM_1" ;;
  }

  dimension: phone {
    hidden: yes
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: sales_code {
    label: "sales_code"
    type: string
    sql: ${TABLE}."SALES_CODE" ;;
  }

  dimension: sales_code_desc {
    label: "sales_code_desc"
    type: string
    sql: ${TABLE}."SALES_CODE_DESC" ;;
  }
################################## DIMENSIONS #############################################

################################## MEASURES ###############################################
  #measure: count {
    #type: count
    #drill_fields: []
  #}
}
