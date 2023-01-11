# Coding Versions

## 1.3.1

* Error out if we can't find a monitor-config rule based on H x V or just H resolutions.  Fixes a case where the script just hands when a monitor-config is not found.

## 1.3.0

* When a monitor-config rule matching the current display's horizontalXvertical resolution cannot be found, recheck for a rule that matchtes the horizontal with a vertical resolution of 'x9999'.  This allows the script to find a monitor-config rule based on a unique two or three monitor horizontal resolution.  Without this the OS may sometimes adjust the reported vertical resolution in response to ?? display position changes ?? and break exact horizontal x vertical monitor-config rules.

## 1.2.0

* Only echo statements about operation if $DEBUG variable is set. Otherwise, normal operation writes these echo's outputs to the system log.

## 1.1.0

* Ignore commented out rule lines within config file.

## 1.0.1 Publish

* Need an excuse to bump this script's version, so adding VERSION and VERSION_DATE fields and reporting them in usage() function.

## 1.0.0 Publish

* Config file rename from .coding-config to .coding.conf for consistency

## 0.2 Rework

* Rename coding-install.sh to just install.sh to simplify automation

## 0.1 Initial draft release
