connection: "komtas-workshop"

# include all the views
include: "/views/**/*.view"

datagroup: workshop_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: workshop_default_datagroup

explore: main {
  join: rating_data {
    type: full_outer
    sql_on: ${main.title}= ${rating_data.title} ;;
    relationship: one_to_one
  }
}