view: driver {
  sql_table_name: CC.DRIVER ;;

  dimension: abn {
    type: string
    sql: ${TABLE}."ABN" ;;
  }

  dimension: acn_number {
    type: string
    sql: ${TABLE}."ACN_NUMBER" ;;
  }

  dimension: address_1 {
    type: string
    sql: ${TABLE}."ADDRESS_1" ;;
  }

  dimension: address_2 {
    type: string
    sql: ${TABLE}."ADDRESS_2" ;;
  }

  dimension: amt_1 {
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: balance_fwd {
    type: number
    sql: ${TABLE}."BALANCE_FWD" ;;
  }

  dimension: bank_account_no {
    type: string
    sql: ${TABLE}."BANK_ACCOUNT_NO" ;;
  }

  dimension: bank_branch {
    type: string
    sql: ${TABLE}."BANK_BRANCH" ;;
  }

  dimension: bank_name {
    type: string
    sql: ${TABLE}."BANK_NAME" ;;
  }

  dimension: bonus_flag {
    type: string
    sql: ${TABLE}."BONUS_FLAG" ;;
  }

  dimension: bonus_percent {
    type: number
    sql: ${TABLE}."BONUS_PERCENT" ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}."BUSINESS_NAME" ;;
  }

  dimension: business_phone {
    type: string
    sql: ${TABLE}."BUSINESS_PHONE" ;;
  }

  dimension: cheques_payable {
    type: string
    sql: ${TABLE}."CHEQUES_PAYABLE" ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}."COMPANY_NAME" ;;
  }

  dimension: course_heading {
    type: number
    sql: ${TABLE}."COURSE_HEADING" ;;
  }

  dimension: current_flag {
    type: string
    sql: ${TABLE}."CURRENT_FLAG" ;;
  }

  dimension: current_loc {
    type: number
    sql: ${TABLE}."CURRENT_LOC" ;;
  }

  dimension: current_position {
    type: string
    sql: ${TABLE}."CURRENT_POSITION" ;;
  }

  dimension: daily_rate {
    type: number
    sql: ${TABLE}."DAILY_RATE" ;;
  }

  dimension: data_mobile_no {
    type: string
    sql: ${TABLE}."DATA_MOBILE_NO" ;;
  }

  dimension: data_mobile_stat {
    type: string
    sql: ${TABLE}."DATA_MOBILE_STAT" ;;
  }

  dimension: data_source {
    type: number
    sql: ${TABLE}."DATA_SOURCE" ;;
  }

  dimension_group: date_1 {
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
    type: string
    sql: ${TABLE}."DEFAULT_PAY_TYPE" ;;
  }

  dimension: deliver_job_code {
    type: string
    sql: ${TABLE}."DELIVER_JOB_CODE" ;;
  }

  dimension: delivery_service {
    type: string
    sql: ${TABLE}."DELIVERY_SERVICE" ;;
  }

  dimension: dist_interval {
    type: number
    sql: ${TABLE}."DIST_INTERVAL" ;;
  }

  dimension: driver_area {
    type: string
    sql: ${TABLE}."DRIVER_AREA" ;;
  }

  dimension: driver_class {
    type: string
    sql: ${TABLE}."DRIVER_CLASS" ;;
  }

  dimension: driver_key {
    type: string
    sql: ${TABLE}."DRIVER_KEY" ;;
  }

  dimension: driver_rank_code {
    type: string
    sql: ${TABLE}."DRIVER_RANK_CODE" ;;
  }

  dimension_group: driver_rank {
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
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."DTM_COMM_TIME" ;;
  }

  dimension: dtm_comms_status {
    type: string
    sql: ${TABLE}."DTM_COMMS_STATUS" ;;
  }

  dimension: dtm_status {
    type: string
    sql: ${TABLE}."DTM_STATUS" ;;
  }

  dimension: dtm_text {
    type: string
    sql: ${TABLE}."DTM_TEXT" ;;
  }

  dimension: exclude_charge {
    type: string
    sql: ${TABLE}."EXCLUDE_CHARGE" ;;
  }

  dimension: exclude_rec_car {
    type: string
    sql: ${TABLE}."EXCLUDE_REC_CAR" ;;
  }

  dimension: factor_flag {
    type: string
    sql: ${TABLE}."FACTOR_FLAG" ;;
  }

  dimension: factor_percent {
    type: number
    sql: ${TABLE}."FACTOR_PERCENT" ;;
  }

  dimension: finish_rank {
    type: number
    sql: ${TABLE}."FINISH_RANK" ;;
  }

  dimension_group: finish {
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

  dimension: flag_5 {
    type: string
    sql: ${TABLE}."FLAG_5" ;;
  }

  dimension: flag_6 {
    type: string
    sql: ${TABLE}."FLAG_6" ;;
  }

  dimension: fleet_code {
    type: string
    sql: ${TABLE}."FLEET_CODE" ;;
  }

  dimension_group: freq_time_change {
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
    type: string
    sql: ${TABLE}."GPS_FLAG" ;;
  }

  dimension: gps_serial_no {
    type: string
    sql: ${TABLE}."GPS_SERIAL_NO" ;;
  }

  dimension: in_zone_bias {
    type: number
    sql: ${TABLE}."IN_ZONE_BIAS" ;;
  }

  dimension: job_code {
    type: string
    sql: ${TABLE}."JOB_CODE" ;;
  }

  dimension: jobs_on_limit {
    type: number
    sql: ${TABLE}."JOBS_ON_LIMIT" ;;
  }

  dimension: last_job_num {
    type: number
    sql: ${TABLE}."LAST_JOB_NUM" ;;
  }

  dimension: last_suburb {
    type: string
    sql: ${TABLE}."LAST_SUBURB" ;;
  }

  dimension: latest_frequency {
    type: string
    sql: ${TABLE}."LATEST_FREQUENCY" ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: licence_number {
    type: string
    sql: ${TABLE}."LICENCE_NUMBER" ;;
  }

  dimension: load_factor {
    type: number
    sql: ${TABLE}."LOAD_FACTOR" ;;
  }

  dimension: local_flag {
    type: string
    sql: ${TABLE}."LOCAL_FLAG" ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: mail_address_1 {
    type: string
    sql: ${TABLE}."MAIL_ADDRESS_1" ;;
  }

  dimension: mail_address_2 {
    type: string
    sql: ${TABLE}."MAIL_ADDRESS_2" ;;
  }

  dimension: mail_postcode {
    type: number
    sql: ${TABLE}."MAIL_POSTCODE" ;;
  }

  dimension: max_size {
    type: number
    sql: ${TABLE}."MAX_SIZE" ;;
  }

  dimension: max_weight {
    type: number
    sql: ${TABLE}."MAX_WEIGHT" ;;
  }

  dimension: mdt_version {
    type: string
    sql: ${TABLE}."MDT_VERSION" ;;
  }

  dimension: min_hourly_rate {
    type: number
    sql: ${TABLE}."MIN_HOURLY_RATE" ;;
  }

  dimension: min_kms_rate {
    type: number
    sql: ${TABLE}."MIN_KMS_RATE" ;;
  }

  dimension: mte_qid {
    type: string
    sql: ${TABLE}."MTE_QID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: next_of_kin {
    type: string
    sql: ${TABLE}."NEXT_OF_KIN" ;;
  }

  dimension: num_1 {
    type: number
    primary_key: yes
    sql: ${TABLE}."NUM_1" ;;
  }

  dimension: operating_status {
    type: number
    sql: ${TABLE}."OPERATING_STATUS" ;;
  }

  dimension: out_zone_bias {
    type: number
    sql: ${TABLE}."OUT_ZONE_BIAS" ;;
  }

  dimension: overtime {
    type: number
    sql: ${TABLE}."OVERTIME" ;;
  }

  dimension: pager_number {
    type: string
    sql: ${TABLE}."PAGER_NUMBER" ;;
  }

  dimension: pager_password {
    type: string
    sql: ${TABLE}."PAGER_PASSWORD" ;;
  }

  dimension: pay_message_1 {
    type: string
    sql: ${TABLE}."PAY_MESSAGE_1" ;;
  }

  dimension: pay_message_2 {
    type: string
    sql: ${TABLE}."PAY_MESSAGE_2" ;;
  }

  dimension: pay_period {
    type: string
    sql: ${TABLE}."PAY_PERIOD" ;;
  }

  dimension: pay_service_code {
    type: string
    sql: ${TABLE}."PAY_SERVICE_CODE" ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}."PERCENTAGE" ;;
  }

  dimension: performance_rate {
    type: number
    sql: ${TABLE}."PERFORMANCE_RATE" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."PHONE_NUMBER" ;;
  }

  dimension: phone_number_2 {
    type: string
    sql: ${TABLE}."PHONE_NUMBER_2" ;;
  }

  dimension: postcode {
    type: number
    sql: ${TABLE}."POSTCODE" ;;
  }

  dimension: pref_zone {
    type: number
    sql: ${TABLE}."PREF_ZONE" ;;
  }

  dimension: prev_frequency {
    type: string
    sql: ${TABLE}."PREV_FREQUENCY" ;;
  }

  dimension: pub_liab_insur {
    type: string
    sql: ${TABLE}."PUB_LIAB_INSUR" ;;
  }

  dimension: qas_address_1 {
    type: string
    sql: ${TABLE}."QAS_ADDRESS_1" ;;
  }

  dimension: qas_address_2 {
    type: string
    sql: ${TABLE}."QAS_ADDRESS_2" ;;
  }

  dimension: qas_address_3 {
    type: string
    sql: ${TABLE}."QAS_ADDRESS_3" ;;
  }

  dimension: qas_address_4 {
    type: string
    sql: ${TABLE}."QAS_ADDRESS_4" ;;
  }

  dimension: qas_address_5 {
    type: string
    sql: ${TABLE}."QAS_ADDRESS_5" ;;
  }

  dimension: qas_address_6 {
    type: string
    sql: ${TABLE}."QAS_ADDRESS_6" ;;
  }

  dimension: qas_address_7 {
    type: string
    sql: ${TABLE}."QAS_ADDRESS_7" ;;
  }

  dimension: qas_latitude {
    type: string
    sql: ${TABLE}."QAS_LATITUDE" ;;
  }

  dimension: qas_longitude {
    type: string
    sql: ${TABLE}."QAS_LONGITUDE" ;;
  }

  dimension: radio_serial_no {
    type: string
    sql: ${TABLE}."RADIO_SERIAL_NO" ;;
  }

  dimension: rate_inc_flag {
    type: string
    sql: ${TABLE}."RATE_INC_FLAG" ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}."REGION_CODE" ;;
  }

  dimension: rego_no {
    type: string
    sql: ${TABLE}."REGO_NO" ;;
  }

  dimension: rel_speed {
    type: number
    sql: ${TABLE}."REL_SPEED" ;;
  }

  dimension: req_list_flag {
    type: string
    sql: ${TABLE}."REQ_LIST_FLAG" ;;
  }

  dimension: run_cost {
    type: number
    sql: ${TABLE}."RUN_COST" ;;
  }

  dimension: second_driv_name {
    type: string
    sql: ${TABLE}."SECOND_DRIV_NAME" ;;
  }

  dimension: sick_acc_insur {
    type: string
    sql: ${TABLE}."SICK_ACC_INSUR" ;;
  }

  dimension: speed {
    type: number
    sql: ${TABLE}."SPEED" ;;
  }

  dimension: stand_job_amt {
    type: number
    sql: ${TABLE}."STAND_JOB_AMT" ;;
  }

  dimension: stand_job_desc {
    type: string
    sql: ${TABLE}."STAND_JOB_DESC" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."START_DATE" ;;
  }

  dimension: start_location {
    type: number
    sql: ${TABLE}."START_LOCATION" ;;
  }

  dimension_group: start_t {
    type: time
    timeframes: [
      raw,
      time,
      time_of_day
    ]
    sql: ${TABLE}."START_TIME" ;;
  }

  dimension: starting_rank {
    type: string
    sql: ${TABLE}."STARTING_RANK" ;;
  }

  dimension: street_position {
    type: string
    sql: ${TABLE}."STREET_POSITION" ;;
  }

  dimension: tare_weight {
    type: number
    sql: ${TABLE}."TARE_WEIGHT" ;;
  }

  dimension: tax_file_no {
    type: string
    sql: ${TABLE}."TAX_FILE_NO" ;;
  }

  dimension: tax_percent {
    type: number
    sql: ${TABLE}."TAX_PERCENT" ;;
  }

  dimension: tax_var_cert_no {
    type: string
    sql: ${TABLE}."TAX_VAR_CERT_NO" ;;
  }

  dimension_group: tax_var_date_fce {
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
    type: string
    sql: ${TABLE}."TRADING_AS_NAME" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: unit_size {
    type: number
    sql: ${TABLE}."UNIT_SIZE" ;;
  }

  dimension: unit_weight {
    type: number
    sql: ${TABLE}."UNIT_WEIGHT" ;;
  }

  dimension: vehicle_insur {
    type: string
    sql: ${TABLE}."VEHICLE_INSUR" ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}."VEHICLE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      second_driv_name,
      trading_as_name,
      company_name,
      bank_name,
      business_name
    ]
  }
}
