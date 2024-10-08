# SPDX-License-Identifier: Apache-2.0
# SPDX-FileCopyrightText: 2024 Jiuyang Liu <liu@jiuyang.me>

{ lib, rustPlatform, tbConfig, sv2023 ? true, vpi ? false, enable-trace ? false
, timescale ? 1 }:

rustPlatform.buildRustPackage rec {
  name = "dpi-lib";
  src = ./../../sdramemu;
  cargoHash = "sha256-ZfDtDieB/soQH9RvrKFnbmxZZCXPKAqQjFuuc9T9S0c=";
  buildFeatures = lib.optionals sv2023 [ "sv2023" ]
    ++ lib.optionals vpi [ "vpi" ] ++ lib.optionals enable-trace [ "trace" ];

  env = {
    TIMEOUT = tbConfig.timeout;
    CLOCK_FLIP_TIME = tbConfig.testVerbatimParameter.clockFlipTick * timescale;
  };

  passthru = {
    inherit enable-trace;
    inherit env;
  };
}
