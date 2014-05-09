
overallChart = c3.generate(
  bindto: "#overall_delivery_chart"
  data:
    x: "x"
    columns: [ [ "x", "2013-01-01", "2013-01-02", "2013-01-03", "2013-01-04", "2013-01-05", "2013-01-06" ], [ "AIs x1000", 30, 200, 100, 400, 150, 250 ], [ "Conversions", 130, 340, 200, 500, 250, 350 ] ]

  axis:
    x:
      type: "timeseries"
      tick:
        format: "%Y-%m-%d"
)

yesterdayChart = c3.generate(
  bindto: "#yesterday_delivery_chart"
  data:
    x: "x"
    columns: [ [ "x", "2013-01-01", "2013-01-02", "2013-01-03", "2013-01-04", "2013-01-05", "2013-01-06" ], [ "AIs x1000", 30, 200, 100, 400, 150, 250 ], [ "Conversions", 130, 340, 200, 500, 250, 350 ] ]

  axis:
    x:
      type: "timeseries"
      tick:
        format: "%Y-%m-%d"
)

todayChart = c3.generate(
  bindto: "#today_delivery_chart"
  data:
    x: "x"
    columns: [ [ "x", "2013-01-01", "2013-01-02", "2013-01-03", "2013-01-04", "2013-01-05", "2013-01-06" ], [ "AIs x1000", 30, 200, 100, 400, 150, 250 ], [ "Conversions", 130, 340, 200, 500, 250, 350 ] ]

  axis:
    x:
      type: "timeseries"
      tick:
        format: "%Y-%m-%d"
)

budgetChart = c3.generate(
  bindto: "#budget_chart"
  data:
    columns: [ [ "Remaining budget", 300, 270, 220, 160, 90, 50 ] ]
    type: "spline"
)

setTimeout (->
  overallChart.load columns: [ [ "Clicks", 400, 500, 450, 700, 600, 500 ] ]
  yesterdayChart.load columns: [ [ "Clicks", 400, 500, 450, 700, 600, 500 ] ]
  todayChart.load columns: [ [ "Clicks", 400, 500, 450, 700, 600, 500 ] ]
), 1000

