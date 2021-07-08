view: sankey {
  sql_table_name: `aftership.sankey`
    ;;

  dimension: sessions_revenue {
    type: number
    sql: ${TABLE}.Sessions_Revenue ;;
  }

  dimension: sessions_traffic_source {
    type: string
    sql: ${TABLE}.Sessions_Traffic_Source ;;
  }

  dimension: users_site_acquisition_source {
    type: string
    sql: ${TABLE}.Users_Site_Acquisition_Source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
