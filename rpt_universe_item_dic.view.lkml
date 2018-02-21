view: rpt_universe_item_dic {
  sql_table_name: clarity_tr1.rpt_universe_item_dic ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: chart_title {
    type: string
    sql: COLUMN_GET( ${TABLE}.data, "titleStr" AS CHAR( 255 )) ;;
  }

  dimension: row_title {
    type: string
    sql: COLUMN_GET( ${TABLE}.data, "rowStr" AS CHAR( 255 )) ;;
  }

  dimension: column_title {
    type: string
    sql: COLUMN_GET( ${TABLE}.data, "columnStr" AS CHAR( 255 )) ;;
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
