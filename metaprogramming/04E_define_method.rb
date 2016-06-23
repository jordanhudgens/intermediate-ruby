class TeamReport
  teams = %w(astros rangers athletics angels marlins)

  teams.each do |team|
    define_method("report_for_#{team}") do |name|
      "Report for #{name}"
    end
  end
end

team = TeamReport.new
p team.report_for_astros("Houston Astros")
p team.report_for_rangers("Texas Rangers")
p team.report_for_angels("Anaheim Angels")
p team.respond_to?(:report_for_marlins)