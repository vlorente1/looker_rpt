view: rpt_universe_dic {
  sql_table_name: clarity_tr1.rpt_universe_dic ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }

  dimension: report_id {
    type: number
    sql: ${TABLE}.report_id ;;
  }

  dimension: universe_id {
    type: number
    sql: ${TABLE}.universe_id ;;
  }

}
