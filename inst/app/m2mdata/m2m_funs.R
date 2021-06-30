m2m_dataset <- function(x){

  # print(paste0("loading data for ", x))
  switch(x,
         # load m2m brfss datasets
         "brfsstrends" = {
           load("../../inst/app/m2mdata/Trends for Behavioral Risk Factor Surveillance System.rda")
           return(brfss_trend)
           },
         "brfss19" = {
           load("../../inst/app/m2mdata/Behavioral Risk Factor Surveillance System 2019.rda")
           return(managed_brfss_2019_df)
           },
         "brfss15" = {
           load("../../inst/app/m2mdata/Behavioral Risk Factor Surveillance System 2015.rda")
           return(brfss_15)
           },
         "brfss14" = {
           load("../../inst/app/m2mdata/Behavioral Risk Factor Surveillance System 2014.rda")
           return(brfss_14)
           },
         "brfss13" = {
           load("../../inst/app/m2mdata/Behavioral Risk Factor Surveillance System 2013.rda")
           return(brfss_13)
           },
         "brfss12" = {
           load("../../inst/app/m2mdata/Behavioral Risk Factor Surveillance System 2012.rda")
           return(brfss_12)
           },

         # load m2m yrbs datasets
         "yrbstrends" = {
           load("../../inst/app/m2mdata/Trends for Youth Risk Behavior Surveillance.rda")
           return(yrbs_trend)
         },
         "yrbsus17" = {
           load("../../inst/app/m2mdata/Youth Risk Behavior Surveillance US 2017.rda")
           return(YRBS_df)
         },
         "yrbsus15" = {
           load("../../inst/app/m2mdata/Youth Risk Behavior Surveillance US 2015.rda")
           return(YRBS_df)
         },
         "yrbsus13" = {
           load("../../inst/app/m2mdata/Youth Risk Behavior Surveillance US 2013.rda")
           return(YRBS_df)
         },
         "yrbspr17" = {
           load("../../inst/app/m2mdata/Youth Risk Behavior Surveillance PR 2017.rda")
           return(YRBS_df)
         },
         "yrbspr15" = {
           load("../../inst/app/m2mdata/Youth Risk Behavior Surveillance PR 2015.rda")
           return(YRBS_df)
         },
         "yrbspr13" = {
           load("../../inst/app/m2mdata/Youth Risk Behavior Surveillance PR 2013.rda")
           return(YRBS_df)
         },

         # load m2m nhis datasets
         "nhistrends" = {
           load("../../inst/app/m2mdata/Trends for National Health Interview Survey.rda")
           return(nhis_trend)
         },
         "nhis19" = {
           load("../../inst/app/m2mdata/National Health Interview Survey 2019.rda")
           return(nhis2019_df)
         },

         )# switch end

} # m2m_dataset end


m2m_ext <- function(name){

  # print(paste0("setting extentions for: ", x))
  ext <- list()

  ext[1] <- name
  ext[2] <- '{objname} <- load_clip()'
  ext[3] <- '#### Matrix2Metrics Data\nData loaded from M2M on {lubridate::now()}'

  return(ext)
} # m2m_ext end


# inputs for m2m brfss datasets
# "Trends for Behavioral Risk Factor Surveillance System" = "brfsstrends",
# "Behavioral Risk Factor Surveillance System 2019" = "brfss19",
# "Behavioral Risk Factor Surveillance System 2015" = "brfss15",
# "Behavioral Risk Factor Surveillance System 2014" = "brfss14",
# "Behavioral Risk Factor Surveillance System 2013" = "brfss13",
# "Behavioral Risk Factor Surveillance System 2012" = "brfss12",
#
# inputs for m2m yrbs datasets
# "Trends for Youth Risk Behavior Surveillance" = "yrbstrends",
# "Youth Risk Behavior Surveillance US 2017" = "yrbsus17",
# "Youth Risk Behavior Surveillance US 2017" = "yrbsus17",
# "Youth Risk Behavior Surveillance US 2015" = "yrbsus15",
# "Youth Risk Behavior Surveillance US 2015" = "yrbsus13",
#
# "Youth Risk Behavior Surveillance PR 2017" = "yrbspr17",
# "Youth Risk Behavior Surveillance PR 2015" = "yrbspr15",
# "Youth Risk Behavior Surveillance PR 2013" = "yrbspr13",
#
# inputs for m2m nhis datasets
# "Trends for National Health Interview Survey" = "nhistrends",
# "National Health Interview Survey 2019" = "nhis19",

# condition = "input.dataType != 'clipboard' &&
#                      input.dataType != 'examples' &&
#
#                      input.dataType != 'brfsstrends' &&
#                      input.dataType != 'brfss19' &&
#                      input.dataType != 'brfss15' &&
#                      input.dataType != 'brfss14' &&
#                      input.dataType != 'brfss13' &&
#                      input.dataType != 'brfss12' &&
#
#                      input.dataType != 'yrbstrends' &&
#                      input.dataType != 'yrbsus17' &&
#                      input.dataType != 'yrbsus15' &&
#                      input.dataType != 'yrbsus13' &&
#
#                      input.dataType != 'yrbspr17' &&
#                      input.dataType != 'yrbspr15' &&
#                      input.dataType != 'yrbspr13' &&
#
#                      input.dataType != 'nhistrends' &&
#                      input.dataType != 'nhis19'",
#
# condition = "input.dataType == 'examples' ||
#
#                      input.dataType == 'brfsstrends' ||
#                      input.dataType == 'brfss19' ||
#                      input.dataType == 'brfss15' ||
#                      input.dataType == 'brfss14' ||
#                      input.dataType == 'brfss13' ||
#                      input.dataType == 'brfss12' ||
#
#                      input.dataType == 'yrbstrends' ||
#                      input.dataType == 'yrbsus17' ||
#                      input.dataType == 'yrbsus15' ||
#                      input.dataType == 'yrbsus13' ||
#
#                      input.dataType == 'yrbspr17' ||
#                      input.dataType == 'yrbspr15' ||
#                      input.dataType == 'yrbspr13' ||
#
#                      input.dataType == 'nhistrends' ||
#                      input.dataType == 'nhis19'",
