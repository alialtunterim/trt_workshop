connection: "komtas-workshop"

# include all the views
include: "/views/**/*.view"

datagroup: workshop_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: workshop_default_datagroup

explore: main {
  label: "Netflix Data"
}

explore: order_items {
  label: "New model"
  join: orders {
    relationship: one_to_many
    sql_on: ${order_items.order_id}= ${orders.order_id} ;;
  }

  join: products {
    relationship: one_to_many
    sql_on: ${products.id} = ${order_items.product_id} ;;
  }

  join: inventory_items {
    relationship: one_to_many
    sql_on: ${inventory_items.id}= ${order_items.inventory_item_id} ;;
  }

  join: users {
    relationship: one_to_many
    sql_on: ${order_items.user_id}= ${users.id}  ;;
  }

}
