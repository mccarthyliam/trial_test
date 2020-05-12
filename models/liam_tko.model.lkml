connection: "thelook_events"

# include all the views
include: "/**/*.view"

explore: order_items {
  join: inventory_items {
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: one_to_one
  }
  join: baskets {
    sql_on: ${order_items.order_id} = ${baskets.order_id} ;;
    relationship: many_to_one
  }
}
