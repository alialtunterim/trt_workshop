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

  dimension: rating_group{
    case: {
      when: {
        sql: ${rating} between 0 and 3 ;;
        label: "Kötü"
      }
      when: {
        sql: ${rating} between 3 and 6 ;;
        label: "Orta"
      }
      when: {
        sql: ${rating} between 6 and 8 ;;
        label: "İyi"
      }
      when: {
        sql: ${rating} between 8 and 10 ;;
        label: "Çok iyi"
      }
      else: "Rate Yok"
    }
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

    link: {
      label: "Google Search"
      url: "http://www.google.com/search?q={{ value }}"
    }
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
