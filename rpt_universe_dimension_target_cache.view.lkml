view: rpt_universe_dimension_target_cache {
  sql_table_name: clarity_tr1.rpt_universe_dimension_target_cache ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: universe_dimension_cache_id {
    type: number
    sql: ${TABLE}.universe_dimension_cache_id ;;
  }

  dimension: universe_dimension_item_dic_id {
    type: number
    sql: ${TABLE}.universe_dimension_item_dic_id ;;
  }

  dimension: universe_target_cache_id {
    type: number
    sql: ${TABLE}.universe_target_cache_id ;;
  }

}
