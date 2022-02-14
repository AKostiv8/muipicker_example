# UI ----------------------------------------------------------------------
datetime_page_UI <- div(class = "main-content",
                        h1("Basic usage", tags$i(id="BasicDateTimeInputBTN_ID", class = "material-icons material-icons-code", "code")),
                        div(id="BasicDateTimeInputFragment_ID",
                            class="code_fragment",
                            tags$pre('# Basic timepicker usage example 1
                        material_timepickerInput("time_basic1_id",
                                                  label = "12 hours",
                                                  value = Sys.time(),
                                                  showTodayButton = FALSE,
                                                  autoOk = FALSE,
                                                  ampm = TRUE
                        )'
                            ),
                            tags$pre('# Basic timepicker usage example 2
                        material_timepickerInput("time_basic2_id",
                                                  value = Sys.time(),
                                                  label = "24 hours | outlined",
                                                  outlined = TRUE,
                                                  autoOk = FALSE,
                                                  showTodayButton = FALSE,
                        )'
                            ),
                            tags$pre('# Basic timepicker usage example 3
                        material_timepickerInput("time_basic3_id",
                                                  label = "Step = 5",
                                                  value = Sys.time(),
                                                  ampm = TRUE,
                                                  showTodayButton = TRUE,
                                                  todayLabel = "now",
                                                  minutesStep = 5,
                        )'
                            )
                        ),
                        div(class = "custom_row_container",
                            material_datetimeInputInput(
                              "basic_datetime_outline_id",
                              value = Sys.time(),
                              label = "DateTimePicker",
                              keyboardControl = TRUE,
                              outlined = TRUE,
                              ampm = TRUE
                            ),
                            material_datetimeInputInput(
                              "basic_datetime_24h_id",
                              label = '24h clock',
                              autoOk = FALSE
                            ),
                            material_datetimeInputInput(
                              "basic_datetime_min_max_id",
                              label = 'With min/max',
                              value = Sys.time(),
                              ampm = TRUE,
                              minDate = '2018-01-21',
                              maxDate = '2021-01-01'
                            )
                        ),
                        h1("Inline mode", tags$i(id="InlineDateTimeInputBTN_ID", class = "material-icons material-icons-code", "code")),
                        div(id="InlineDateTimeInputFragment_ID",
                            class="code_fragment",
                            tags$pre('# Basic timepicker usage example 1
                        material_timepickerInput("time_basic1_id",
                                                  label = "12 hours",
                                                  value = Sys.time(),
                                                  showTodayButton = FALSE,
                                                  autoOk = FALSE,
                                                  ampm = TRUE
                        )'
                            ),
                            tags$pre('# Basic timepicker usage example 2
                        material_timepickerInput("time_basic2_id",
                                                  value = Sys.time(),
                                                  label = "24 hours | outlined",
                                                  outlined = TRUE,
                                                  autoOk = FALSE,
                                                  showTodayButton = FALSE,
                        )'
                            ),
                            tags$pre('# Basic timepicker usage example 3
                        material_timepickerInput("time_basic3_id",
                                                  label = "Step = 5",
                                                  value = Sys.time(),
                                                  ampm = TRUE,
                                                  showTodayButton = TRUE,
                                                  todayLabel = "now",
                                                  minutesStep = 5,
                        )'
                            )
                        ),
                        div(class = "custom_row_container",
                            material_datetimeInputInput(
                              "inline_datetime_id",
                              label = "Inline",
                              keyboardControl = TRUE,
                              outlined = TRUE,
                              ampm = TRUE,
                              autoOk = TRUE,
                              variant = "inline"
                            ),
                            material_datetimeInputInput(
                              "inline_disableFuture_id",
                              label = 'Inlline example',
                              disableFuture = TRUE,
                              autoOk = TRUE,
                              variant = "inline",
                              helperText = "disable Future"
                            ),
                            material_datetimeInputInput(
                              "inline_disablePast_id",
                              value = Sys.time(),
                              ampm = TRUE,
                              label = 'Inlline | hideTabs',
                              disablePast = TRUE,
                              hideTabs = TRUE,
                              autoOk = TRUE,
                              variant = "inline",
                              helperText = "disable past"
                            )
                        ),
                        h1("Static mode", tags$i(id="StaticDateTimeInputBTN_ID", class = "material-icons material-icons-code", "code")),
                        div(id="StaticDateTimeInputFragment_ID",
                            class="code_fragment",
                            tags$pre('# Basic timepicker usage example 1
                        material_timepickerInput("time_basic1_id",
                                                  label = "12 hours",
                                                  value = Sys.time(),
                                                  showTodayButton = FALSE,
                                                  autoOk = FALSE,
                                                  ampm = TRUE
                        )'
                            )
                        ),
                        div(class = "custom_row_container",
                            material_datetimeInputInput(
                              "static_datetime_id",
                              label = "Inline",
                              keyboardControl = TRUE,
                              outlined = TRUE,
                              ampm = TRUE,
                              autoOk = TRUE,
                              variant = "static"
                            )
                        )
)


# Server ------------------------------------------------------------------
datetime_page_server <- function(input, output, session) {

}
