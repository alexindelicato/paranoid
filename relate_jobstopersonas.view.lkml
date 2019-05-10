view: relate_jobstopersonas {
  derived_table: {
    sql: SELECT * FROM `fivetran-ovation-tix-warehouse.dbo_dbo.relate_jobstopersonas`
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

  dimension: importanceofjobtopersona {
    type: string
    sql: ${TABLE}.importanceofjobtopersona ;;
  }

  dimension: jobid_fkey {
    type: string
    sql: ${TABLE}.jobid_fkey ;;
  }

  dimension: personaid_fkey {
    type: string
    sql: ${TABLE}.personaid_fkey ;;
  }

  set: detail {
    fields: [
      id,
      _fivetran_deleted,
      _fivetran_synced_time,
      importanceofjobtopersona,
      jobid_fkey,
      personaid_fkey
    ]
  }
}
