view: baskets {
  derived_table: {
    explore_source: order_items {
      column: order_id {}
      column: total_sale_price {}
      column: count {}
    }
  }
  dimension: order_id {
    primary_key: yes
    type: number
  }
  dimension: total_sale_price {
    hidden: yes
    value_format: "$#,##0"
    type: number
  }
  dimension: count {
    hidden: yes
    type: number
  }

  measure: average_basket_value {
    type: average
    value_format_name: usd
    sql: ${total_sale_price} ;;
  }

  measure: average_basket_size {
    type: average
    value_format_name: usd
    sql: ${count} ;;
  }
}
