# The name of this view in Looker is "Competitor Analysis"
view: competitor_analysis {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `renault_dummy.competitor_analysis`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Axe" in Explore.

  dimension: axe {
    type: string
    sql: ${TABLE}.Axe ;;
  }

  dimension: note {
    type: number
    sql: ${TABLE}.Note ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_note {
    type: sum
    sql: ${note} ;;
  }

  measure: average_note {
    type: average
    sql: ${note} ;;
  }

  dimension: outil {
    type: string
    sql: ${TABLE}.Outil ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
