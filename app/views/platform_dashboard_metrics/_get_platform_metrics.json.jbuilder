json.service_status PlatformDashboardMetric.joins(server: :application).group(:id,:application_id,:metric_name,:metric_description).where('capture_time <= ? and capture_time > ?', Time.now, 1.hour.ago).order("capture_time DESC").pluck('service_id, application_id, server_id ,capture_time,metric_name,metric_description,metric_value,metric_status').map { |p| {service_id: p[0], application_id:p[1], server_id:p[2], capture_time:p[3],metric_name:p[4], metric_description:p[5],metric_value: p[6], metric_status: p[7]}}
