view: ifleet_applications {
  sql_table_name: CC.IFLEET_APPLICATIONS ;;

  dimension: actionid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."ACTIONID" ;;
  }

  dimension: actionname {
    hidden: yes
    type: string
    sql: ${TABLE}."ACTIONNAME" ;;
  }

  dimension: mob {
    hidden: yes
    type: string
    sql: ${TABLE}."MOB" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: postcode {
    hidden: yes
    type: string
    sql: ${TABLE}."POSTCODE" ;;
  }

  dimension_group: registered {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."REGISTERED_DATE" ;;
  }

  dimension: service_centre {
    hidden: yes
    type: string
    sql: ${TABLE}."SERVICE_CENTRE" ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}."STAGE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: telnum {
    hidden: yes
    type: string
    sql: ${TABLE}."TELNUM" ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}."USERID" ;;
  }

  dimension: vechtype {
    type: string
    sql: ${TABLE}."VECHTYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [actionname, name]
  }
}
