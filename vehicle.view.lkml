view: vehicle {
  sql_table_name: CC.VEHICLE ;;

  dimension_group: additional_gmdt {
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
    sql: ${TABLE}."ADDITIONAL_GMDT" ;;
  }

  dimension: amt_1 {
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: amt_2 {
    type: number
    sql: ${TABLE}."AMT_2" ;;
  }

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension_group: becoming_overdue {
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
    sql: ${TABLE}."BECOMING_OVERDUE" ;;
  }

  dimension: cancel_job_code {
    type: string
    sql: ${TABLE}."CANCEL_JOB_CODE" ;;
  }

  dimension: data_source {
    type: number
    sql: ${TABLE}."DATA_SOURCE" ;;
  }

  dimension: default_job_code {
    type: string
    sql: ${TABLE}."DEFAULT_JOB_CODE" ;;
  }

  dimension: flag_1 {
    type: string
    sql: ${TABLE}."FLAG_1" ;;
  }

  dimension: flag_2 {
    type: string
    sql: ${TABLE}."FLAG_2" ;;
  }

  dimension: flag_3 {
    type: string
    sql: ${TABLE}."FLAG_3" ;;
  }

  dimension: flag_4 {
    type: string
    sql: ${TABLE}."FLAG_4" ;;
  }

  dimension: float_1 {
    type: number
    sql: ${TABLE}."FLOAT_1" ;;
  }

  dimension: float_2 {
    type: number
    sql: ${TABLE}."FLOAT_2" ;;
  }

  dimension: follow_job_code {
    type: string
    sql: ${TABLE}."FOLLOW_JOB_CODE" ;;
  }

  dimension: gmdt_flag {
    type: string
    sql: ${TABLE}."GMDT_FLAG" ;;
  }

  dimension: in_zone_bias {
    type: number
    sql: ${TABLE}."IN_ZONE_BIAS" ;;
  }

  dimension_group: job_overdue {
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
    sql: ${TABLE}."JOB_OVERDUE" ;;
  }

  dimension: load_factor {
    type: number
    sql: ${TABLE}."LOAD_FACTOR" ;;
  }

  dimension: max_size {
    type: number
    sql: ${TABLE}."MAX_SIZE" ;;
  }

  dimension: max_weight {
    type: number
    sql: ${TABLE}."MAX_WEIGHT" ;;
  }

  dimension: num_1 {
    type: number
    sql: ${TABLE}."NUM_1" ;;
  }

  dimension: num_2 {
    type: number
    sql: ${TABLE}."NUM_2" ;;
  }

  dimension_group: odue_time_offset {
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
    sql: ${TABLE}."ODUE_TIME_OFFSET" ;;
  }

  dimension: out_zone_bias {
    type: number
    sql: ${TABLE}."OUT_ZONE_BIAS" ;;
  }

  dimension_group: past_overdue {
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
    sql: ${TABLE}."PAST_OVERDUE" ;;
  }

  dimension_group: pickup {
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
    sql: ${TABLE}."PICKUP_TIME" ;;
  }

  dimension_group: prebook_notice {
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
    sql: ${TABLE}."PREBOOK_NOTICE" ;;
  }

  dimension_group: prebook {
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
    sql: ${TABLE}."PREBOOK_TIME" ;;
  }

  dimension: pref_zone {
    type: number
    sql: ${TABLE}."PREF_ZONE" ;;
  }

  dimension: rel_speed {
    type: number
    sql: ${TABLE}."REL_SPEED" ;;
  }

  dimension: run_cost {
    type: number
    sql: ${TABLE}."RUN_COST" ;;
  }

  dimension: service_desc {
    type: string
    sql: ${TABLE}."SERVICE_DESC" ;;
  }

  dimension: size_rating {
    type: number
    sql: ${TABLE}."SIZE_RATING" ;;
  }

  dimension: tare_weight {
    type: number
    sql: ${TABLE}."TARE_WEIGHT" ;;
  }

  dimension: unit_size {
    type: number
    sql: ${TABLE}."UNIT_SIZE" ;;
  }

  dimension: unit_weight {
    type: number
    sql: ${TABLE}."UNIT_WEIGHT" ;;
  }

  dimension: vehicle_code {
    type: string
    sql: ${TABLE}."VEHICLE_CODE" ;;
  }

  dimension: vehicle_desc {
    type: string
    sql: ${TABLE}."VEHICLE_DESC" ;;
  }

  dimension: vehicle_group {
    type: string
    sql: ${TABLE}."VEHICLE_GROUP" ;;
  }

  dimension: waiting_job_code {
    type: string
    sql: ${TABLE}."WAITING_JOB_CODE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
