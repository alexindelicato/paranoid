connection: "fivetran-bigquery"

# include all the views
include: "*.view"

datagroup: paranoid_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: paranoid_default_datagroup

explore: relate_jobstopersonas {
  label: "Relate Jobs To Product/Personas"
  group_label: "Paranoid"
  view_label: "Relate Jobs To Product/Personas"
  join: relate_jobstoproducts {
    type: inner
    relationship: one_to_many
    sql_on: ${relate_jobstopersonas.jobid_fkey}=${relate_jobstoproducts.jobid_fkey};;
  }
}
