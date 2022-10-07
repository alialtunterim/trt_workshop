view: main {
  sql_table_name: `komtas-workshop.netflix_data.main`
    ;;

  dimension: end_year {
    type: number
    sql: ${TABLE}.endYear ;;
  }

  dimension: episodes {
    type: number
    sql: ${TABLE}.episodes ;;
  }

  dimension: genres {
    type: string
    sql: ${TABLE}.genres ;;
  }

  dimension: imdb_id {
    type: string
    sql: ${TABLE}.imdb_id ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: num_votes {
    type: number
    sql: ${TABLE}.numVotes ;;
  }

  dimension: orign_country {
    type: string
    sql: ${TABLE}.orign_country ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: runtime {
    type: string
    sql: ${TABLE}.runtime ;;
  }

  dimension: start_year {
    type: number
    value_format: "#0"
    sql: ${TABLE}.startYear ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
