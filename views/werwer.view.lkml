view: werwer {
  sql_table_name: `aftership.werwer`
    ;;

  dimension: country_iso_code {
    type: string
    sql: ${TABLE}.country_iso_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: end_ip {
    type: string
    sql: ${TABLE}.end_IP ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: start_ip {
    type: string
    sql: ${TABLE}.start_IP ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
