view: rpt_universe_target_cache {
  sql_table_name: clarity_tr1.rpt_universe_target_cache ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: target_id {
    type: number
    sql: ${TABLE}.target_id ;;
  }

  dimension: universe_cache_id {
    type: number
    sql: ${TABLE}.universe_cache_id ;;
  }

}
