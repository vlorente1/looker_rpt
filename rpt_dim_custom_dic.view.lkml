view: rpt_dim_custom_dic {
  sql_table_name: clarity_tr1.rpt_dim_custom_dic ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: report_id {
    type: number
    sql: ${TABLE}.report_id ;;
  }
}
