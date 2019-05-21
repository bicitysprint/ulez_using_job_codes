view: ut_finance_jobs_snowflake {
  sql_table_name: CC.UT_FINANCE_JOBS_SNOWFLAKE ;;

  dimension: account_ref {
    type: string
    sql: ${TABLE}."ACCOUNT_REF" ;;
  }


dimension: archive_job {
  type: number
  primary_key: yes
  sql: ${archive}||${job_no} ;;

}



  dimension: account_service_centre {
    type: string
    sql: ${TABLE}."ACCOUNT_SERVICE_CENTRE" ;;
  }

  dimension: agent {
    type: string
    sql: ${TABLE}."AGENT" ;;
  }

  dimension: agent_cost {
    type: number
    sql: ${TABLE}."AGENT_COST" ;;
  }

  dimension: agent_fuel_levy {
    type: number
    sql: ${TABLE}."AGENT_FUEL_LEVY" ;;
  }

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension_group: booking_d {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."BOOKING_DATE" ;;
  }

  dimension_group: booking_t {
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."BOOKING_TIME" ;;
  }

  dimension: cust_core_amount {
    type: number
    sql: ${TABLE}."CUST_CORE_AMOUNT" ;;
  }

  dimension: cust_levy_amt {
    type: number
    sql: ${TABLE}."CUST_LEVY_AMT" ;;
  }

  dimension: customer_key {
    type: string
    sql: ${TABLE}."CUSTOMER_KEY" ;;
  }

  dimension: data_source {
    type: number
    sql: ${TABLE}."DATA_SOURCE" ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}."DISCOUNT" ;;
  }

  dimension: driv_core_amount {
    type: number
    sql: ${TABLE}."DRIV_CORE_AMOUNT" ;;
  }

  dimension: driver_cost {
    type: number
    sql: ${TABLE}."DRIVER_COST" ;;
  }

  dimension: driver_fuel_levy {
    type: number
    sql: ${TABLE}."DRIVER_FUEL_LEVY" ;;
  }

  dimension: driver_key {
    type: string
    sql: ${TABLE}."DRIVER_KEY" ;;
  }

  dimension_group: invoice_d {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."INVOICE_DATE" ;;
  }

  dimension: job_no {
    type: number
    sql: ${TABLE}."JOB_NO" ;;
  }

  dimension: job_service_centre {
    type: string
    sql: ${TABLE}."JOB_SERVICE_CENTRE" ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}."REVENUE" ;;
  }

  dimension: service_code {
    type: string
    sql: ${TABLE}."SERVICE_CODE" ;;
  }

  dimension: service_group {
    type: string
    sql: ${TABLE}."SERVICE_GROUP" ;;
  }

  dimension: service_option {
    type: string
    sql: ${TABLE}."SERVICE_OPTION" ;;
  }

  dimension: split {
    type: string
    sql: ${TABLE}."SPLIT" ;;
  }

  dimension: trunk_cost {
    type: number
    sql: ${TABLE}."TRUNK_COST" ;;
  }

  dimension: umbrella_service {
    type: string
    sql: ${TABLE}."UMBRELLA_SERVICE" ;;
  }

  dimension: vatrate {
    type: string
    sql: ${TABLE}."VATRATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
