connection: "db"

# include all the views
include: "*.view"

datagroup: ulez_using_job_codes_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ulez_using_job_codes_default_datagroup


explore: ulez_jobs {

  view_name: ut_finance_jobs_snowflake

}
