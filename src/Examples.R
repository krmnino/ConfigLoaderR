source("ConfigLoader.R")

ConfigLoader_set_env("C:/Users/kurt_/github/ConfigLoader/src/r")

cf <- ConfigLoader_init("../../tests/testconfig2.cl")

ret <- ConfigLoader_get_value(cf, "cities")

cf <- ConfigLoader_add_entry(cf, "os", "windows")

ret <- ConfigLoader_get_value(cf, "os")

cf <- ConfigLoader_edit_value(cf, "os", "linux")

ret <- ConfigLoader_get_value(cf, "os")

ConfigLoader_save_config(cf, "path.cl")