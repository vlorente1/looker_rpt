view: rpt_universe_dimension_dic {
  sql_table_name: clarity_tr1.rpt_universe_dimension_dic ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: universe_dic_id {
    type: number
    sql: ${TABLE}.universe_dic_id ;;
  }

}
