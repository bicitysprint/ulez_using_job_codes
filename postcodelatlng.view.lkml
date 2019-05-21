view: postcodelatlng {
  sql_table_name: CC.POSTCODELATLNG ;;

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: postcode {
    primary_key: yes
    type: string
    sql: ${TABLE}."POSTCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
