view: rpt_universe_item_cache {
  sql_table_name: clarity_tr1.rpt_universe_item_cache ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: nbr_clients {
    type: number
    sql: COLUMN_GET( ${TABLE}.data, "nbr_targets" AS INTEGER ) ;;
  }

  dimension: nbr_households {
    type: number
    sql: COLUMN_GET( ${TABLE}.data, "nbr_households" AS INTEGER ) ;;
  }

  dimension: universe_cache_id {
    type: number
    sql: ${TABLE}.universe_cache_id ;;
  }

  dimension: universe_item_dic_id {
    type: number
    sql: ${TABLE}.universe_item_dic_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
