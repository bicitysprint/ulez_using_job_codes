view: ut_ops_jobs_snowflake {
  sql_table_name: CC.UT_OPS_JOBS_SNOWFLAKE ;;

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: archive_job {
    type: number
    primary_key: yes
    sql: ${archive}||${job_no} ;;

  }

  dimension: book_caller {
    type: string
    sql: ${TABLE}."BOOK_CALLER" ;;
  }

  dimension_group: booking_d {
    type: time
    timeframes: [
      raw,
      time,
      week_of_year,
      date,
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

  dimension: cancelled_on_arrival_money {
    type: number
    sql: ${TABLE}."Cancelled_On_Arrival_£" ;;
  }

  dimension: cancelled_on_arrival_value {
    type: number
    sql: ${TABLE}."Cancelled_On_Arrival_#" ;;
  }

  dimension: congestion_charge_money {
    type: number
    sql: ${TABLE}."Congestion_Charge_£" ;;
  }

  dimension: congestion_charge_value {
    type: number
    sql: ${TABLE}."Congestion_Charge_#" ;;
  }

  dimension: courier_milage {
    type: number
    sql: ${TABLE}."COURIER_MILAGE" ;;
  }

  dimension_group: dbd {
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
    sql: ${TABLE}."DBD" ;;
  }

  dimension_group: dbt {
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
    sql: ${TABLE}."DBT" ;;
  }

  dimension_group: deliver_d {
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
    sql: ${TABLE}."DELIVER_DATE" ;;
  }

  dimension_group: deliver_t {
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."DELIVER_TIME" ;;
  }

  dimension: delivery_sla {
    type: number
    sql: ${TABLE}."DELIVERY_SLA" ;;
  }

  dimension: department_name {
    type: string
    sql: ${TABLE}."DEPARTMENT_NAME" ;;
  }

  dimension: driver_key {
    type: string
    sql: ${TABLE}."DRIVER_KEY" ;;
  }

  dimension: driver_km_amount {
    type: number
    sql: ${TABLE}."DRIVER_KM_AMOUNT" ;;
  }

  dimension: drop_name {
    type: string
    sql: ${TABLE}."DROP_NAME" ;;
  }

  dimension: followons {
    type: string
    sql: ${TABLE}."FOLLOWONS" ;;
  }

  dimension: from_address_1 {
    type: string
    sql: ${TABLE}."FROM_ADDRESS_1" ;;
  }

  dimension: from_address_2 {
    type: string
    sql: ${TABLE}."FROM_ADDRESS_2" ;;
  }

  dimension: from_comment {
    type: string
    sql: ${TABLE}."FROM_COMMENT" ;;
  }

  dimension: from_contact {
    type: string
    sql: ${TABLE}."FROM_CONTACT" ;;
  }

  dimension: from_suburb_code {
    type: string
    sql: ${TABLE}."FROM_SUBURB_CODE" ;;
  }

  dimension: hand_priced_money {
    type: number
    sql: ${TABLE}."Hand_Priced_£" ;;
  }

  dimension: hand_priced_value {
    type: number
    sql: ${TABLE}."Hand_Priced_#" ;;
  }

  dimension: items_weight {
    type: number
    sql: ${TABLE}."ITEMS_WEIGHT" ;;
  }

  dimension: job_no {
    type: number
    sql: ${TABLE}."JOB_NO" ;;
  }

  dimension: job_status {
    type: string
    sql: ${TABLE}."JOB_STATUS" ;;
  }

  dimension: km_amount {
    type: number
    sql: ${TABLE}."KM_AMOUNT" ;;
  }

  dimension: loading_time_money {
    type: number
    sql: ${TABLE}."Loading_Time_£" ;;
  }

  dimension: loading_time_value {
    type: number
    sql: ${TABLE}."Loading_Time_#" ;;
  }

  dimension: m_message {
    type: string
    sql: ${TABLE}."M_MESSAGE" ;;
  }

  dimension: mileage_money {
    type: number
    sql: ${TABLE}."Mileage_£" ;;
  }

  dimension: mileage_value {
    type: number
    sql: ${TABLE}."Mileage_#" ;;
  }

  dimension: no_of_items {
    type: number
    sql: ${TABLE}."NO_OF_ITEMS" ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}."OPERATOR" ;;
  }

  dimension: perm_flag {
    type: string
    sql: ${TABLE}."PERM_FLAG" ;;
  }

  dimension_group: pickup_d {
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
    sql: ${TABLE}."PICKUP_DATE" ;;
  }

  dimension: pickup_name {
    type: string
    sql: ${TABLE}."PICKUP_NAME" ;;
  }

  dimension: pickup_sla {
    type: number
    sql: ${TABLE}."PICKUP_SLA" ;;
  }

  dimension_group: pickup_t {
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."PICKUP_TIME" ;;
  }

  dimension: proof_delivery {
    type: string
    sql: ${TABLE}."PROOF_DELIVERY" ;;
  }

  dimension: radio_frequency {
    type: string
    sql: ${TABLE}."RADIO_FREQUENCY" ;;
  }

  dimension: reference_2 {
    type: string
    sql: ${TABLE}."REFERENCE_2" ;;
  }

  dimension: reference_3 {
    type: string
    sql: ${TABLE}."REFERENCE_3" ;;
  }

  dimension: reference_no {
    type: string
    sql: ${TABLE}."REFERENCE_NO" ;;
  }

  dimension: saturday_delivery_money {
    type: number
    sql: ${TABLE}."Saturday_Delivery_£" ;;
  }

  dimension: saturday_delivery_value {
    type: number
    sql: ${TABLE}."Saturday_Delivery_#" ;;
  }

  dimension: service_code {
    type: string
    sql: ${TABLE}."SERVICE_CODE" ;;
  }

  dimension: stops {
    type: number
    sql: ${TABLE}."STOPS" ;;
  }

  dimension_group: system_d {
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
    sql: ${TABLE}."SYSTEM_DATE" ;;
  }

  dimension_group: system_dtime {
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
    sql: ${TABLE}."SYSTEM_DTIME" ;;
  }

  dimension: to_address_1 {
    type: string
    sql: ${TABLE}."TO_ADDRESS_1" ;;
  }

  dimension: to_address_2 {
    type: string
    sql: ${TABLE}."TO_ADDRESS_2" ;;
  }

  dimension: to_comment {
    type: string
    sql: ${TABLE}."TO_COMMENT" ;;
  }

  dimension: to_contact {
    type: string
    sql: ${TABLE}."TO_CONTACT" ;;
  }

  dimension: to_suburb_code {
    type: string
    sql: ${TABLE}."TO_SUBURB_CODE" ;;
  }

  dimension: toll_money {
    type: number
    sql: ${TABLE}."Toll_£" ;;
  }

  dimension: toll_value {
    type: number
    sql: ${TABLE}."Toll_#" ;;
  }

  dimension: total_amount_money {
    type: number
    sql: ${TABLE}."Total_Amount_£" ;;
  }

  dimension: total_amount_value {
    type: number
    sql: ${TABLE}."Total_Amount_#" ;;
  }

  dimension: total_kms {
    type: number
    sql: ${TABLE}."TOTAL_KMS" ;;
  }

  dimension: u_message {
    type: string
    sql: ${TABLE}."U_MESSAGE" ;;
  }

  dimension: ukoint_flag {
    type: string
    sql: ${TABLE}."UKOINT_FLAG" ;;
  }

  dimension: unit_weight {
    type: number
    sql: ${TABLE}."UNIT_WEIGHT" ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}."VEHICLE_TYPE" ;;
  }

  dimension: wr_money {
    type: number
    sql: ${TABLE}."WR_£" ;;
  }

  dimension: wr_value {
    type: number
    sql: ${TABLE}."WR_#" ;;
  }

  dimension: wt_money {
    type: number
    sql: ${TABLE}."WT_£" ;;
  }

  dimension: wt_value {
    type: number
    sql: ${TABLE}."WT_#" ;;
  }

  measure: count {
    type: count
    drill_fields: [pickup_name, department_name, drop_name]
  }
}
