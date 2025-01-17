##### SETUP
# Change these locations according to your file structure/naming conventions
$DATA_DIR_SURVEY = "L:/Research Project Current/Social Connectedness/Nelson/dev/survey_data"
$PROCESSED_DIR_SURVEY = "L:/Research Project Current/Social Connectedness/Nelson/dev/survey_results_w_redcap"
$SURVEY_KEY_PATH = "L:/Research Project Current/Social Connectedness/Nelson/dev/survey_key.xlsx"
$FILE_NAME_SURVEY_SUMMARY = "SURVEY_SUMMARY"

$DATA_DIR_ACOUSTIC = "L:/Research Project Current/Social Connectedness/Nelson/dev/acoustic_analysis_data/spa_outputs"
$PROCESSED_DIR_ACOUSTIC = "L:/Research Project Current/Social Connectedness/Nelson/dev/acoustic_analysis_data"
$FILE_NAME_ACOUSTIC_SUMMARY = "ACOUSTIC_SUMMARY"

$DATA_DIR_GPS = "L:/Research Project Current/Social Connectedness/Nelson/dev/gps_data"
$PROCESSED_DIR_GPS = "L:/Research Project Current/Social Connectedness/Nelson/dev/gps_results"
$FILE_NAME_GPS_SUMMARY = "GPS_SUMMARY"
$GPS_QUALITY_THRESH = 0.1

$COMBINED_SUMMARY_OUT_DIR = "L:/Research Project Current/Social Connectedness/Nelson/dev"
$FILE_NAME_COMBINED_SUMMARY = "COMBINED_SUMMARY"


##### Uncomment the line(s) you want to run
# "python" may need to be "py" or a specific version depending on your setup

### Survey
## process_survey
# python -m SocialConnectedness process_survey --data_dir $DATA_DIR_SURVEY --out_dir $PROCESSED_DIR_SURVEY --key_path $SURVEY_KEY_PATH

## To skip certain directories, add them one by one. To process data in zip files, pass the flag "--use_zips" (no following value needed):
# python -m SocialConnectedness process_survey --data_dir $DATA_DIR_SURVEY --out_dir $PROCESSED_DIR_SURVEY --key_path $SURVEY_KEY_PATH --skip_dirs "dir1" "dir2" --use_zips

## aggregate_survey
# python -m SocialConnectedness aggregate_survey --data_dir $PROCESSED_DIR_SURVEY --out_dir $PROCESSED_DIR_SURVEY --key_path $SURVEY_KEY_PATH --out_name $FILE_NAME_SURVEY_SUMMARY

### Acoustic
# python -m SocialConnectedness aggregate_acoustic --data_dir $DATA_DIR_ACOUSTIC --out_dir $PROCESSED_DIR_ACOUSTIC --out_name $FILE_NAME_ACOUSTIC_SUMMARY

### GPS
## process_gps
# python -m SocialConnectedness process_gps --data_dir $DATA_DIR_GPS --out_dir $PROCESSED_DIR_GPS --quality_thresh $GPS_QUALITY_THRESH

## To process specific subject IDs. Follow this template:
# python -m SocialConnectedness process_gps --data_dir $DATA_DIR_GPS --out_dir $PROCESSED_DIR_GPS --subject_ids "subject1" "subject2"

## aggregate_gps
# python -m SocialConnectedness aggregate_gps --data_dir $DATA_DIR_GPS --out_dir $PROCESSED_DIR_GPS --out_name $FILE_NAME_GPS_SUMMARY

## Other

## Uncomment three lines below when running combine_summaries
## Make sure to only pass summaries sheets that exist
# $ACOUSTIC_SUMMARY_PATH = Join-Path -Path $PROCESSED_DIR_ACOUSTIC -ChildPath "$FILE_NAME_ACOUSTIC_SUMMARY.xlsx"
# $SURVEY_SUMMARY_PATH = Join-Path -Path $PROCESSED_DIR_SURVEY -ChildPath "$FILE_NAME_SURVEY_SUMMARY.xlsx"
# $GPS_SUMMARY_PATH = Join-Path -Path $PROCESSED_DIR_GPS -ChildPath "$FILE_NAME_GPS_SUMMARY.csv"

## combine all summaries
# python -m SocialConnectedness combine_summaries --out_dir $COMBINED_SUMMARY_OUT_DIR --out_name $FILE_NAME_COMBINED_SUMMARY --acoustic_path $ACOUSTIC_SUMMARY_PATH --survey_path $SURVEY_SUMMARY_PATH --gps_path $GPS_SUMMARY_PATH

## All other valid combine_summaries configurations
# python -m SocialConnectedness combine_summaries --out_dir $COMBINED_SUMMARY_OUT_DIR --out_name $FILE_NAME_COMBINED_SUMMARY --survey_path $SURVEY_SUMMARY_PATH --gps_path $GPS_SUMMARY_PATH
# python -m SocialConnectedness combine_summaries --out_dir $COMBINED_SUMMARY_OUT_DIR --out_name $FILE_NAME_COMBINED_SUMMARY --acoustic_path $ACOUSTIC_SUMMARY_PATH --gps_path $GPS_SUMMARY_PATH 
# python -m SocialConnectedness combine_summaries --out_dir $COMBINED_SUMMARY_OUT_DIR --out_name $FILE_NAME_COMBINED_SUMMARY --acoustic_path $ACOUSTIC_SUMMARY_PATH --survey_path $SURVEY_SUMMARY_PATH
