view: rpt_report_execution_cache {
  sql_table_name: clarity_tr1.rpt_report_execution_cache ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: deleted {
    type: yesno
    sql: ${TABLE}.deleted ;;
  }

  dimension: exec_id {
    type: string
    sql: ${TABLE}.exec_id ;;
  }

  dimension: report_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.report_id ;;
  }

  dimension: staff_id {
    type: number
    sql: ${TABLE}.staff_id ;;
  }

}
