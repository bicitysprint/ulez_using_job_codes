view: jdetail_ulez_jobs_view {
  sql_table_name: CC.JDETAIL_ULEZ_JOBS_VIEW ;;

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: job_no {
    type: number
    sql: ${TABLE}."JOB_NO" ;;
  }

  dimension: archive_job {

    type: number
    primary_key: yes
    sql: ${archive}||${job_no} ;;

  }


  dimension: ul {
    type: number
    sql: ${TABLE}."UL" ;;
  }

  dimension: ux {
    type: number
    sql: ${TABLE}."UX" ;;
  }

  dimension: uy {
    type: number
    sql: ${TABLE}."UY" ;;
  }

  dimension: uz {
    type: number
    sql: ${TABLE}."UZ" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
