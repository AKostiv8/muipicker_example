library(shiny)
library(shiny.router)
library(shinyjs)
library(sass)
library(stringr)
library(shiny.muicalendar)

# sass(
#     sass_file("www/style.scss"),
#     "www/style.css",
#     options = sass_options(output_style = "compressed",
#                            source_map_embed = TRUE)
# )

source('pages/date_page.R')
source('pages/time_page.R')
source('pages/datetime_page.R')

router <- make_router(
    route("/", date_page_UI, date_page_server),
    route("time", time_page_UI, time_page_server),
    route("date_time", datetime_page_UI, datetime_page_server)
)

# Define UI
ui <- div(
    # Enable JS
    useShinyjs(),
    # Application style
    tags$head(
        tags$title('MUI Calendar'),
        tags$link(href = "style.css", rel = "stylesheet", type = "text/css"),
        tags$link(href = "https://fonts.googleapis.com/icon?family=Material+Icons", rel = "stylesheet")
    ),

    withTags(
        # Header tab
        div(
            class = "action-bar",
            div(class = "title"),
            div(class = "icons",
                h3(a(href="https://github.com/AKostiv8/shiny.muicalendar", "MUI Date Picker"))
                )
        )
    ),
    # Side navigation
    div(class = "side-nav",
        # Header
        tags$header(
            div(
                class = "avatars-container",
                img(src = "hexagon-geometrical-shape-outline (1).png", width = "100%")
            )
        ),
        # Navigation
        tags$nav(
            tags$ul(
                tags$li(id="date_tab", class="active",
                    a(
                      href = "./#!/",
                      tags$i(class = "material-icons", "calendar_today"),
                      "Date Picker"
                    )
                ),
                tags$li(id="time_tab", class="active",
                  a(
                    href = "./#!/time",
                    tags$i(class = "material-icons", "update"),
                    "Time Picker"
                  )
                ),
                tags$li(id="datetime_tab", class="active",
                  a(
                    href = "./#!/date_time",
                    tags$i(class = "material-icons", "date_range"),
                    "Date & Time Picker"
                  )
                )
            )
        )
    ),


    router$ui


)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
    router$server(input, output, session)

    observe({
        if (is_page("/")) {
            runjs('$( "#date_tab" ).addClass( "active" );')
            runjs('$( "#time_tab" ).removeClass( "active" );')
            runjs('$( "#datetime_tab" ).removeClass( "active" );')
        }
        if (is_page("time")) {
            runjs('$( "#time_tab" ).addClass( "active" );')
            runjs('$( "#date_tab" ).removeClass( "active" );')
            runjs('$( "#datetime_tab" ).removeClass( "active" );')
        }
        if (is_page("date_time")) {
            runjs('$( "#datetime_tab" ).addClass( "active" );')
            runjs('$( "#date_tab" ).removeClass( "active" );')
            runjs('$( "#time_tab" ).removeClass( "active" );')
        }
    })


}

# Run the application
shinyApp(ui = ui, server = server)
