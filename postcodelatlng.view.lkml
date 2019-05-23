view: postcodelatlng {
  sql_table_name: CC.POSTCODELATLNG ;;


############################# DIMENSIONS #############################################

  dimension: latitude {
    label: "latitude"
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    label: "longitude"
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: postcode {
    label: "postcode"
    primary_key: yes
    type: string
    sql: ${TABLE}."POSTCODE" ;;
  }

############################# DIMENSIONS #############################################


############################# MEASURES ###############################################
  #measure: count {
  #  type: count
  #  drill_fields: []
  #}
}
