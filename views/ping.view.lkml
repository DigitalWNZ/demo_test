view: ping {
  sql_table_name: `aftership.ping`
    ;;

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }

  dimension: clientip {
    type: string
    sql: ${TABLE}.clientip ;;
  }

  dimension: lost {
    type: number
    sql: ${TABLE}.lost ;;
  }

  dimension: max {
    type: number
    sql: ${TABLE}.max ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
    drill_fields: [clientip]
  }

  dimension_group: time {
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
    sql: ${TABLE}.time ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
