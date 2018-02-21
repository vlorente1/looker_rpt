connection: "clarity_tr1_rpt"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: rpt_reports_cache {
    join: rpt_universe_dic {
      type: inner
      sql_on: ${rpt_reports_cache.id} = ${rpt_universe_dic.report_id} ;;
      relationship: one_to_many
    }

    join: rpt_universe_item_dic {
      type: inner
      sql_on: ${rpt_universe_dic.id} = ${rpt_universe_item_dic.universe_dic_id} ;;
      relationship: one_to_many
    }

    join: rpt_universe_dimension_dic {
      type: inner
      sql_on: ${rpt_universe_dic.id} = ${rpt_universe_dimension_dic.universe_dic_id} ;;
      relationship: one_to_many
    }

    join: rpt_dim_custom_dic {
      type:  inner
      sql_on: ${rpt_universe_dimension_dic.name} = ${rpt_dim_custom_dic.name} ;;
      relationship: one_to_many
    }

     join: rpt_dim_custom_codes_dic {
      type:  inner
      sql_on: ${rpt_dim_custom_dic.id} = ${rpt_dim_custom_codes_dic.ref_dim_custom_dic} ;;
      relationship: one_to_many
    }
}


explore: rpt_report_execution_cache {

  join: users {
    type: inner
    sql_on:  ${rpt_report_execution_cache.staff_id} = ${users.id} ;;
    relationship: one_to_many
  }

  join: rpt_reports_cache {
    type: inner
    sql_on:  ${rpt_report_execution_cache.report_id} = ${rpt_reports_cache.id} ;;
    relationship: one_to_many
  }

  join: rpt_universe_dic {
    type: inner
    sql_on: ${rpt_reports_cache.id} = ${rpt_universe_dic.report_id} ;;
    relationship: one_to_many
  }

 join: rpt_universe_dimension_dic {
    type:  inner
    sql_on: ${rpt_universe_dic.id} = ${rpt_universe_dimension_dic.universe_dic_id} ;;
    relationship: one_to_many
  }

  join: rpt_universe_item_dic {
    type: inner
    sql_on:  ${rpt_universe_dic.id} = ${rpt_universe_item_dic.universe_dic_id} ;;
    relationship: one_to_many
  }

  join: rpt_universe_item_cache {
    type:  inner
    sql_on: ${rpt_universe_item_dic.id} = ${rpt_universe_item_cache.universe_item_dic_id} ;;
    relationship: one_to_many
  }

  join: rpt_universe_cache {
    type: inner
    sql_on: ${rpt_report_execution_cache.id} = ${rpt_universe_cache.report_execution_id} AND ${rpt_universe_cache.universe_dic_id} = ${rpt_universe_dic.id} ;;
    relationship: one_to_many
  }

  join: rpt_universe_dimension_cache {
    type:  inner
    sql_on:  ${rpt_universe_dimension_dic.id} = ${rpt_universe_dimension_cache.universe_dimension_dic_id} AND
             ${rpt_universe_cache.id} = ${rpt_universe_dimension_cache.universe_cache_id} ;;
    relationship: one_to_many
  }

  join: rpt_universe_target_cache {
    type:  inner
    sql_on: ${rpt_universe_cache.id} = ${rpt_universe_target_cache.universe_cache_id} ;;
    relationship: one_to_many
  }

  join: rpt_universe_dimension_target_cache {
    type: left_outer
    sql_on:  ${rpt_universe_dimension_cache.id} = ${rpt_universe_dimension_target_cache.universe_dimension_cache_id} AND
             ${rpt_universe_target_cache.id} = ${rpt_universe_dimension_target_cache.universe_target_cache_id};;
    relationship: one_to_many
  }

  join: rpt_dim_custom_codes_dic {
    type: left_outer
    sql_on: ${rpt_dim_custom_codes_dic.id} = ${rpt_universe_dimension_target_cache.universe_dimension_item_dic_id} ;;
    relationship: one_to_many
  }

}
