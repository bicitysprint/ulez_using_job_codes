view: service {
  sql_table_name: CC.SERVICE ;;

############################ DIMENSIONS ####################################################

  dimension: accepted_status {
    hidden: yes
    type: string
    sql: ${TABLE}."ACCEPTED_STATUS" ;;
  }

  dimension: after_hour_avail {
    hidden: yes
    type: string
    sql: ${TABLE}."AFTER_HOUR_AVAIL" ;;
  }

  dimension: alert_colour {
    hidden: yes
    type: string
    sql: ${TABLE}."ALERT_COLOUR" ;;
  }

  dimension_group: alloc_overdue {
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
    sql: ${TABLE}."ALLOC_OVERDUE" ;;
  }

  dimension: amt_1 {
    hidden: yes
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: amt_2 {
    hidden: yes
    type: number
    sql: ${TABLE}."AMT_2" ;;
  }

  dimension: archive {
    label: "archive"
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: atpickup_timer {
    hidden: yes
    type: number
    sql: ${TABLE}."ATPICKUP_TIMER" ;;
  }

  dimension_group: becoming_overdue {
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
    sql: ${TABLE}."BECOMING_OVERDUE" ;;
  }

  dimension: bidding_delay {
    hidden: yes
    type: number
    sql: ${TABLE}."BIDDING_DELAY" ;;
  }

  dimension: bin_code {
    hidden: yes
    type: string
    sql: ${TABLE}."BIN_CODE" ;;
  }

  dimension: budget_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."BUDGET_FLAG" ;;
  }

  dimension: change_over {
    hidden: yes
    type: string
    sql: ${TABLE}."CHANGE_OVER" ;;
  }

  dimension: code {
    label: "service_code"
    type: string
    sql: ${TABLE}."CODE" ;;
  }

  dimension: commodity_code {
    hidden: yes
    type: number
    sql: ${TABLE}."COMMODITY_CODE" ;;
  }

  dimension: cost_del_leg_flg {
    hidden: yes
    type: string
    sql: ${TABLE}."COST_DEL_LEG_FLG" ;;
  }

  dimension: credit_card_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."CREDIT_CARD_FLAG" ;;
  }

  dimension: cubing_factor {
    hidden: yes
    type: number
    sql: ${TABLE}."CUBING_FACTOR" ;;
  }

  dimension: damage_exchange {
    hidden: yes
    type: string
    sql: ${TABLE}."DAMAGE_EXCHANGE" ;;
  }

  dimension: data_source {
    hidden: yes
    type: number
    sql: ${TABLE}."DATA_SOURCE" ;;
  }

  dimension: default_size {
    hidden: yes
    type: number
    sql: ${TABLE}."DEFAULT_SIZE" ;;
  }

  dimension: default_vehicle {
    hidden: yes
    type: string
    sql: ${TABLE}."DEFAULT_VEHICLE" ;;
  }

  dimension: default_weight {
    hidden: yes
    type: number
    sql: ${TABLE}."DEFAULT_WEIGHT" ;;
  }

  dimension: del_over_col {
    hidden: yes
    type: string
    sql: ${TABLE}."DEL_OVER_COL" ;;
  }

  dimension: del_time_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."DEL_TIME_FLAG" ;;
  }

  dimension: delay_factor {
    hidden: yes
    type: number
    sql: ${TABLE}."DELAY_FACTOR" ;;
  }

  dimension_group: deliver_overdue {
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
    sql: ${TABLE}."DELIVER_OVERDUE" ;;
  }

  dimension: description {
    label: "description"
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: despatch_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."DESPATCH_FLAG" ;;
  }

  dimension: dimensions_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."DIMENSIONS_FLAG" ;;
  }

  dimension: dtm_auto_desp {
    hidden: yes
    type: string
    sql: ${TABLE}."DTM_AUTO_DESP" ;;
  }

  dimension_group: dtm_deliver_odue {
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
    sql: ${TABLE}."DTM_DELIVER_ODUE" ;;
  }

  dimension: dtm_description {
    hidden: yes
    type: string
    sql: ${TABLE}."DTM_DESCRIPTION" ;;
  }

  dimension_group: dtm_pickup_odue {
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
    sql: ${TABLE}."DTM_PICKUP_ODUE" ;;
  }

  dimension_group: dtm_prebook_disp {
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
    sql: ${TABLE}."DTM_PREBOOK_DISP" ;;
  }

  dimension: dtm_serv_type {
    hidden: yes
    type: number
    sql: ${TABLE}."DTM_SERV_TYPE" ;;
  }

  dimension: dtm_weave {
    hidden: yes
    type: string
    sql: ${TABLE}."DTM_WEAVE" ;;
  }

  dimension: email_track_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."EMAIL_TRACK_FLAG" ;;
  }

  dimension: end_number {
    hidden: yes
    type: number
    sql: ${TABLE}."END_NUMBER" ;;
  }

  dimension: fax_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."FAX_FLAG" ;;
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

  dimension: flat_rate_hire {
    hidden: yes
    type: string
    sql: ${TABLE}."FLAT_RATE_HIRE" ;;
  }

  dimension: float_1 {
    hidden: yes
    type: number
    sql: ${TABLE}."FLOAT_1" ;;
  }

  dimension: float_2 {
    hidden: yes
    type: number
    sql: ${TABLE}."FLOAT_2" ;;
  }

  dimension: force_driv_jcode {
    hidden: yes
    type: string
    sql: ${TABLE}."FORCE_DRIV_JCODE" ;;
  }

  dimension: frequency {
    hidden: yes
    type: string
    sql: ${TABLE}."FREQUENCY" ;;
  }

  dimension: friday_avail {
    hidden: yes
    type: string
    sql: ${TABLE}."FRIDAY_AVAIL" ;;
  }

  dimension: future_loc {
    hidden: yes
    type: number
    sql: ${TABLE}."FUTURE_LOC" ;;
  }

  dimension_group: future_prebook {
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
    sql: ${TABLE}."FUTURE_PREBOOK" ;;
  }

  dimension: hire_type {
    hidden: yes
    type: string
    sql: ${TABLE}."HIRE_TYPE" ;;
  }

  dimension: inflate_percent {
    hidden: yes
    type: number
    sql: ${TABLE}."INFLATE_PERCENT" ;;
  }

  dimension: invoice_format {
    hidden: yes
    type: string
    sql: ${TABLE}."INVOICE_FORMAT" ;;
  }

  dimension: invoice_type {
    hidden: yes
    type: string
    sql: ${TABLE}."INVOICE_TYPE" ;;
  }

  dimension: item_job_code {
    hidden: yes
    type: string
    sql: ${TABLE}."ITEM_JOB_CODE" ;;
  }

  dimension: items_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."ITEMS_FLAG" ;;
  }

  dimension: job_accepted {
    hidden: yes
    type: string
    sql: ${TABLE}."JOB_ACCEPTED" ;;
  }

  dimension: job_colour {
    hidden: yes
    type: string
    sql: ${TABLE}."JOB_COLOUR" ;;
  }

  dimension: job_delay {
    hidden: yes
    type: number
    sql: ${TABLE}."JOB_DELAY" ;;
  }

  dimension_group: job_overdue {
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
    sql: ${TABLE}."JOB_OVERDUE" ;;
  }

  dimension: job_screen {
    hidden: yes
    type: string
    sql: ${TABLE}."JOB_SCREEN" ;;
  }

  dimension: kilometre_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."KILOMETRE_FLAG" ;;
  }

  dimension: kms_job_code {
    hidden: yes
    type: string
    sql: ${TABLE}."KMS_JOB_CODE" ;;
  }

  dimension: last_day_avail {
    hidden: yes
    type: string
    sql: ${TABLE}."LAST_DAY_AVAIL" ;;
  }

  dimension: late_factor {
    hidden: yes
    type: number
    sql: ${TABLE}."LATE_FACTOR" ;;
  }

  dimension: lhaul_man_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."LHAUL_MAN_FLAG" ;;
  }

  dimension: membership_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."MEMBERSHIP_FLAG" ;;
  }

  dimension: min_job_code {
    hidden: yes
    type: string
    sql: ${TABLE}."MIN_JOB_CODE" ;;
  }

  dimension: multiple_pickups {
    hidden: yes
    type: string
    sql: ${TABLE}."MULTIPLE_PICKUPS" ;;
  }

  dimension: nearest_cent {
    hidden: yes
    type: number
    sql: ${TABLE}."NEAREST_CENT" ;;
  }

  dimension: network_timer {
    hidden: yes
    type: number
    sql: ${TABLE}."NETWORK_TIMER" ;;
  }

  dimension: next_future_loc {
    hidden: yes
    type: number
    sql: ${TABLE}."NEXT_FUTURE_LOC" ;;
  }

  dimension: non_sms_colour {
    hidden: yes
    type: string
    sql: ${TABLE}."NON_SMS_COLOUR" ;;
  }

  dimension: notify {
    hidden: yes
    type: string
    sql: ${TABLE}."NOTIFY" ;;
  }

  dimension: num_4 {
    hidden: yes
    type: number
    sql: ${TABLE}."NUM_4" ;;
  }

  dimension: num_5 {
    hidden: yes
    type: number
    sql: ${TABLE}."NUM_5" ;;
  }

  dimension: off_hire {
    hidden: yes
    type: string
    sql: ${TABLE}."OFF_HIRE" ;;
  }

  dimension: on_hire {
    hidden: yes
    type: string
    sql: ${TABLE}."ON_HIRE" ;;
  }

  dimension: override_colour {
    hidden: yes
    type: string
    sql: ${TABLE}."OVERRIDE_COLOUR" ;;
  }

  dimension: parstat_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."PARSTAT_FLAG" ;;
  }

  dimension_group: past_overdue {
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
    sql: ${TABLE}."PAST_OVERDUE" ;;
  }

  dimension: pb_override_col {
    hidden: yes
    type: string
    sql: ${TABLE}."PB_OVERRIDE_COL" ;;
  }

  dimension: pick_over_col {
    hidden: yes
    type: string
    sql: ${TABLE}."PICK_OVER_COL" ;;
  }

  dimension: pickup_limit_flg {
    hidden: yes
    type: string
    sql: ${TABLE}."PICKUP_LIMIT_FLG" ;;
  }

  dimension_group: pickup_overdue {
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
    sql: ${TABLE}."PICKUP_OVERDUE" ;;
  }

  dimension_group: pickup {
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
    sql: ${TABLE}."PICKUP_TIME" ;;
  }

  dimension: points_direction {
    hidden: yes
    type: number
    sql: ${TABLE}."POINTS_DIRECTION" ;;
  }

  dimension: points_for_clear {
    hidden: yes
    type: number
    sql: ${TABLE}."POINTS_FOR_CLEAR" ;;
  }

  dimension: points_location {
    hidden: yes
    type: number
    sql: ${TABLE}."POINTS_LOCATION" ;;
  }

  dimension: points_over_lim {
    hidden: yes
    type: number
    sql: ${TABLE}."POINTS_OVER_LIM" ;;
  }

  dimension: points_per_doll {
    hidden: yes
    type: number
    sql: ${TABLE}."POINTS_PER_DOLL" ;;
  }

  dimension: points_per_km {
    hidden: yes
    type: number
    sql: ${TABLE}."POINTS_PER_KM" ;;
  }

  dimension: points_per_rate {
    hidden: yes
    type: number
    sql: ${TABLE}."POINTS_PER_RATE" ;;
  }

  dimension: points_per_vdiff {
    hidden: yes
    type: number
    sql: ${TABLE}."POINTS_PER_VDIFF" ;;
  }

  dimension: points_time_diff {
    hidden: yes
    type: number
    sql: ${TABLE}."POINTS_TIME_DIFF" ;;
  }

  dimension_group: prebook_display {
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
    sql: ${TABLE}."PREBOOK_DISPLAY" ;;
  }

  dimension: prepaid_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."PREPAID_FLAG" ;;
  }

  dimension: prepaid_service {
    hidden: yes
    type: string
    sql: ${TABLE}."PREPAID_SERVICE" ;;
  }

  dimension: priority_number {
    hidden: yes
    type: string
    sql: ${TABLE}."PRIORITY_NUMBER" ;;
  }

  dimension: process_colour {
    hidden: yes
    type: string
    sql: ${TABLE}."PROCESS_COLOUR" ;;
  }

  dimension: public_hol_avail {
    hidden: yes
    type: string
    sql: ${TABLE}."PUBLIC_HOL_AVAIL" ;;
  }

  dimension: quantity_type {
    hidden: yes
    type: string
    sql: ${TABLE}."QUANTITY_TYPE" ;;
  }

  dimension: re_hire {
    hidden: yes
    type: string
    sql: ${TABLE}."RE_HIRE" ;;
  }

  dimension: round_direction {
    hidden: yes
    type: string
    sql: ${TABLE}."ROUND_DIRECTION" ;;
  }

  dimension: round_off {
    hidden: yes
    type: string
    sql: ${TABLE}."ROUND_OFF" ;;
  }

  dimension: rounding_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."ROUNDING_FLAG" ;;
  }

  dimension: run_man_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."RUN_MAN_FLAG" ;;
  }

  dimension: run_type {
    hidden: yes
    type: string
    sql: ${TABLE}."RUN_TYPE" ;;
  }

  dimension: sales_gl_code {
    hidden: yes
    type: string
    sql: ${TABLE}."SALES_GL_CODE" ;;
  }

  dimension: satchels_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."SATCHELS_FLAG" ;;
  }

  dimension: service_group {
    hidden: yes
    type: string
    sql: ${TABLE}."SERVICE_GROUP" ;;
  }

  dimension: sms_black_cab {
    hidden: yes
    type: string
    sql: ${TABLE}."SMS_BLACK_CAB" ;;
  }

  dimension: sms_current {
    hidden: yes
    type: string
    sql: ${TABLE}."SMS_CURRENT" ;;
  }

  dimension: sms_current_1 {
    hidden: yes
    type: string
    sql: ${TABLE}."SMS_CURRENT_1" ;;
  }

  dimension: sms_current_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."SMS_CURRENT_FLAG" ;;
  }

  dimension: sms_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."SMS_FLAG" ;;
  }

  dimension: sms_pickup {
    hidden: yes
    type: string
    sql: ${TABLE}."SMS_PICKUP" ;;
  }

  dimension: sms_pickup_1 {
    hidden: yes
    type: string
    sql: ${TABLE}."SMS_PICKUP_1" ;;
  }

  dimension: sms_pickup_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."SMS_PICKUP_FLAG" ;;
  }

  dimension: sms_source_addr {
    hidden: yes
    type: string
    sql: ${TABLE}."SMS_SOURCE_ADDR" ;;
  }

  dimension: sms_third_party {
    hidden: yes
    type: string
    sql: ${TABLE}."SMS_THIRD_PARTY" ;;
  }

  dimension: start_number {
    hidden: yes
    type: number
    sql: ${TABLE}."START_NUMBER" ;;
  }

  dimension: stop_switch {
    hidden: yes
    type: string
    sql: ${TABLE}."STOP_SWITCH" ;;
  }

  dimension: stored_timer {
    hidden: yes
    type: number
    sql: ${TABLE}."STORED_TIMER" ;;
  }

  dimension: ticket_account {
    hidden: yes
    type: string
    sql: ${TABLE}."TICKET_ACCOUNT" ;;
  }

  dimension: ticket_type {
    hidden: yes
    type: string
    sql: ${TABLE}."TICKET_TYPE" ;;
  }

  dimension: time_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."TIME_FLAG" ;;
  }

  dimension: time_job_code {
    hidden: yes
    type: string
    sql: ${TABLE}."TIME_JOB_CODE" ;;
  }

  dimension: unit_measure {
    hidden: yes
    type: string
    sql: ${TABLE}."UNIT_MEASURE" ;;
  }

  dimension: user_code {
    hidden: yes
    type: string
    sql: ${TABLE}."USER_CODE" ;;
  }

  dimension: viewed_timer {
    hidden: yes
    type: number
    sql: ${TABLE}."VIEWED_TIMER" ;;
  }

  dimension: warning_limit {
    hidden: yes
    type: number
    sql: ${TABLE}."WARNING_LIMIT" ;;
  }

  dimension: waste_type {
    hidden: yes
    type: string
    sql: ${TABLE}."WASTE_TYPE" ;;
  }

  dimension: weekend_avail {
    hidden: yes
    type: string
    sql: ${TABLE}."WEEKEND_AVAIL" ;;
  }

  dimension: weight_flag {
    hidden: yes
    type: string
    sql: ${TABLE}."WEIGHT_FLAG" ;;
  }

  dimension: weight_job_code {
    hidden: yes
    type: string
    sql: ${TABLE}."WEIGHT_JOB_CODE" ;;
  }

  dimension: xml_del_timer {
    hidden: yes
    type: number
    sql: ${TABLE}."XML_DEL_TIMER" ;;
  }

  dimension: xml_resp_timer {
    hidden: yes
    type: number
    sql: ${TABLE}."XML_RESP_TIMER" ;;
  }

  dimension: xml_retry_limit {
    hidden: yes
    type: number
    sql: ${TABLE}."XML_RETRY_LIMIT" ;;
  }

  dimension: xml_retry_timer {
    hidden: yes
    type: number
    sql: ${TABLE}."XML_RETRY_TIMER" ;;
  }

  dimension: xml_sdel_timer {
    hidden: yes
    type: number
    sql: ${TABLE}."XML_SDEL_TIMER" ;;
  }

  dimension: xml_sresp_timer {
    hidden: yes
    type: number
    sql: ${TABLE}."XML_SRESP_TIMER" ;;
  }

############################ DIMENSIONS ####################################################


############################ MEASURES ######################################################
  #measure: count {
   # type: count
    #drill_fields: []
  #}
############################ MEASURES ######################################################

}
