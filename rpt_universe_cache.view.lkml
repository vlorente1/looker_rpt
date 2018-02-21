view: rpt_universe_cache {
  sql_table_name: clarity_tr1.rpt_universe_cache ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: report_execution_id {
    type: number
    sql: ${TABLE}.report_execution_id ;;
  }

  dimension: universe_dic_id {
    type: number
    sql: ${TABLE}.universe_dic_id ;;
  }

}
