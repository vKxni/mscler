import Config

DotenvParser.load_file(".env")

config :mscler,
  env: Config.config_env(),
  token: System.get_env("MSCLE_TOKEN"),
  mscler_url: System.get_env("MSCLE_URL"),
  mscler_host: System.get_env("MSCLE_HOST"),

  # host data
  mscler_key: System.get_env("MSCLE_KEY"),
  mscler_port: System.get_env("MSCLE_PORT"),

  # single data
  mscler_biceps: System.get_env("MSCLE_BICEPS"),
  mscler_abdominals: System.get_env("MSCLE_ABDOMINALS"),

  mscler_abductors: System.get_env("MSCLE_ABDUCTORS"),
  mscler_calves: System.get_env("MSCLE_CALVES"),

  mscler_chest: System.get_env("MSCLE_CHEST"),
  mscler_forearms: System.get_env("MSCLE_FOREARMS"),

  mscler_glutes: System.get_env("MSCLE_GLUTES"),
  mscler_hamstrings: System.get_env("MSCLE_HAMSTRINGS"),

  mscler_lats: System.get_env("MSCLE_LATS"),
  mscler_lower_back: System.get_env("MSCLE_LOWER_BACK"),
  mscler_middle_back: System.get_env("MSCLE_MIDDLE_BACK"),

  mscler_neck: System.get_env("MSCLE_NECK"),

  mscler_quadriceps: System.get_env("MSCLE_QUADRICEPS"),
  mscler_traps: System.get_env("MSCLE_TRAPS"),
  mscler_triceps: System.get_env("MSCLE_TRICEPS")
