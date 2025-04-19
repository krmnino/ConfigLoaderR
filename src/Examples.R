source("ConfigLoader.R")

ConfigLoader_set_env("~/remote/github/ConfigLoaderR/src")

cf <- ConfigLoader_init("test.cl")

ret <- ConfigLoader_get_value(cf, "cities")

cf <- ConfigLoader_add_entry(cf, "os", "windows")

ret <- ConfigLoader_get_value(cf, "os")

cf <- ConfigLoader_edit_value(cf, "os", "linux")

ret <- ConfigLoader_get_value(cf, "os")

ConfigLoader_save_config(cf, "path.cl")
