view: rating_data {
  sql_table_name: `komtas-workshop.netflix_data.rating_data`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.Age ;;
  }

  dimension: disney_ {
    type: number
    sql: ${TABLE}.Disney_ ;;
  }

  dimension: hulu {
    type: number
    sql: ${TABLE}.Hulu ;;
  }

  dimension: imdb {
    type: string
    sql: ${TABLE}.IMDb ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: netflix {
    type: number
    sql: ${TABLE}.Netflix ;;
  }

  dimension: prime_video {
    type: number
    sql: ${TABLE}.Prime_Video ;;
  }

  dimension: rotten_tomatoes {
    type: string
    sql: ${TABLE}.Rotten_Tomatoes ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.Type ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
