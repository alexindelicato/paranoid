view: relate_jobstoproducts {
  derived_table: {
    sql: SELECT * FROM `fivetran-ovation-tix-warehouse.dbo_dbo.relate_jobstoproducts`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _fivetran_deleted {
    type: string
    sql: ${TABLE}._fivetran_deleted ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: availabilityofjob {
    type: string
    sql: ${TABLE}.availabilityofjob ;;
  }

  dimension: availabilityscore {
    type: string
    sql: ${TABLE}.availabilityscore ;;
  }

  dimension: jobid_fkey {
    type: string
    sql: ${TABLE}.jobid_fkey ;;
  }

  dimension: productid_fkey {
    type: string
    sql: ${TABLE}.productid_fkey ;;
  }

  set: detail {
    fields: [
      id,
      _fivetran_deleted,
      _fivetran_synced_time,
      availabilityofjob,
      availabilityscore,
      jobid_fkey,
      productid_fkey
    ]
  }
}