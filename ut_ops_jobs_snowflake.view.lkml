view: ut_ops_jobs_snowflake {
  sql_table_name: CC.UT_OPS_JOBS_SNOWFLAKE ;;


############################# DIMENSIONS ################################################

  dimension: archive {
    label: "archive"
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: archive_job {
    label: "archive_job"
    type: number
    primary_key: yes
    sql: ${archive}||${job_no} ;;

  }

  dimension: book_caller {
    label: "book_caller"
    type: string
    sql: ${TABLE}."BOOK_CALLER" ;;
  }

  dimension_group: booking_d {
    label: "booking_date"
    type: time
    timeframes: [
      raw,
      time,
      week_of_year,
      date,
      week,
      month_name,
      month_num,
      month,
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

  dimension: cancelled_on_arrival_money {
    hidden: yes
    label: "COA_£"
    type: number
    sql: ${TABLE}."Cancelled_On_Arrival_£" ;;
  }

  dimension: cancelled_on_arrival_value {
    hidden: yes
    label: "COA_#"
    type: number
    sql: ${TABLE}."Cancelled_On_Arrival_#" ;;
  }

  dimension: congestion_charge_money {
    hidden: yes
    label: "congestion_charge_£"
    type: number
    sql: ${TABLE}."Congestion_Charge_£" ;;
  }

  dimension: congestion_charge_value {
    hidden: yes
    label: "congestion_charge_#"
    type: number
    sql: ${TABLE}."Congestion_Charge_#" ;;
  }

  dimension: courier_milage {
    label: "courier_mileage"
    type: number
    sql: ${TABLE}."COURIER_MILAGE" ;;
  }

  dimension_group: dbd {
    label: "delivery by date"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month_num,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DBD" ;;
  }

  dimension_group: dbt {
    label: "delivery by time"
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."DBT" ;;
  }

  dimension_group: deliver_d {
    label: "deliver_date"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      week,
      month_name,
      month_num,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DELIVER_DATE" ;;
  }

  dimension_group: deliver_t {
    label: "deliver_time"
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."DELIVER_TIME" ;;
  }

  dimension: delivery_sla {
    hidden: yes
    type: number
    sql: ${TABLE}."DELIVERY_SLA" ;;
  }

  dimension: department_name {
    label: "department_name"
    type: string
    sql: ${TABLE}."DEPARTMENT_NAME" ;;
  }

  dimension: driver_key {
    label: "driver_key"
    type: string
    sql: ${TABLE}."DRIVER_KEY" ;;
  }

  dimension: driver_km_amount {
    label: "driver_km_amount"
    type: number
    sql: ${TABLE}."DRIVER_KM_AMOUNT" ;;
  }

  dimension: drop_name {
    label: "drop_name"
    type: string
    sql: ${TABLE}."DROP_NAME" ;;
  }

  dimension: followons {
    label: "journey"
    type: string
    sql: ${TABLE}."FOLLOWONS" ;;
  }

  dimension: followon {
    label: "followons"
    type: string
    sql: right (substring(followons,(length(concat(from_suburb_code,'->'))+length(concat(to_suburb_code,'->'))),length(followons)), length (substring(followons,(length(concat(from_suburb_code,'->'))+length(concat(to_suburb_code,'->'))),length(followons)))-1) ;;

  }


  dimension: from_address_1 {
    label: "from_address_1"
    type: string
    sql: ${TABLE}."FROM_ADDRESS_1" ;;
  }

  dimension: from_address_2 {
    label: "from_address_2"
    type: string
    sql: ${TABLE}."FROM_ADDRESS_2" ;;
  }

  dimension: from_comment {
    label: "from_comment"
    type: string
    sql: ${TABLE}."FROM_COMMENT" ;;
  }

  dimension: from_contact {
    label: "from_contact"
    type: string
    sql: ${TABLE}."FROM_CONTACT" ;;
  }

  dimension: from_suburb_code {
    label: "from_postcode"
    type: string
    sql: ${TABLE}."FROM_SUBURB_CODE" ;;
  }

  dimension: hand_priced_money {
    label: "hand_priced_£"
    hidden: yes
    type: number
    sql: ${TABLE}."Hand_Priced_£" ;;
  }

  dimension: hand_priced_value {
    label: "hand_priced_#"
    hidden: yes
    type: number
    sql: ${TABLE}."Hand_Priced_#" ;;
  }

  dimension: items_weight {
    label: "items_weight"
    type: number
    sql: ${TABLE}."ITEMS_WEIGHT" ;;
  }

  dimension: job_no {
    label: "job_no"
    type: number
    value_format_name: id
    sql: ${TABLE}."JOB_NO" ;;
  }

  dimension: job_status {
    label: "job_status"
    type: string
    sql: ${TABLE}."JOB_STATUS" ;;
  }

  dimension: km_amount {
    label: "km_amount"
    type: number
    sql: ${TABLE}."KM_AMOUNT" ;;
  }

  dimension: loading_time_money {
    hidden: yes
    type: number
    sql: ${TABLE}."Loading_Time_£" ;;
  }

  dimension: loading_time_value {
    hidden: yes
    type: number
    sql: ${TABLE}."Loading_Time_#" ;;
  }

  dimension: m_message {
    label: "m_message"
    type: string
    sql: ${TABLE}."M_MESSAGE" ;;
  }

  dimension: mileage_money {
    hidden: yes
    type: number
    sql: ${TABLE}."Mileage_£" ;;
  }

  dimension: mileage_value {
    hidden: yes
    type: number
    sql: ${TABLE}."Mileage_#" ;;
  }

  dimension: no_of_items {
    label: "no_of_items"
    type: number
    sql: ${TABLE}."NO_OF_ITEMS" ;;
  }

  dimension: operator {
    label: "operator"
    type: string
    sql: ${TABLE}."OPERATOR" ;;
  }

  dimension: perm_flag {
    label: "perm_flag"
    type: string
    sql: ${TABLE}."PERM_FLAG" ;;
  }

  dimension_group: pickup_d {
    label: "pickup_date"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      week,
      month_name,
      month_num,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."PICKUP_DATE" ;;
  }

  dimension: pickup_name {
    label: "pickup_name"
    type: string
    sql: ${TABLE}."PICKUP_NAME" ;;
  }

  dimension: pickup_sla {
    hidden: yes
    type: number
    sql: ${TABLE}."PICKUP_SLA" ;;
  }

  dimension_group: pickup_t {
    label: "pickup_time"
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."PICKUP_TIME" ;;
  }

  dimension: proof_delivery {
    label: "POD"
    type: string
    sql: ${TABLE}."PROOF_DELIVERY" ;;
  }

  dimension: radio_frequency {
    label: "radio_frequency"
    type: string
    sql: ${TABLE}."RADIO_FREQUENCY" ;;
  }

  dimension: reference_2 {
    label: "reference_2"
    type: string
    sql: ${TABLE}."REFERENCE_2" ;;
  }

  dimension: reference_3 {
    label: "reference_3"
    type: string
    sql: ${TABLE}."REFERENCE_3" ;;
  }

  dimension: reference_no {
    label: "reference_1"
    type: string
    sql: ${TABLE}."REFERENCE_NO" ;;
  }

  dimension: saturday_delivery_money {
    hidden: yes
    type: number
    sql: ${TABLE}."Saturday_Delivery_£" ;;
  }

  dimension: saturday_delivery_value {
    hidden: yes
    type: number
    sql: ${TABLE}."Saturday_Delivery_#" ;;
  }

  dimension: service_code {
    label: "service_code"
    type: string
    sql: ${TABLE}."SERVICE_CODE" ;;
  }

  dimension: stops {
    label: "stops"
    type: number
    sql: ${TABLE}."STOPS" ;;
  }

  dimension_group: system_d {
    label: "system_date"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week_of_year,
      month_name,
      month_num,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."SYSTEM_DATE" ;;
  }

  dimension_group: system_dtime {
    label: "system_time"
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."SYSTEM_DTIME" ;;
  }

  dimension: to_address_1 {
    label: "to_address_1"
    type: string
    sql: ${TABLE}."TO_ADDRESS_1" ;;
  }

  dimension: to_address_2 {
    label: "to_address_2"
    type: string
    sql: ${TABLE}."TO_ADDRESS_2" ;;
  }

  dimension: to_comment {
    label: "to_comment"
    type: string
    sql: ${TABLE}."TO_COMMENT" ;;
  }

  dimension: to_contact {
    label: "to_contact"
    type: string
    sql: ${TABLE}."TO_CONTACT" ;;
  }

  dimension: to_suburb_code {
    label: "to_postcode"
    type: string
    sql: ${TABLE}."TO_SUBURB_CODE" ;;
  }

  dimension: toll_money {
    hidden: yes
    type: number
    sql: ${TABLE}."Toll_£" ;;
  }

  dimension: toll_value {
    hidden: yes
    type: number
    sql: ${TABLE}."Toll_#" ;;
  }

  dimension: total_amount_money {
    hidden: yes
    type: number
    sql: ${TABLE}."Total_Amount_£" ;;
  }

  dimension: total_amount_value {
    hidden: yes
    type: number
    sql: ${TABLE}."Total_Amount_#" ;;
  }

  dimension: total_kms {
    label: "total_kms"
    type: number
    sql: ${TABLE}."TOTAL_KMS" ;;
  }

  dimension: u_message {
    label: "u_message"
    type: string
    sql: ${TABLE}."U_MESSAGE" ;;
  }

  dimension: ukoint_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."UKOINT_FLAG" ;;
  }

  dimension: unit_weight {
    label: "unit_weight"
    type: number
    sql: ${TABLE}."UNIT_WEIGHT" ;;
  }

  dimension: vehicle_type {
    label: "vehicle_type"
    type: string
    sql: ${TABLE}."VEHICLE_TYPE" ;;
  }

  dimension: wr_money {
    hidden: yes
    type: number
    sql: ${TABLE}."WR_£" ;;
  }

  dimension: wr_value {
    hidden: yes
    type: number
    sql: ${TABLE}."WR_#" ;;
  }

  dimension: wt_money {
    hidden: yes
    type: number
    sql: ${TABLE}."WT_£" ;;
  }


  dimension: wt_value {
    hidden: yes
    type: number
    sql: ${TABLE}."WT_#" ;;
  }

  ############################# DIMENSIONS ################################################



  ############################# MEASURES ##################################################

  measure: count {
    description: "count of jobs"
    type: count
    drill_fields: [drill_fields*]
  }

  ############################# MEASURES ##################################################



  ############################# DRILL DOWNS ###############################################

  set: drill_fields {
    fields: [
      archive,
      job_no,
      job_status,
      booking_d_date,
      booking_t_time_of_day,
      from_address_1,
      from_address_2,
      from_suburb_code,
      to_address_1,
      to_address_2,
      to_suburb_code,
      department_name,
      reference_no,
      reference_2,
      reference_3,
      proof_delivery,
      operator
    ]

  }


}
