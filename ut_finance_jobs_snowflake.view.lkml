view: ut_finance_jobs_snowflake {
  sql_table_name: CC.UT_FINANCE_JOBS_SNOWFLAKE ;;

  dimension: account_ref {
    label: "invoice_number"
    type: string
    sql: ${TABLE}."ACCOUNT_REF" ;;
  }


  dimension: archive_job {
  label: "archive_job"
  description: "used as a primary key"
  type: number
  primary_key: yes
  sql: ${archive}||${job_no} ;;

  }

  dimension: account_service_centre {
    label: "account_sc"
    type: string
    sql: ${TABLE}."ACCOUNT_SERVICE_CENTRE" ;;
  }

  dimension: agent {
    label: "agent"
    type: string
    sql: ${TABLE}."AGENT" ;;
  }

  dimension: agent_cost {
    label: "agent_cost"
    type: number
    sql: ${TABLE}."AGENT_COST" ;;
  }

  dimension: agent_fuel_levy {
    label: "agent_fuel_levy"
    type: number
    sql: ${TABLE}."AGENT_FUEL_LEVY" ;;
  }

  dimension: archive {
    label: "archive"
    type: string
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension_group: booking_d {
    label: "booking_date"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}."BOOKING_DATE" ;;
  }

  dimension_group: booking_t {
    label: "booking_time"
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."BOOKING_TIME" ;;
  }

  dimension: cust_core_amount {
    label: "customer_core_amount"
    type: number
    sql: ${TABLE}."CUST_CORE_AMOUNT" ;;
  }

  dimension: cust_levy_amt {
    label: "customer_levy_amount"
    type: number
    sql: ${TABLE}."CUST_LEVY_AMT" ;;
  }

  dimension: customer_key {
    label: "customer_key"
    type: string
    sql: ${TABLE}."CUSTOMER_KEY" ;;
  }

  dimension: data_source {
    hidden: yes
    label: "data_source"
    type: number
    sql: ${TABLE}."DATA_SOURCE" ;;
  }

  dimension: discount {
    label: "discount"
    type: number
    sql: ${TABLE}."DISCOUNT" ;;
  }

  dimension: driv_core_amount {
    label: "driver_core_amount"
    type: number
    sql: ${TABLE}."DRIV_CORE_AMOUNT" ;;
  }

  dimension: driver_cost {
    label: "driver_cost"
    type: number
    sql: ${TABLE}."DRIVER_COST" ;;
  }

  dimension: driver_fuel_levy {
    label: "driver_fuel_levy"
    type: number
    sql: ${TABLE}."DRIVER_FUEL_LEVY" ;;
  }

  dimension: driver_key {
    label: "driver_key"
    type: string
    sql: ${TABLE}."DRIVER_KEY" ;;
  }

  dimension_group: invoice_d {
    label: "invoice_date"
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
    label: "job_no"
    type: string
    sql: ${TABLE}."JOB_NO" ;;
  }

  dimension: job_service_centre {
    label: "job_sc"
    type: string
    sql: ${TABLE}."JOB_SERVICE_CENTRE" ;;
  }

  dimension: revenue {
    label: "revenue"
    type: number
    sql: ${TABLE}."REVENUE" ;;
  }

  dimension: service_code {
    label: "service_code"
    type: string
    sql: ${TABLE}."SERVICE_CODE" ;;
  }

  dimension: service_group {
    label: "service_group"
    type: string
    sql: ${TABLE}."SERVICE_GROUP" ;;
  }

  dimension: service_option {
    label: "service_option"
    type: string
    sql: ${TABLE}."SERVICE_OPTION" ;;
  }

  dimension: split {
    label: "split"
    type: string
    sql: ${TABLE}."SPLIT" ;;
  }

  dimension: trunk_cost {
    label: "trunk_cost"
    type: number
    sql: ${TABLE}."TRUNK_COST" ;;
  }

  dimension: umbrella_service {
    label: "umbrella_service"
    type: string
    sql: ${TABLE}."UMBRELLA_SERVICE" ;;
  }

  dimension: vatrate {
    label: "vatrate"
    type: string
    sql: ${TABLE}."VATRATE" ;;
  }

  measure: count {
    description: "count of all jobs"
    type: count
    drill_fields: [drill_field*]
  }

  measure: sum_revenue {
    description: "does not include discount"
    type: sum
    sql: ${revenue} ;;
    drill_fields: [drill_field*]

  }

  measure: sum_discount {
    type: sum
    sql: ${discount} ;;
    drill_fields: [drill_field*]
  }

  measure: customer_charge {
    description: "revenue minus discount"
    type: sum
    sql: (${revenue}-${discount}) ;;
    drill_fields: [drill_field*]
  }

  measure: sum_driver_cost {
    type: sum
    sql: ${driver_cost} ;;
    drill_fields: [drill_field*]
  }

  measure: sum_agent_cost {
    type: sum
    sql: ${agent_cost} ;;
    drill_fields: [drill_field*]
  }

  measure: sum_trunk_cost {
    type: sum
    sql: ${trunk_cost} ;;
    drill_fields: [drill_field*]
  }

  measure: total_cost {
    description: "driver plus agent and trunk costs"
    type: sum
    sql: (${driver_cost}+${agent_cost}+${trunk_cost}) ;;
    drill_fields: [drill_field*]
  }

  measure: margin {
    type: sum
    sql: (${revenue}-${discount})-(${driver_cost}+${agent_cost}+${trunk_cost}) ;;
    drill_fields: [drill_field*]
  }

  measure: margin_pef {
    type: number
    sql: 100 * case when sum(${revenue}-${discount}) = 0.00 then 0.00 else sum((${revenue}-${discount})-(${driver_cost}+${agent_cost}+${trunk_cost}))/sum(${revenue}-${discount}) end;;
    value_format: "0.00\%"
    drill_fields: [drill_field*]
  }




set: drill_field {
  fields: [
    archive,
    job_no,
    customer_key,
    booking_d_date,
    booking_t_raw,
    account_service_centre,
    job_service_centre,
    driver_key,
    umbrella_service,
    service_code,
    service_group,
    customer_charge,
    total_cost,
    margin,
    margin_pef
  ]

}





}
