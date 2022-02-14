# UI ----------------------------------------------------------------------
time_page_UI <- div(class = "main-content",
                    h1("Basic usage", tags$i(id="BasicTimeInputBTN_ID", class = "material-icons material-icons-code", "code")),
                    div(id="BasicTimeInputFragment_ID",
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
                        material_timepickerInput(
                          "time_basic1_id",
                          label = '12 hours',
                          value = Sys.time(),
                          showTodayButton = FALSE,
                          autoOk = FALSE,
                          ampm = TRUE
                        ),
                        material_timepickerInput(
                          "time_basic2_id",
                          value = Sys.time(),
                          label = '24 hours | outlined',
                          outlined = TRUE,
                          autoOk = FALSE,
                          showTodayButton = FALSE,
                          primary_color = "#f90",
                        ),
                        material_timepickerInput(
                          "time_basic3_id",
                          label = 'Step = 5',
                          value = Sys.time(),
                          ampm = TRUE,
                          showTodayButton = TRUE,
                          todayLabel = "now",
                          minutesStep = 5,
                        )
                    ),
                    h1("Keyboard input", tags$i(id="KeyboardTimeInputBTN_ID", class = "material-icons material-icons-code", "code")),
                    div(id="KeyboardTimeInputFragment_ID",
                        class="code_fragment",
                        tags$pre('# Keyboard input example
                        material_timepicker_keyboardInput("keyboard_input_id",
                                                          label = "Masked timepicker",
                                                          showTodayButton = FALSE,
                                                          autoOk = FALSE,
                                                          ampm = TRUE,
                                                          mask = "__:__ _M",
                                                          placeholder = "08:00 AM",
                                                          format = "HH:mm"
                        )'
                        )
                    ),
                    div(class = "custom_row_container",
                        material_timepicker_keyboardInput(
                          "keyboard_input_id",
                          label = "Masked timepicker",
                          showTodayButton = FALSE,
                          autoOk = FALSE,
                          ampm = TRUE,
                          mask = "__:__ _M",
                          placeholder = "08:00 AM",
                          format = "HH:mm"
                        )
                    ),
                    h1("Inline mode", tags$i(id="InlineTimeInputBTN_ID", class = "material-icons material-icons-code", "code")),
                    div(id="InlineTimeInputFragment_ID",
                        class="code_fragment",
                        tags$pre('# Inline mode input example 1
                        material_timepickerInput("inline_input_1_id",
                                                  value = Sys.time(),
                                                  label = "Inline mode",
                                                  showTodayButton = FALSE,
                                                  autoOk = FALSE,
                                                  ampm = TRUE,
                                                  variant = "inline"
                        )'
                        )
                    ),
                    div(class = "custom_row_container",
                        material_timepickerInput(
                          "inline_input_1_id",
                          value = Sys.time(),
                          label = "Inline mode",
                          showTodayButton = FALSE,
                          autoOk = FALSE,
                          ampm = TRUE,
                          openTo = "minutes",
                          variant = "inline"
                        ),
                        material_timepickerInput(
                          "inline_input_2_id",
                          value = Sys.time(),
                          label = "autoOK | horizontal",
                          showTodayButton = FALSE,
                          ampm = TRUE,
                          variant = "inline",
                          autoOk = TRUE,
                          outlined = TRUE,
                          horizontal_orientation = TRUE
                        ),
                        material_timepicker_keyboardInput(
                          "inline_input_3_id",
                          value = Sys.time(),
                          showTodayButton = FALSE,
                          label = "With keyboard",
                          ampm = FALSE,
                          variant = "inline",
                          autoOk = TRUE,
                          outlined = TRUE,
                          horizontal_orientation = TRUE,
                          format = "HH:mm",
                          mask = "__:__",
                        )
                    ),
                    h1("Static mode", tags$i(id="StaticTimeInputBTN_ID", class = "material-icons material-icons-code", "code")),
                    div(id="StaticTimeInputFragment_ID",
                        class="code_fragment",
                        tags$pre('# Static mode input example 1
                        material_timepickerInput("inline_input_1_id",
                                                  value = Sys.time(),
                                                  label = "Inline mode",
                                                  showTodayButton = FALSE,
                                                  autoOk = FALSE,
                                                  ampm = TRUE,
                                                  variant = "inline"
                        )'
                        )
                    ),
                    div(class = "custom_row_container",
                        material_timepickerInput(
                          "static_input_1_id",
                          value = Sys.time(),
                          label = "Static mode",
                          showTodayButton = FALSE,
                          autoOk = FALSE,
                          openTo = "minutes",
                          views = "hms",
                          variant = "static"
                        ),
                        material_timepickerInput(
                          "static_input_2_id",
                          value = Sys.time(),
                          label = "Static",
                          showTodayButton = FALSE,
                          variant = "static",
                          autoOk = TRUE,
                          views = "hm",
                          ampm = TRUE,
                          horizontal_orientation = TRUE
                        )
                    ),
                    h1("Seconds", tags$i(id="SecondTimeInputBTN_ID", class = "material-icons material-icons-code", "code")),
                    div(id="SecondTimeInputFragment_ID",
                        class="code_fragment",
                        tags$pre('# Seconds input input example 1
                        material_timepickerInput("inline_input_1_id",
                                                  value = Sys.time(),
                                                  label = "Inline mode",
                                                  showTodayButton = FALSE,
                                                  autoOk = FALSE,
                                                  ampm = TRUE,
                                                  variant = "inline"
                        )'
                        )
                    ),
                    div(class = "custom_row_container",
                        material_timepickerInput(
                          "second_input_1_id",
                          value = Sys.time(),
                          label = "With seconds",
                          showTodayButton = FALSE,
                          autoOk = FALSE,
                          openTo = "seconds",
                          views = "hms",
                        ),
                        material_timepickerInput(
                          "second_input_2_id",
                          value = Sys.time(),
                          label = "Minutes and seconds",
                          showTodayButton = TRUE,
                          views = "ms"
                        )
                    )
)


# Server ------------------------------------------------------------------
time_page_server <- function(input, output, session) {

}
