view: jdetail_ulez_view {
  sql_table_name: CC.JDETAIL_ULEZ_VIEW ;;



#################################### DIMENSIONS ##############################################
  dimension: archive {
    label: "archive"
    type: string
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: archive_job {
    label: "archive_job"
    type: number
    primary_key: yes
    sql: ${archive}||${job_number} ;;

  }

  dimension: client_charge_ul {
    label: "client_charge_ul"
    type: number
    sql: ${TABLE}."CLIENT_CHARGE_UL" ;;
  }

  dimension: client_charge_ux {
    label: "client_charge_ux"
    type: number
    sql: ${TABLE}."CLIENT_CHARGE_UX" ;;
  }

  dimension: client_charge_uy {
    label: "client_charge_uy"
    type: number
    sql: ${TABLE}."CLIENT_CHARGE_UY" ;;
  }

  dimension: client_charge_uz {
    label: "client_charge_uz"
    type: number
    sql: ${TABLE}."CLIENT_CHARGE_UZ" ;;
  }

  dimension: driver_charge_ul {
    label: "driver_charge_ul"
    type: number
    sql: ${TABLE}."DRIVER_CHARGE_UL" ;;
  }

  dimension: driver_charge_ux {
    label: "driver_charge_ux"
    type: number
    sql: ${TABLE}."DRIVER_CHARGE_UX" ;;
  }

  dimension: driver_charge_uy {
    label: "driver_charge_uy"
    type: number
    sql: ${TABLE}."DRIVER_CHARGE_UY" ;;
  }

  dimension: driver_charge_uz {
    label: "driver_charge_uz"
    type: number
    sql: ${TABLE}."DRIVER_CHARGE_UZ" ;;
  }

  dimension: job_number {
    label: "job_no"
    type: string
    sql: ${TABLE}."JOB_NUMBER" ;;
  }

  dimension: rn {
    hidden: yes
    type: number
    sql: ${TABLE}."RN" ;;
  }
#################################### DIMENSIONS ##############################################



#################################### MEASURES ################################################
  measure: count {
    type: count
    drill_fields: [drill_fields*]
  }

  measure: sum_of_client_charge_UL {
    type: sum
    sql: ${client_charge_ul} ;;
    drill_fields: [drill_fields*]
  }


  measure: sum_of_client_charge_UX {
    type: sum
    sql: ${client_charge_ux} ;;
    drill_fields: [drill_fields*]
  }

  measure: sum_of_client_charge_UY {
    type: sum
    sql: ${client_charge_uy} ;;
    drill_fields: [drill_fields*]
  }

  measure: sum_of_client_charge_UZ {
    type: sum
    sql: ${client_charge_uz} ;;
    drill_fields: [drill_fields*]
  }

  measure: sum_of_driver_charge_UL {
    type: sum
    sql: ${driver_charge_ul} ;;
    drill_fields: [drill_fields*]
  }

  measure: sum_of_driver_charge_UX {
    type: sum
    sql: ${driver_charge_ux} ;;
    drill_fields: [drill_fields*]
  }

  measure: sum_of_driver_charge_UY {
    type: sum
    sql: ${driver_charge_uy} ;;
    drill_fields: [drill_fields*]
  }

  measure: sum_of_driver_charge_UZ {
    type: sum
    sql: ${driver_charge_uz} ;;
    drill_fields: [drill_fields*]
  }

  measure: total_ulez_driver_charge {
    type: sum
    sql: (${driver_charge_ul} + ${driver_charge_ux} + ${driver_charge_uy} + ${driver_charge_uz}) ;;
    drill_fields: [drill_fields*]
  }

  measure: total_ulez_client_charge {
    type: sum
    sql: (${client_charge_ul} + ${client_charge_ux} + ${client_charge_uy} + ${client_charge_uz}) ;;
    drill_fields: [drill_fields*]
  }
#################################### MEASURES ################################################

#################################### DRILL DOWNS #############################################

set: drill_fields {
  fields: [
    archive,
    job_number,
    ifleet_drivers.userid,
    ifleet_drivers.callsign,
    ifleet_drivers.approved,
    ifleet_drivers.vechtype,
    ifleet_drivers.user_role,
    ifleet_drivers.service_centre,
    ifleet_drivers.lez,
    ifleet_drivers.lez_group,
    ut_finance_jobs_snowflake.customer_key,
    customer.name,
    ut_finance_jobs_snowflake.booking_d_week_of_year,
    ut_finance_jobs_snowflake.booking_d_date,
    ut_finance_jobs_snowflake.booking_t_time_of_day,
    ut_finance_jobs_snowflake.account_service_centre,
    ut_finance_jobs_snowflake.job_service_centre,
    ut_finance_jobs_snowflake.driver_key,
    ut_finance_jobs_snowflake.agent,
    ut_finance_jobs_snowflake.umbrella_service,
    ut_finance_jobs_snowflake.service_code,
    ut_finance_jobs_snowflake.service_group,
    ut_ops_jobs_snowflake.from_address_1,
    ut_ops_jobs_snowflake.from_address_2,
    ut_ops_jobs_snowflake.from_suburb_code,
    ut_ops_jobs_snowflake.pickup_d,
    ut_ops_jobs_snowflake.pickup_t,
    ut_ops_jobs_snowflake.dbd,
    ut_ops_jobs_snowflake.dbt,
    ut_ops_jobs_snowflake.deliver_d,
    ut_ops_jobs_snowflake.deliver_t,
    ut_ops_jobs_snowflake.to_address_1,
    ut_ops_jobs_snowflake.to_address_2,
    ut_ops_jobs_snowflake.to_suburb_code,
    ut_ops_jobs_snowflake.department_name,
    ut_ops_jobs_snowflake.reference_no,
    ut_ops_jobs_snowflake.reference_2,
    ut_ops_jobs_snowflake.reference_3,
    ut_ops_jobs_snowflake.book_caller,
    ut_ops_jobs_snowflake.proof_delivery,
    ut_ops_jobs_snowflake.operator,
    sum_of_client_charge_UL,
    sum_of_client_charge_UX,
    sum_of_client_charge_UY,
    sum_of_client_charge_UZ,
    sum_of_driver_charge_UL,
    sum_of_driver_charge_UX,
    sum_of_driver_charge_UY,
    sum_of_driver_charge_UZ,
    total_ulez_client_charge,
    total_ulez_driver_charge,
    ut_finance_jobs_snowflake.customer_charge,
    ut_finance_jobs_snowflake.total_cost,
    ut_finance_jobs_snowflake.margin,
    ut_finance_jobs_snowflake.margin_perf

  ]
}

}
