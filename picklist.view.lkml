view: picklist {
  sql_table_name: clarity_tr1.picklist ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: added {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.added_date ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.field_name ;;
  }

  dimension: hidden {
    type: number
    sql: ${TABLE}.hidden ;;
  }

  dimension_group: last_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_updated ;;
  }

  dimension: readonly {
    type: number
    sql: ${TABLE}.readonly ;;
  }

  dimension: ref_field {
    type: number
    sql: ${TABLE}.ref_field ;;
  }

  dimension: ref_user_updated {
    type: number
    sql: ${TABLE}.ref_user_updated ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.sort ;;
  }

  dimension: value_name {
    type: string
    sql: ${TABLE}.value_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, value_name, field_name]
  }
}
