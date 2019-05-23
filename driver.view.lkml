view: driver {
  sql_table_name: CC.DRIVER ;;



############################################## DIMENSIONS #################################################################
  dimension: abn {
    hidden: yes
    type: string
    sql: ${TABLE}."ABN" ;;
  }

  dimension: acn_number {
    hidden: yes
    type: string
    sql: ${TABLE}."ACN_NUMBER" ;;
  }

  dimension: address_1 {
    hidden: yes
    type: string
    sql: ${TABLE}."ADDRESS_1" ;;
  }

  dimension: address_2 {
    hidden: yes
    type: string
    sql: ${TABLE}."ADDRESS_2" ;;
  }

  dimension: amt_1 {
    hidden: yes
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: archive {
    label: "archive"
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: balance_fwd {
    hidden: yes
    type: number
    sql: ${TABLE}."BALANCE_FWD" ;;
  }

  dimension: bank_account_no {
    hidden: yes
    type: string
    sql: ${TABLE}."BANK_ACCOUNT_NO" ;;
  }

  dimension: bank_branch {
    hidden: yes
    type: string
    sql: ${TABLE}."BANK_BRANCH" ;;
  }

  dimension: bank_name {
    hidden: yes
    type: string
    sql: ${TABLE}."BANK_NAME" ;;
  }

  dimension: bonus_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."BONUS_FLAG" ;;
  }

  dimension: bonus_percent {
    hidden: yes
    type: number
    sql: ${TABLE}."BONUS_PERCENT" ;;
  }

  dimension: business_name {
    hidden: yes
    type: string
    sql: ${TABLE}."BUSINESS_NAME" ;;
  }

  dimension: business_phone {
    hidden: yes
    type: string
    sql: ${TABLE}."BUSINESS_PHONE" ;;
  }

  dimension: cheques_payable {
    hidden: yes
    type: string
    sql: ${TABLE}."CHEQUES_PAYABLE" ;;
  }

  dimension: company_name {
    hidden: yes
    type: string
    sql: ${TABLE}."COMPANY_NAME" ;;
  }

  dimension: course_heading {
    hidden: yes
    type: number
    sql: ${TABLE}."COURSE_HEADING" ;;
  }

  dimension: current_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."CURRENT_FLAG" ;;
  }

  dimension: current_loc {
    hidden: yes
    type: number
    sql: ${TABLE}."CURRENT_LOC" ;;
  }

  dimension: current_position {
    hidden: yes
    type: string
    sql: ${TABLE}."CURRENT_POSITION" ;;
  }

  dimension: daily_rate {
    hidden: yes
    type: number
    sql: ${TABLE}."DAILY_RATE" ;;
  }

  dimension: data_mobile_no {
    hidden: yes
    type: string
    sql: ${TABLE}."DATA_MOBILE_NO" ;;
  }

  dimension: data_mobile_stat {
    hidden: yes
    type: string
    sql: ${TABLE}."DATA_MOBILE_STAT" ;;
  }

  dimension: data_source {
    hidden: yes
    type: number
    sql: ${TABLE}."DATA_SOURCE" ;;
  }

  dimension_group: date_1 {
    hidden: yes
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
    sql: ${TABLE}."DATE_1" ;;
  }

  dimension: default_pay_type {
    hidden: yes
    type: string
    sql: ${TABLE}."DEFAULT_PAY_TYPE" ;;
  }

  dimension: deliver_job_code {
    hidden: yes
    type: string
    sql: ${TABLE}."DELIVER_JOB_CODE" ;;
  }

  dimension: delivery_service {
    hidden: yes
    type: string
    sql: ${TABLE}."DELIVERY_SERVICE" ;;
  }

  dimension: dist_interval {
    hidden: yes
    type: number
    sql: ${TABLE}."DIST_INTERVAL" ;;
  }

  dimension: driver_area {
    hidden: yes
    type: string
    sql: ${TABLE}."DRIVER_AREA" ;;
  }

  dimension: driver_class {
    label: "driver_class"
    type: string
    sql: ${TABLE}."DRIVER_CLASS" ;;
  }

  dimension: driver_key {
    label: "driver_key"
    type: string
    sql: ${TABLE}."DRIVER_KEY" ;;
  }

  dimension: driver_rank_code {
    hidden: yes
    type: string
    sql: ${TABLE}."DRIVER_RANK_CODE" ;;
  }

  dimension_group: driver_rank {
    hidden: yes
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
    sql: ${TABLE}."DRIVER_RANK_TIME" ;;
  }

  dimension_group: dtm_comm_d {
    hidden: yes
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
    sql: ${TABLE}."DTM_COMM_DATE" ;;
  }

  dimension_group: dtm_comm_t {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."DTM_COMM_TIME" ;;
  }

  dimension: dtm_comms_status {
    hidden: yes
    type: string
    sql: ${TABLE}."DTM_COMMS_STATUS" ;;
  }

  dimension: dtm_status {
    hidden: yes
    type: string
    sql: ${TABLE}."DTM_STATUS" ;;
  }

  dimension: dtm_text {
    hidden: yes
    type: string
    sql: ${TABLE}."DTM_TEXT" ;;
  }

  dimension: exclude_charge {
    hidden: yes
    type: string
    sql: ${TABLE}."EXCLUDE_CHARGE" ;;
  }

  dimension: exclude_rec_car {
    hidden: yes
    type: string
    sql: ${TABLE}."EXCLUDE_REC_CAR" ;;
  }

  dimension: factor_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."FACTOR_FLAG" ;;
  }

  dimension: factor_percent {
    hidden: yes
    type: number
    sql: ${TABLE}."FACTOR_PERCENT" ;;
  }

  dimension: finish_rank {
    hidden: yes
    type: number
    sql: ${TABLE}."FINISH_RANK" ;;
  }

  dimension_group: finish {
    hidden: yes
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
    sql: ${TABLE}."FINISH_TIME" ;;
  }

  dimension: flag_1 {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAG_1" ;;
  }

  dimension: flag_2 {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAG_2" ;;
  }

  dimension: flag_3 {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAG_3" ;;
  }

  dimension: flag_4 {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAG_4" ;;
  }

  dimension: flag_5 {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAG_5" ;;
  }

  dimension: flag_6 {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAG_6" ;;
  }

  dimension: fleet_code {
    hidden: yes
    type: string
    sql: ${TABLE}."FLEET_CODE" ;;
  }

  dimension_group: freq_time_change {
    hidden: yes
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
    sql: ${TABLE}."FREQ_TIME_CHANGE" ;;
  }

  dimension: gps_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."GPS_FLAG" ;;
  }

  dimension: gps_serial_no {
    hidden: yes
    type: string
    sql: ${TABLE}."GPS_SERIAL_NO" ;;
  }

  dimension: in_zone_bias {
    hidden: yes
    type: number
    sql: ${TABLE}."IN_ZONE_BIAS" ;;
  }

  dimension: job_code {
    hidden: yes
    type: string
    sql: ${TABLE}."JOB_CODE" ;;
  }

  dimension: jobs_on_limit {
    hidden: yes
    type: number
    sql: ${TABLE}."JOBS_ON_LIMIT" ;;
  }

  dimension: last_job_num {
    hidden: yes
    type: number
    sql: ${TABLE}."LAST_JOB_NUM" ;;
  }

  dimension: last_suburb {
    hidden: yes
    type: string
    sql: ${TABLE}."LAST_SUBURB" ;;
  }

  dimension: latest_frequency {
    hidden: yes
    type: string
    sql: ${TABLE}."LATEST_FREQUENCY" ;;
  }

  dimension: latitude {
    hidden: yes
    type: string
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: licence_number {
    hidden: yes
    type: string
    sql: ${TABLE}."LICENCE_NUMBER" ;;
  }

  dimension: load_factor {
    hidden: yes
    type: number
    sql: ${TABLE}."LOAD_FACTOR" ;;
  }

  dimension: local_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."LOCAL_FLAG" ;;
  }

  dimension: longitude {
    hidden: yes
    type: string
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: mail_address_1 {
    hidden: yes
    type: string
    sql: ${TABLE}."MAIL_ADDRESS_1" ;;
  }

  dimension: mail_address_2 {
    hidden: yes
    type: string
    sql: ${TABLE}."MAIL_ADDRESS_2" ;;
  }

  dimension: mail_postcode {
    hidden: yes
    type: number
    sql: ${TABLE}."MAIL_POSTCODE" ;;
  }

  dimension: max_size {
    hidden: yes
    type: number
    sql: ${TABLE}."MAX_SIZE" ;;
  }

  dimension: max_weight {
    hidden: yes
    type: number
    sql: ${TABLE}."MAX_WEIGHT" ;;
  }

  dimension: mdt_version {
    hidden: yes
    type: string
    sql: ${TABLE}."MDT_VERSION" ;;
  }

  dimension: min_hourly_rate {
    hidden: yes
    type: number
    sql: ${TABLE}."MIN_HOURLY_RATE" ;;
  }

  dimension: min_kms_rate {
    hidden: yes
    type: number
    sql: ${TABLE}."MIN_KMS_RATE" ;;
  }

  dimension: mte_qid {
    hidden: yes
    type: string
    sql: ${TABLE}."MTE_QID" ;;
  }

  dimension: name {
    label: "driver_name"
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: next_of_kin {
    hidden: yes
    type: string
    sql: ${TABLE}."NEXT_OF_KIN" ;;
  }

  dimension: num_1 {
    label: "userid"
    type: number
    primary_key: yes
    sql: ${TABLE}."NUM_1" ;;
  }

  dimension: operating_status {
    hidden: yes
    type: number
    sql: ${TABLE}."OPERATING_STATUS" ;;
  }

  dimension: out_zone_bias {
    hidden: yes
    type: number
    sql: ${TABLE}."OUT_ZONE_BIAS" ;;
  }

  dimension: overtime {
    hidden: yes
    type: number
    sql: ${TABLE}."OVERTIME" ;;
  }

  dimension: pager_number {
    hidden: yes
    type: string
    sql: ${TABLE}."PAGER_NUMBER" ;;
  }

  dimension: pager_password {
    hidden: yes
    type: string
    sql: ${TABLE}."PAGER_PASSWORD" ;;
  }

  dimension: pay_message_1 {
    hidden: yes
    type: string
    sql: ${TABLE}."PAY_MESSAGE_1" ;;
  }

  dimension: pay_message_2 {
    hidden: yes
    type: string
    sql: ${TABLE}."PAY_MESSAGE_2" ;;
  }

  dimension: pay_period {
    hidden: yes
    type: string
    sql: ${TABLE}."PAY_PERIOD" ;;
  }

  dimension: pay_service_code {
    hidden: yes
    type: string
    sql: ${TABLE}."PAY_SERVICE_CODE" ;;
  }

  dimension: percentage {
    hidden: yes
    type: number
    sql: ${TABLE}."PERCENTAGE" ;;
  }

  dimension: performance_rate {
    hidden: yes
    type: number
    sql: ${TABLE}."PERFORMANCE_RATE" ;;
  }

  dimension: phone_number {
    hidden: yes
    type: string
    sql: ${TABLE}."PHONE_NUMBER" ;;
  }

  dimension: phone_number_2 {
    hidden: yes
    type: string
    sql: ${TABLE}."PHONE_NUMBER_2" ;;
  }

  dimension: postcode {
    hidden: yes
    type: number
    sql: ${TABLE}."POSTCODE" ;;
  }

  dimension: pref_zone {
    hidden: yes
    type: number
    sql: ${TABLE}."PREF_ZONE" ;;
  }

  dimension: prev_frequency {
    hidden: yes
    type: string
    sql: ${TABLE}."PREV_FREQUENCY" ;;
  }

  dimension: pub_liab_insur {
    hidden: yes
    type: string
    sql: ${TABLE}."PUB_LIAB_INSUR" ;;
  }

  dimension: qas_address_1 {
    hidden: yes
    type: string
    sql: ${TABLE}."QAS_ADDRESS_1" ;;
  }

  dimension: qas_address_2 {
    hidden: yes
    type: string
    sql: ${TABLE}."QAS_ADDRESS_2" ;;
  }

  dimension: qas_address_3 {
    hidden: yes
    type: string
    sql: ${TABLE}."QAS_ADDRESS_3" ;;
  }

  dimension: qas_address_4 {
    hidden: yes
    type: string
    sql: ${TABLE}."QAS_ADDRESS_4" ;;
  }

  dimension: qas_address_5 {
    hidden: yes
    type: string
    sql: ${TABLE}."QAS_ADDRESS_5" ;;
  }

  dimension: qas_address_6 {
    hidden: yes
    type: string
    sql: ${TABLE}."QAS_ADDRESS_6" ;;
  }

  dimension: qas_address_7 {
    hidden: yes
    type: string
    sql: ${TABLE}."QAS_ADDRESS_7" ;;
  }

  dimension: qas_latitude {
    hidden: yes
    type: string
    sql: ${TABLE}."QAS_LATITUDE" ;;
  }

  dimension: qas_longitude {
    hidden: yes
    type: string
    sql: ${TABLE}."QAS_LONGITUDE" ;;
  }

  dimension: radio_serial_no {
    hidden: yes
    type: string
    sql: ${TABLE}."RADIO_SERIAL_NO" ;;
  }

  dimension: rate_inc_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."RATE_INC_FLAG" ;;
  }

  dimension: region_code {
    hidden: yes
    type: string
    sql: ${TABLE}."REGION_CODE" ;;
  }

  dimension: rego_no {
    hidden: yes
    type: string
    sql: ${TABLE}."REGO_NO" ;;
  }

  dimension: rel_speed {
    hidden: yes
    type: number
    sql: ${TABLE}."REL_SPEED" ;;
  }

  dimension: req_list_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."REQ_LIST_FLAG" ;;
  }

  dimension: run_cost {
    hidden: yes
    type: number
    sql: ${TABLE}."RUN_COST" ;;
  }

  dimension: second_driv_name {
    hidden: yes
    type: string
    sql: ${TABLE}."SECOND_DRIV_NAME" ;;
  }

  dimension: sick_acc_insur {
    hidden: yes
    type: string
    sql: ${TABLE}."SICK_ACC_INSUR" ;;
  }

  dimension: speed {
    hidden: yes
    type: number
    sql: ${TABLE}."SPEED" ;;
  }

  dimension: stand_job_amt {
    hidden: yes
    type: number
    sql: ${TABLE}."STAND_JOB_AMT" ;;
  }

  dimension: stand_job_desc {
    hidden: yes
    type: string
    sql: ${TABLE}."STAND_JOB_DESC" ;;
  }

  dimension_group: start {
    label: "driver_start_date"
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
    sql: ${TABLE}."START_DATE" ;;
  }

  dimension: start_location {
    hidden: yes
    type: number
    sql: ${TABLE}."START_LOCATION" ;;
  }

  dimension_group: start_t {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."START_TIME" ;;
  }

  dimension: starting_rank {
    hidden: yes
    type: string
    sql: ${TABLE}."STARTING_RANK" ;;
  }

  dimension: street_position {
    hidden: yes
    type: string
    sql: ${TABLE}."STREET_POSITION" ;;
  }

  dimension: tare_weight {
    hidden: yes
    type: number
    sql: ${TABLE}."TARE_WEIGHT" ;;
  }

  dimension: tax_file_no {
    hidden: yes
    type: string
    sql: ${TABLE}."TAX_FILE_NO" ;;
  }

  dimension: tax_percent {
    hidden: yes
    type: number
    sql: ${TABLE}."TAX_PERCENT" ;;
  }

  dimension: tax_var_cert_no {
    hidden: yes
    type: string
    sql: ${TABLE}."TAX_VAR_CERT_NO" ;;
  }

  dimension_group: tax_var_date_fce {
    hidden: yes
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
    sql: ${TABLE}."TAX_VAR_DATE_FCE" ;;
  }

  dimension_group: term {
    hidden: yes
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
    sql: ${TABLE}."TERM_DATE" ;;
  }

  dimension_group: time_1 {
    hidden: yes
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
    sql: ${TABLE}."TIME_1" ;;
  }

  dimension: trading_as_name {
    hidden: yes
    type: string
    sql: ${TABLE}."TRADING_AS_NAME" ;;
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: unit_size {
    hidden: yes
    type: number
    sql: ${TABLE}."UNIT_SIZE" ;;
  }

  dimension: unit_weight {
    hidden: yes
    type: number
    sql: ${TABLE}."UNIT_WEIGHT" ;;
  }

  dimension: vehicle_insur {
    hidden: yes
    type: string
    sql: ${TABLE}."VEHICLE_INSUR" ;;
  }

  dimension: vehicle_type {
    hidden: yes
    type: string
    sql: ${TABLE}."VEHICLE_TYPE" ;;
  }
  ############################################## DIMENSIONS #################################################################




 ############################################## MEASURES #################################################################
  measure: count {
    description: "includes a count of all userids"
    type: count
    drill_fields: [detail*]
  }
 ############################################## MEASURES #################################################################





############################################## DRILL DOWNS #################################################################
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
    archive,
    num_1,
    driver_key,
    driver_class,
    name,
    start_date
    ]
  }
}
