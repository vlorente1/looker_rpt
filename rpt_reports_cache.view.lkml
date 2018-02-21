view: rpt_reports_cache {
  sql_table_name: clarity_tr1.rpt_reports_cache ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: properties {
    hidden: yes
    type: string
    sql: ${TABLE}.properties ;;
  }

  dimension: report_name {
    type: string
    sql: ${TABLE}.uname ;;
  }

#  measure: count {
#    type: count
#    drill_fields: [id, uname]
#  }
}
