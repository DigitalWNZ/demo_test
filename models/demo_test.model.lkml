connection: "demo_test"

# include all the views
include: "/views/**/*.view"

datagroup: demo_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_test_default_datagroup

explore: connection_reg_r3 {}

explore: ip_by_country {}

explore: ping {}

explore: sankey {}

explore: werwer {}
