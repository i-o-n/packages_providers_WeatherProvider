/*
 * Copyright (C) 2018 Pixel Experience
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.android.providers.weather.utils;

public class Constants {

    public static final Boolean DEBUG = false;
    public static final long LOCATION_QUERY_MAX_TIME = 15000; // 15 seconds on milliseconds
    public static final int API_CACHE_NO_CONNECTION_MAX_TIME = 3600; // 1 hour on seconds if no internet available
}
