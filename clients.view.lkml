view: clients {
  sql_table_name: clarity_tr1.clients ;;

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

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
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

  dimension: deleted {
    type: yesno
    sql: ${TABLE}.deleted ;;
  }

  dimension: dob_quality {
    type: number
    sql: ${TABLE}.dob_quality ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: general_id {
    type: number
    sql: ${TABLE}.general_id ;;
  }

  dimension: image {
    type: yesno
    sql: ${TABLE}.image ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
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

  dimension: name_quality {
    type: number
    sql: ${TABLE}.name_quality ;;
  }

  dimension: private {
    type: yesno
    sql: ${TABLE}.private ;;
  }

  dimension: ref_agency {
    type: number
    sql: ${TABLE}.ref_agency ;;
  }

  dimension: ref_agency_deleted {
    type: number
    sql: ${TABLE}.ref_agency_deleted ;;
  }

  dimension: ref_user_updated {
    type: number
    sql: ${TABLE}.ref_user_updated ;;
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

  dimension: ssn_quality {
    type: number
    sql: ${TABLE}.ssn_quality ;;
  }

  dimension: unique_identifier {
    type: string
    sql: ${TABLE}.unique_identifier ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name]
  }
}
