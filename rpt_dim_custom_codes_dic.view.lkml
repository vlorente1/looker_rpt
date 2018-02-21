view: rpt_dim_custom_codes_dic {
  sql_table_name: clarity_tr1.rpt_dim_custom_codes_dic ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ref_dim_custom_dic {
    type: number
    sql: ${TABLE}.ref_dim_custom_dic ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
