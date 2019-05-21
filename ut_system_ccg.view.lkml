view: ut_system_ccg {
  sql_table_name: CC.UT_SYSTEM_CCG ;;

  dimension: from {
    type: number
    sql: ${TABLE}."From" ;;
  }

  dimension: sales_code_f {
    type: string
    sql: ${TABLE}."SALES_CODE_F" ;;
  }

  dimension: system_ccg {
    type: string
    sql: ${TABLE}."system ccg" ;;
  }

  dimension: to {
    type: number
    sql: ${TABLE}."To" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
