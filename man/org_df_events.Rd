% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod_indvExp_fct_organizeEvent.R
\name{org_df_events}
\alias{org_df_events}
\title{Organize Data Frame Events}
\usage{
org_df_events(
  df_name,
  df_domain_abbr,
  df_desc,
  df_st_date_vars,
  event_desc_vars,
  event_desc,
  mi_input_checkbox,
  mi_input_apply_filter,
  mi_loaded_adams,
  mi_datafile,
  mi_filtered_dat,
  mi_usubjid
)
}
\arguments{
\item{df_name}{A character string containing the name of the OCCD ADaM data
set to organize. Ex: "ADAE"}

\item{df_domain_abbr}{A character string of the shorthand abbreviation for
the same dataset, usually whatever comes after "AD". Ex: "AE"}

\item{df_desc}{A character string that provides the full name/description of
the dataset. Ex: "Adverse Events"}

\item{df_st_date_vars}{A character vector containing possible date variables
to summarize the events of interest. If more than 1 date variable is
provided in the vector, then the first element that exists in the data will
be used. Ex: if df_st_date_vars = c("AESTDT","ASTDT"), then AESTDT will be
used if it exists in the data set provided above. However, if AESTDT is
missing, then ASTDT will be used if it exists.}

\item{event_desc_vars}{A character vector containing the names of multiple
variables needed from the data set above for event_desc.}

\item{event_desc}{A character string containing the name of a variable or
even an expression to compute the event description to be displayed and
contains the variables in event_desc_vars}

\item{mi_input_checkbox}{A character vector of event names selected. Some
possible event names include "Milestones", "Adverse Events", "Con Meds",
"Labs", "Medical History", etc...}

\item{mi_input_apply_filter}{Logical; If \code{TRUE} then toggle data frame used
to build events to "mi_filtered_dat", which is pre-filtered data frame from
IDEAFilter}

\item{mi_loaded_adams}{A character vector of available dataframes in
mi_datafile}

\item{mi_datafile}{A list of data frames}

\item{mi_filtered_dat}{The output from IDEAFilter, a pre-filtered dataset}

\item{mi_usubjid}{Character patient number, in the standard USUBJID format}
}
\value{
Data frame standardized from various OCCDs class files
}
\description{
Gather various shiny inputs from an OCCD dataset and return a single
standardized events dataset
}
\seealso{
Other indvExp Functions: 
\code{\link{build_events}()},
\code{\link{fnIndvExplVisits}()},
\code{\link{mod_indvExpPatEvents_server}()},
\code{\link{mod_indvExpPatVisits_server}()},
\code{\link{mod_indvExpPat_server}()},
\code{\link{mod_indvExp_server}()},
\code{\link{mod_indvExp_ui}()}
}
\concept{indvExp Functions}
