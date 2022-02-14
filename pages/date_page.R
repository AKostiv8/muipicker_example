# UI ----------------------------------------------------------------------
date_page_UI <- div(
                    class = "main-content",
                    h1("Basic usage", tags$i(id="BasicCalendarInputBTN_ID", class = "material-icons material-icons-code", "code")),
                    div(id="BasicCalendarInputFragment_ID",
                        class="code_fragment",
                        tags$pre('# Basic calendar usage example 1
                        material_calendarInput("calendar_basic_id",
                                                label = "Basic example",
                                                view = "year-month-day",
                                                autoOk = FALSE,
                                                disableToolbar = FALSE
                        )'
                        ),
                        tags$pre('# Basic calendar usage example 2
                        material_calendarInput("calendar_future_id",
                                                value = Sys.Date(),
                                                primary_color = "#f90",
                                                label = "Disable future",
                                                view = "year-day",
                                                outlined = TRUE,
                                                disableFuture = TRUE,
                                                autoOk = FALSE
                        )'
                        ),
                        tags$pre('# Basic calendar usage example 3
                        material_calendarInput("calendar_birth_id",
                                                label = "Date of Birth",
                                                view = "year-month-day",
                                                format = "dd/MM/yyyy",
                                                openTo = "year",
                                                autoOk = FALSE
                        )'
                        )
                    ),
                    div(class = "custom_row_container",
                      material_calendarInput(
                        "calendar_basic_id",
                        label = 'Basic example',
                        view = "year-month-day",
                        autoOk = FALSE,
                        disableToolbar = FALSE
                      ),
                      material_calendarInput(
                        "calendar_future_id",
                        value = Sys.Date(),
                        primary_color = '#f90',
                        label = 'Disable future',
                        view = "year-day",
                        disableFuture = TRUE,
                        outlined = TRUE,
                        autoOk = FALSE
                      ),
                      material_calendarInput(
                        "calendar_birth_id",
                        label = 'Date of Birth',
                        view = "year-month-day",
                        format = 'dd/MM/yyyy',
                        openTo = 'year',
                        autoOk = FALSE
                      )
                    ),
                    h1("Keyboard Input", tags$i(id="KeyboardInputBTN_ID", class = "material-icons material-icons-code", "code")),
                    div(id="KeyboardInputFragment_ID",
                        class="code_fragment",
                        tags$pre('# Keyboard input example 1
                        material_calendar_keyboardInput("calendarkeyboard_test_id",
                                                         value = NULL,
                                                         label = "Keyboard input",
                                                         outlined = TRUE,
                                                         format = "yyyy/MM/dd",
                                                         autoOk = FALSE,
                                                         disableToolbar = FALSE,
                                                         minDate = "2021/10/22",
                                                         maxDate = "2022/11/20"
                        )'
                        ),
                        tags$pre('# Keyboard input example 2
                        material_calendar_keyboardInput("calendarkeyboard_example2_id",
                                                         value = Sys.Date(),
                                                         label = "Keyboard input",
                                                         outlined = TRUE,
                                                         variant = "inline",
                                                         format = "yyyy/MM/dd",
                                                         minDate = "2021/10/22",
                                                         maxDate = "2022/11/20"
                        )'
                        )
                    ),
                    div(class = "custom_row_container",
                        material_calendar_keyboardInput("calendarkeyboard_test_id",
                                               value = NULL,
                                               label = 'Keyboard input',
                                               outlined = TRUE,
                                               format = "yyyy/MM/dd",
                                               autoOk = FALSE,
                                               disableToolbar = FALSE,
                                               minDate = "2021/10/22",
                                               maxDate = "2022/11/20"
                        ),
                        material_calendar_keyboardInput("calendarkeyboard_example2_id",
                                                        value = Sys.Date(),
                                                        label = 'Keyboard input',
                                                        outlined = TRUE,
                                                        variant = "inline",
                                                        format = "yyyy/MM/dd",
                                                        minDate = '2021/10/22',
                                                        maxDate = '2021/11/20'
                        )
                    ),
                    h1("Different views", tags$i(id="DiferentViewCalendarInputBTN_ID", class = "material-icons material-icons-code", "code")),
                    p("It is also allowed to combine year, month and date selection views. Thus you can easily create"),
                    tags$ul(
                      tags$li("Year picker"),
                      tags$li("Month picker"),
                      tags$li("Month + year picker")
                    ),
                    div(id="DiferentViewCalendarInputFragment_ID",
                        class="code_fragment",
                        tags$pre('# Year only calendar example
                        material_calendarInput("calendar_year_view_id",
                                                value = "2019-01-01",
                                                label = "Year only",
                                                view = "year",
                                                autoOk = FALSE,
                                                disableToolbar = FALSE
                        )'
                        ),
                        tags$pre('# Year & month calendar example
                        material_calendarInput("calendar_year_month_view_id",
                                                value = Sys.Date(),
                                                label = "Year and Month",
                                                autoOk = FALSE,
                                                helperText = "With min and max",
                                                view = "year-month",
                                                openTo = "month",
                                                disableToolbar = FALSE,
                                                minDate = "2018/01/01",
                                                maxDate = "2021/12/31"
                        )'
                        ),
                        tags$pre('# Year & month calendar example
                        material_calendarInput("calendar_year_month_view_two_id",
                                                value = Sys.Date(),
                                                label = "Year and Month",
                                                autoOk = TRUE,
                                                variant = "inline",
                                                helperText = "Start from year selection",
                                                view = "year-month",
                                                openTo = "year"
                        )'
                        )
                    ),
                    div(class = "custom_row_container",
                        material_calendarInput("calendar_year_view_id",
                                                value = "2019-01-01",
                                                label = 'Year only',
                                                autoOk = FALSE,
                                                view = "year",
                                                disableToolbar = FALSE
                        ),
                        material_calendarInput("calendar_year_month_view_id",
                                                value = Sys.Date(),
                                                label = 'Year and Month',
                                                autoOk = FALSE,
                                                helperText = "With min and max",
                                                view = "year-month",
                                                openTo = "month",
                                                disableToolbar = FALSE,
                                                minDate = '2018/01/01',
                                                maxDate = '2021/12/31'
                        ),
                        material_calendarInput("calendar_year_month_view_two_id",
                                                value = Sys.Date(),
                                                label = 'Year and Month',
                                                autoOk = TRUE,
                                                variant = "inline",
                                                helperText = "Start from year selection",
                                                view = "year-month",
                                                openTo = "year"
                        )
                    ),
                    h1("Inline mode", tags$i(id="InlineCalendarInputBTN_ID", class = "material-icons material-icons-code", "code")),
                    div(id="InlineCalendarInputFragment_ID",
                        class="code_fragment",
                        tags$pre('# Inline calendar basic example
                        material_calendarInput("calendar_inline_basic_example_id",
                                               value = Sys.Date(),
                                               label = "Basic example",
                                               variant = "inline",
                                               autoOk = FALSE,
                                               disableToolbar = FALSE
                        )'
                        ),
                        tags$pre('# Only calendar example
                        material_calendarInput("calendar_inline_only_calendar_id",
                                               value = Sys.Date(),
                                               label = "Only calendar",
                                               variant = "inline",
                                               disableToolbar = TRUE,
                                               autoOk = TRUE,
                                               helperText = "No year selection"
                        )'
                        ),
                        tags$pre('# Inline horizontal keyboard calendar example
                        material_calendar_keyboardInput("calendarkeyboard_inline_id",
                                                        value = Sys.Date(),
                                                        label = "Keyboard horizontal",
                                                        outlined = TRUE,
                                                        autoOk = TRUE,
                                                        variant = "inline",
                                                        format = "MM/dd/yyyy",
                                                        horizontal_orientation = TRUE
                        )'
                        )
                    ),
                    div(class = "custom_row_container",
                        material_calendarInput("calendar_inline_basic_example_id",
                                               value = Sys.Date(),
                                               label = "Basic example",
                                               variant = "inline",
                                               autoOk = FALSE,
                                               disableToolbar = FALSE
                        ),
                        material_calendarInput("calendar_inline_only_calendar_id",
                                               value = Sys.Date(),
                                               label = "Only calendar",
                                               variant = "inline",
                                               disableToolbar = TRUE,
                                               autoOk = TRUE,
                                               helperText = "No year selection"
                        ),
                        material_calendar_keyboardInput("calendarkeyboard_inline_id",
                                                        value = Sys.Date(),
                                                        label = 'Keyboard horizontal',
                                                        outlined = TRUE,
                                                        autoOk = TRUE,
                                                        variant = "inline",
                                                        format = "MM/dd/yyyy",
                                                        horizontal_orientation = TRUE
                        )
                    ),
                    h1("Static Mode", tags$i(id="StaticCalendarInputBTN_ID", class = "material-icons material-icons-code", "code")),
                    div(id="StaticCalendarInputFragment_ID",
                        class="code_fragment",
                        tags$pre('# Static vertical calendar example
                        material_calendarInput("calendar_static_vertical_id",
                                               value = NULL,
                                               variant = "static",
                                               autoOk = FALSE,
                                               disableToolbar = FALSE,
                                               minDate = "2021/10/22",
                                               maxDate = "2022/11/20"
                        )'
                        ),
                        tags$pre('# Static horizontal calendar example
                        material_calendarInput("calendar_static_horizontal_id",
                                               value = Sys.Date(),
                                               variant = "static",
                                               view = "year-month-day",
                                               horizontal_orientation = TRUE
                        )'
                        )
                    ),
                    div(class = "custom_row_container",
                        material_calendarInput("calendar_static_vertical_id",
                                               value = NULL,
                                               variant = "static",
                                               autoOk = FALSE,
                                               disableToolbar = FALSE,
                                               minDate = '2021/10/22',
                                               maxDate = '2022/11/20'
                        ),
                        material_calendarInput("calendar_static_horizontal_id",
                                               value = Sys.Date(),
                                               variant = "static",
                                               view = "year-month-day",
                                               horizontal_orientation = TRUE
                        )
                    )
)


# Server ------------------------------------------------------------------
date_page_server <- function(input, output, session) {
  runjs('$( "#BasicCalendarInputBTN_ID" ).click(function() {
           $( "#BasicCalendarInputFragment_ID" ).toggle( "slow" );
         });')

  runjs('$( "#KeyboardInputBTN_ID" ).click(function() {
           $( "#KeyboardInputFragment_ID" ).toggle( "slow" );
         });')

  runjs('$( "#DiferentViewCalendarInputBTN_ID" ).click(function() {
           $( "#DiferentViewCalendarInputFragment_ID" ).toggle( "slow" );
         });')

  runjs('$( "#InlineCalendarInputBTN_ID" ).click(function() {
           $( "#InlineCalendarInputFragment_ID" ).toggle( "slow" );
         });')

  runjs('$( "#StaticCalendarInputBTN_ID" ).click(function() {
           $( "#StaticCalendarInputFragment_ID" ).toggle( "slow" );
         });')
}
