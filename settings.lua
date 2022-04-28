data:extend({
  {
    type = "bool-setting",
    name = "train_announcements_print_announcement_message_enabled",
    setting_type = "runtime-per-user",
    default_value = true,
    order = "001"
  },
  {
    type = "bool-setting",
    name = "train_announcements_play_announcement_sound_enabled",
    setting_type = "runtime-per-user",
    default_value = true,
    order = "002"
  },
  {
    type = "double-setting",
    name = "train_announcements_volume",
    setting_type = "runtime-per-user",
    minimum_value = 0.0,
    maximum_value = 1.0,
    default_value = 1.0,
    order = "003"
  },
  {
    type = "double-setting",
    name = "train_announcements_minimum_seconds_between_announcements",
    setting_type = "runtime-global",
    minimum_value = 0.0,
    default_value = 4.0,
    order = "004"
  },
  {
    type = "double-setting",
    name = "train_announcements_seconds_between_jingle_and_announcement",
    setting_type = "runtime-global",
    minimum_value = 0.1,
    default_value = 2.0,
    order = "005"
  },
  {
    type = "string-setting",
    name = "train_announcements_default_jingle_sound",
    setting_type = "runtime-global",
    default_value = "jingle_airport",
    allowed_values = {"jingle_airport", "jingle_announcement_with_chord____sec_", "jingle_stockholm_s_tunnelbana", "jingle_changing", "jingle_random", "off"},
    order = "006"
  },
  {
    type = "string-setting",
    name = "train_announcements_station_jingle_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport", "jingle_announcement_with_chord____sec_", "jingle_stockholm_s_tunnelbana", "jingle_changing", "jingle_random", "off"},
    order = "007"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_jingle_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport", "jingle_announcement_with_chord____sec_", "jingle_stockholm_s_tunnelbana", "jingle_changing", "jingle_random", "off"},
    order = "008"
  },
  {
    type = "string-setting",
    name = "train_announcements_interruption_jingle_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"jingle_airport", "jingle_announcement_with_chord____sec_", "jingle_stockholm_s_tunnelbana", "jingle_changing", "jingle_random", "off"},
    order = "009"
  },
  {
    type = "string-setting",
    name = "train_announcements_interruption_announcement_sound",
    setting_type = "runtime-global",
    default_value = "interruption_en_gb_standard_a_female_train_has_no_path",
    allowed_values = {"interruption_en_gb_standard_a_female_train_has_no_path", "interruption_en_gb_standard_b_male_train_has_no_path", "interruption_real_ice_train_delay_message", "interruption_changing", "interruption_random", "off"},
    order = "010"
  },
  {
    type = "int-setting",
    name = "train_announcements_number_of_rails_before_station",
    setting_type = "runtime-global",
    minimum_value = 1,
    default_value = 250,
    order = "011"
  },
  {
    type = "string-setting",
    name = "train_announcements_station_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "012"
  },
  {
    type = "string-setting",
    name = "train_announcements_final_station_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "013"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "014"
  },
  {
    type = "string-setting",
    name = "train_announcements_station01_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "015"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "016"
  },
  {
    type = "string-setting",
    name = "train_announcements_station02_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "017"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "018"
  },
  {
    type = "string-setting",
    name = "train_announcements_station03_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "019"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "020"
  },
  {
    type = "string-setting",
    name = "train_announcements_station04_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "021"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "022"
  },
  {
    type = "string-setting",
    name = "train_announcements_station05_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "023"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "024"
  },
  {
    type = "string-setting",
    name = "train_announcements_station06_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "025"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "026"
  },
  {
    type = "string-setting",
    name = "train_announcements_station07_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "027"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "028"
  },
  {
    type = "string-setting",
    name = "train_announcements_station08_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "029"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "030"
  },
  {
    type = "string-setting",
    name = "train_announcements_station09_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "031"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "032"
  },
  {
    type = "string-setting",
    name = "train_announcements_station10_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "033"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "034"
  },
  {
    type = "string-setting",
    name = "train_announcements_station11_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "035"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "036"
  },
  {
    type = "string-setting",
    name = "train_announcements_station12_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "037"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "038"
  },
  {
    type = "string-setting",
    name = "train_announcements_station13_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "039"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "040"
  },
  {
    type = "string-setting",
    name = "train_announcements_station14_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "041"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "042"
  },
  {
    type = "string-setting",
    name = "train_announcements_station15_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "043"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "044"
  },
  {
    type = "string-setting",
    name = "train_announcements_station16_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "045"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "046"
  },
  {
    type = "string-setting",
    name = "train_announcements_station17_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "047"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "048"
  },
  {
    type = "string-setting",
    name = "train_announcements_station18_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "049"
  },
  {
    type = "string-setting",
    name = "train_announcements_station19_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "050"
  },
  {
    type = "string-setting",
    name = "train_announcements_station19_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "051"
  },
  {
    type = "string-setting",
    name = "train_announcements_station20_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "052"
  },
  {
    type = "string-setting",
    name = "train_announcements_station20_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "053"
  },
  {
    type = "string-setting",
    name = "train_announcements_station21_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "054"
  },
  {
    type = "string-setting",
    name = "train_announcements_station21_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "055"
  },
  {
    type = "string-setting",
    name = "train_announcements_station22_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "056"
  },
  {
    type = "string-setting",
    name = "train_announcements_station22_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "057"
  },
  {
    type = "string-setting",
    name = "train_announcements_station23_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "058"
  },
  {
    type = "string-setting",
    name = "train_announcements_station23_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "059"
  },
  {
    type = "string-setting",
    name = "train_announcements_station24_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "060"
  },
  {
    type = "string-setting",
    name = "train_announcements_station24_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "061"
  },
  {
    type = "string-setting",
    name = "train_announcements_station25_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "062"
  },
  {
    type = "string-setting",
    name = "train_announcements_station25_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "063"
  },
  {
    type = "string-setting",
    name = "train_announcements_station26_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "064"
  },
  {
    type = "string-setting",
    name = "train_announcements_station26_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "065"
  },
  {
    type = "string-setting",
    name = "train_announcements_station27_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "066"
  },
  {
    type = "string-setting",
    name = "train_announcements_station27_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "067"
  },
  {
    type = "string-setting",
    name = "train_announcements_station28_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "068"
  },
  {
    type = "string-setting",
    name = "train_announcements_station28_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "069"
  },
  {
    type = "string-setting",
    name = "train_announcements_station29_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "070"
  },
  {
    type = "string-setting",
    name = "train_announcements_station29_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "071"
  },
  {
    type = "string-setting",
    name = "train_announcements_station30_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "072"
  },
  {
    type = "string-setting",
    name = "train_announcements_station30_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "073"
  },
  {
    type = "string-setting",
    name = "train_announcements_station31_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "074"
  },
  {
    type = "string-setting",
    name = "train_announcements_station31_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "075"
  },
  {
    type = "string-setting",
    name = "train_announcements_station32_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "076"
  },
  {
    type = "string-setting",
    name = "train_announcements_station32_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "077"
  },
  {
    type = "string-setting",
    name = "train_announcements_station33_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "078"
  },
  {
    type = "string-setting",
    name = "train_announcements_station33_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "079"
  },
  {
    type = "string-setting",
    name = "train_announcements_station34_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "080"
  },
  {
    type = "string-setting",
    name = "train_announcements_station34_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "081"
  },
  {
    type = "string-setting",
    name = "train_announcements_station35_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "082"
  },
  {
    type = "string-setting",
    name = "train_announcements_station35_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "083"
  },
  {
    type = "string-setting",
    name = "train_announcements_station36_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "084"
  },
  {
    type = "string-setting",
    name = "train_announcements_station36_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "085"
  },
  {
    type = "string-setting",
    name = "train_announcements_station37_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "086"
  },
  {
    type = "string-setting",
    name = "train_announcements_station37_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "087"
  },
  {
    type = "string-setting",
    name = "train_announcements_station38_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "088"
  },
  {
    type = "string-setting",
    name = "train_announcements_station38_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "089"
  },
  {
    type = "string-setting",
    name = "train_announcements_station39_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "090"
  },
  {
    type = "string-setting",
    name = "train_announcements_station39_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "091"
  },
  {
    type = "string-setting",
    name = "train_announcements_station40_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "092"
  },
  {
    type = "string-setting",
    name = "train_announcements_station40_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "093"
  },
  {
    type = "string-setting",
    name = "train_announcements_station41_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "094"
  },
  {
    type = "string-setting",
    name = "train_announcements_station41_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "095"
  },
  {
    type = "string-setting",
    name = "train_announcements_station42_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "096"
  },
  {
    type = "string-setting",
    name = "train_announcements_station42_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "097"
  },
  {
    type = "string-setting",
    name = "train_announcements_station43_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "098"
  },
  {
    type = "string-setting",
    name = "train_announcements_station43_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "099"
  },
  {
    type = "string-setting",
    name = "train_announcements_station44_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "100"
  },
  {
    type = "string-setting",
    name = "train_announcements_station44_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "101"
  },
  {
    type = "string-setting",
    name = "train_announcements_station45_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "102"
  },
  {
    type = "string-setting",
    name = "train_announcements_station45_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "103"
  },
  {
    type = "string-setting",
    name = "train_announcements_station46_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "104"
  },
  {
    type = "string-setting",
    name = "train_announcements_station46_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "105"
  },
  {
    type = "string-setting",
    name = "train_announcements_station47_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "106"
  },
  {
    type = "string-setting",
    name = "train_announcements_station47_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "107"
  },
  {
    type = "string-setting",
    name = "train_announcements_station48_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "108"
  },
  {
    type = "string-setting",
    name = "train_announcements_station48_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "109"
  },
  {
    type = "string-setting",
    name = "train_announcements_station49_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "110"
  },
  {
    type = "string-setting",
    name = "train_announcements_station49_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "111"
  },
  {
    type = "string-setting",
    name = "train_announcements_station50_name_pattern",
    setting_type = "runtime-global",
    default_value = "",
    allow_blank = true,
    order = "112"
  },
  {
    type = "string-setting",
    name = "train_announcements_station50_announcement_sound",
    setting_type = "runtime-global",
    default_value = "off",
    allowed_values = {"station_en_gb_standard_a_female_demand", "station_en_gb_standard_a_female_fuelling", "station_en_gb_standard_a_female_loading", "station_en_gb_standard_a_female_main_base", "station_en_gb_standard_a_female_supply", "station_en_gb_standard_a_female_unloading", "station_en_gb_standard_b_male_demand", "station_en_gb_standard_b_male_fuelling", "station_en_gb_standard_b_male_loading", "station_en_gb_standard_b_male_main_base", "station_en_gb_standard_b_male_supply", "station_en_gb_standard_b_male_unloading", "station_real_boehl_iggelheim", "station_real_guildford", "station_real_worplesdon", "station_changing", "station_random", "off"},
    order = "113"
  },
})
