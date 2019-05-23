view: jdetail_ulez_jobs_view {
  sql_table_name: CC.JDETAIL_ULEZ_JOBS_VIEW ;;

#################################### DIMENSIONS ##############################################

  dimension: archive {
    label: "archive"
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: job_no {
    label: "job_no"
    type: number
    sql: ${TABLE}."JOB_NO" ;;
  }

  dimension: archive_job {
    label: "archive_job"
    type: number
    primary_key: yes
    sql: ${archive}||${job_no} ;;
  }

  dimension: ul {
    label: "ul"
    type: number
    sql: ${TABLE}."UL" ;;
  }

  dimension: ux {
    label: "ux"
    type: number
    sql: ${TABLE}."UX" ;;
  }

  dimension: uy {
    label: "uy"
    type: number
    sql: ${TABLE}."UY" ;;
  }

  dimension: uz {
    label: "uz"
    type: number
    sql: ${TABLE}."UZ" ;;
  }
#################################### DIMENSIONS ##############################################



#################################### MEASURES ################################################
  #measure: count {
   # type: count
    #drill_fields: []
  #}
}
