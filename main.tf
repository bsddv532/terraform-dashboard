resource "newrelic_one_dashboard" "exampledash" {
  name        = "user_circuit_breaker_terraform"
  permissions = "public_read_only"

  page {
    name = "user_circuit_breaker_terraform"
    // widgets are like formats which helps in displaying the data in different way...

    // FIRST ROW

    widget_line {
      title  = "Compare circuit open count"
      row    = 1
      column = 1
      width  = 8
      height = 3

      nrql_query {
        # account_id  = <Another Account ID>
        query = "SELECT count(*) as 'Circuit open'from Log where  service = 'user-service' and CB_status = 'open' since 1 hour ago COMPARE WITH 1 day ago TIMESERIES "
      }

      # Must be another dashboard GUID
      #   filter_current_dashboard = true
    }


    widget_billboard {
      title  = "Count of circuit open"
      row    = 1
      column = 9
      width  = 4
      height = 3

      nrql_query {
        query = "SELECT count(*) as 'Circuit open' from Log where service = 'user-service' and CB_status = 'open' SINCE 1 day ago"
      }
    }

    //SECOND ROW
    widget_table {
      title  = "Latest 5 CB Status, message & level"
      row    = 4
      column = 1
      width  = 8
      height = 3

      nrql_query {
        query = "SELECT CB_status, message, level FROM Log WHERE service = 'user-service' WHERE CB_status IS NOT NULL LIMIT 5 SINCE 1 day ago"
      }
    }


    widget_pie {
      title  = "Endpoint which made CB open"
      row    = 4
      column = 9
      width  = 4
      height = 3

      nrql_query {
        query = "SELECT count(*) FROM Log FACET CB_target WHERE service = 'user-service' AND CB_status = 'open' SINCE 1 day ago"
      }
    }


  }

}

 