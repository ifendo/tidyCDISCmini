#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#' 
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  
  # disable tab2 on page load
  # shinyjs::js$disableTab()

  # observeEvent(datafile()$ADSL, {
  #   shinyjs::js$enableTab()
  # })
    pilot_data <- list(
      ADSL = adsl,
      ADVS = advs,
      ADAE = adae,
      ADLBC = adlbc
    )
  
  datafile <- reactive(
    pilot_data
  )
  
  # Individual Explorer
  user_dat <- callModule(mod_indvExp_server, "indvExp_ui_1", datafile = datafile)
  usubjid  <- callModule(mod_indvExpPat_server, "indvExp_ui_1", datafile = datafile,  loaded_adams = user_dat$my_loaded_adams, filtered_dat = user_dat$all_data)
  callModule(mod_indvExpPatEvents_server,  "indvExp_ui_1", datafile,  loaded_adams = user_dat$my_loaded_adams, usubjid = usubjid, filtered_dat = user_dat$all_data)   #, dataselected
  callModule(mod_indvExpPatVisits_server, "indvExp_ui_1", datafile,  loaded_adams = user_dat$my_loaded_adams, usubjid = usubjid, filtered_dat = user_dat$all_data)   #, dataselected

}
