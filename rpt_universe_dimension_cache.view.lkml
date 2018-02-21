view: rpt_universe_dimension_cache {
  sql_table_name: clarity_tr1.rpt_universe_dimension_cache ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: universe_cache_id {
    type: number
    sql: ${TABLE}.universe_cache_id ;;
  }

  dimension: universe_dimension_dic_id {
    type: number
    sql: ${TABLE}.universe_dimension_dic_id ;;
  }

#  measure: count {
#    type: count
#    drill_fields: [id]
#  }
}
