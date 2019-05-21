connection: "db"

# include all the views
include: "*.view"



#################### CACHE ##############################
datagroup: ulez_using_job_codes_default_datagroup {
  sql_trigger: SELECT sum(revenue-discount) FROM ut_finance_jobs_snowflake;;
  max_cache_age: "15 hour"
}
persist_with: ulez_using_job_codes_default_datagroup
#########################################################



#################### GP VALUE FORMAT ####################
named_value_format: gbp_format_1 {
  value_format: "[>=1000000]\"£\"0.00,,\"M\";[>=0]\"£\"0.00,\"K\";\"£\"0.00"
}

named_value_format: gbp_format_2 {
  value_format: "#,##0.00"
}

named_value_format: gbp_format_dp {
  value_format: "\"£\"#,##0.00"
}
#########################################################




#################### ALL JOINS ##############################
explore: ut_finance_jobs_snowflake {
  label: "ULEZ by job codes"


  join: ut_ops_jobs_snowflake {
    view_label: "Ops details"
    type: inner
    relationship: one_to_one
    sql_on: ${ut_finance_jobs_snowflake.archive_job} = ${ut_ops_jobs_snowflake.archive_job} ;;
  }


  join: customer  {
    view_label: "Customer details"
    type: inner
    relationship: many_to_one
    sql_on: ${ut_finance_jobs_snowflake.customer_key} = ${customer.cust_key} ;;
  }


  join: salecode  {
    view_label: "Salecode description"
    type: inner
    relationship: many_to_many
    sql_on: ${customer.sales_code_c} = ${salecode.sales_code} and ${ut_finance_jobs_snowflake.archive} = ${salecode.archive};;
  }


  join: service {
    view_label: "Service description"
    type: inner
    relationship: many_to_many
    sql_on: ${ut_finance_jobs_snowflake.service_code} = ${service.code} and  ${ut_finance_jobs_snowflake.archive} = ${service.archive} ;;
  }

  join: ut_system_ccg  {
    view_label: "CCG description"
    type: left_outer
    relationship: many_to_one
    sql_on: ${customer.sales_code_f} = ${ut_system_ccg.sales_code_f} ;;
  }

  join: jdetail_ulez_view {
    view_label: "ULEZ client and driver charges"
    type: inner
    relationship: one_to_one
    sql_on: ${ut_finance_jobs_snowflake.archive_job} = ${jdetail_ulez_view.archive_job} ;;
  }

  join: jdetail_ulez_jobs_view {
    view_label: "ULEZ which job belongs to what job code"
    type: inner
    relationship: one_to_one
    sql_on: ${ut_finance_jobs_snowflake.archive_job} = ${jdetail_ulez_jobs_view.archive_job} ;;
  }

  join: postcodelatlng {
    view_label: "Master postcode table with lats and longs (from)"
    type: left_outer
    relationship: many_to_one
    sql_on: ${ut_ops_jobs_snowflake.from_suburb_code} = ${postcodelatlng.postcode} ;;
  }

  join: postcodelatlng_2 {
    from: postcodelatlng
    view_label: "Master postcode table with lats and longs (to)"
    type: left_outer
    relationship: many_to_one
    sql_on: ${ut_ops_jobs_snowflake.to_suburb_code} = ${postcodelatlng_2.postcode} ;;
  }

 join: driver {
  view_label: "CS driver details"
  type: left_outer
  relationship: many_to_many
  sql_on: ${ut_finance_jobs_snowflake.driver_key} = ${driver.driver_key} and ${ut_finance_jobs_snowflake.archive} = ${driver.archive} ;;
  }

  join: ifleet_drivers {
    view_label: "Ifleet driver details"
    type: left_outer
    relationship: many_to_one
    sql_on: ${driver.num_1} = ${ifleet_drivers.userid} ;;
  }



}
############################################################
