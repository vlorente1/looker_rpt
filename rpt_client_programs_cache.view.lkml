view: rpt_client_programs_cache {
  sql_table_name: clarity_tr1.rpt_client_programs_cache ;;

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: client_program_id {
    type: number
    sql: ${TABLE}.client_program_id ;;
  }

  dimension: report_execution_id {
    type: number
    sql: ${TABLE}.report_execution_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
