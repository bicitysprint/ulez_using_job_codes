view: jdetail_ulez_view {
  sql_table_name: CC.JDETAIL_ULEZ_VIEW ;;

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: archive_job {
    type: number
    primary_key: yes
    sql: ${archive}||${job_number} ;;

  }


  dimension: client_charge_ul {
    type: number
    sql: ${TABLE}."CLIENT_CHARGE_UL" ;;
  }

  dimension: client_charge_ux {
    type: number
    sql: ${TABLE}."CLIENT_CHARGE_UX" ;;
  }

  dimension: client_charge_uy {
    type: number
    sql: ${TABLE}."CLIENT_CHARGE_UY" ;;
  }

  dimension: client_charge_uz {
    type: number
    sql: ${TABLE}."CLIENT_CHARGE_UZ" ;;
  }

  dimension: driver_charge_ul {
    type: number
    sql: ${TABLE}."DRIVER_CHARGE_UL" ;;
  }

  dimension: driver_charge_ux {
    type: number
    sql: ${TABLE}."DRIVER_CHARGE_UX" ;;
  }

  dimension: driver_charge_uy {
    type: number
    sql: ${TABLE}."DRIVER_CHARGE_UY" ;;
  }

  dimension: driver_charge_uz {
    type: number
    sql: ${TABLE}."DRIVER_CHARGE_UZ" ;;
  }

  dimension: job_number {
    type: number
    sql: ${TABLE}."JOB_NUMBER" ;;
  }

  dimension: rn {
    type: number
    sql: ${TABLE}."RN" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
