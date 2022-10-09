connection: "komtas-workshop"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: model-test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: model-test_default_datagroup

explore: order_items {

  join: orders {
    relationship: one_to_many
    sql_on: ${order_items.order_id}=${orders.order_id} ;;
  }

  join: products {
    relationship: one_to_many
    sql_on: ${products.id}= ${order_items.product_id} ;;
  }

  join: inventory_items {
    relationship: one_to_many
    sql_on: ${order_items.inventory_item_id}=${inventory_items.id} ;;
  }

  join: events {
    relationship: one_to_many
    sql_on: ${events.user_id}=${order_items.user_id} ;;
  }


}
