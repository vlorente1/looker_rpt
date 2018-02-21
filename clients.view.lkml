view: clients {
  sql_table_name: clarity_tr1.clients ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: birth {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birth_date ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: general_id {
    type: number
    sql: ${TABLE}.general_id ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.ssn ;;
  }

  dimension: ssn1 {
    type: string
    sql: ${TABLE}.ssn1 ;;
  }

  dimension: ssn2 {
    type: string
    sql: ${TABLE}.ssn2 ;;
  }

  dimension: ssn3 {
    type: string
    sql: ${TABLE}.ssn3 ;;
  }

  dimension: unique_identifier {
    type: string
    sql: ${TABLE}.unique_identifier ;;
  }

  measure: count {
    type: count_distinct
    sql:  ${id};;
  }
}
