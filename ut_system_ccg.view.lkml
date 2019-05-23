view: ut_system_ccg {
  sql_table_name: CC.UT_SYSTEM_CCG ;;

######################### DIMENSIONS ###############################

  dimension: from {
    label: "from"
    type: number
    sql: ${TABLE}."From" ;;
  }

  dimension: sales_code_f {
    label: "sales_code_f"
    type: string
    sql: ${TABLE}."SALES_CODE_F" ;;
  }

  dimension: system_ccg {
    label: "CCG"
    type: string
    sql: ${TABLE}."system ccg" ;;
  }

  dimension: to {
    label: "to"
    type: number
    sql: ${TABLE}."To" ;;
  }

######################### DIMENSIONS ###############################

}
