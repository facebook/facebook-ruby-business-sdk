# Copyright (c) 2017-present, Facebook, Inc. All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# FB:AUTOGEN

module FacebookAds
  # This class is auto-generated.

  # For any issues or feature requests related to this class, please let us know
  # on github and we'll fix in our codegen framework. We'll not be able to accept
  # pull request for this class.

  class MeasurementUploadEvent < AdObject
    AGGREGATION_LEVEL = [
      "DAILY",
      "NONE",
      "WEEKLY",
    ]

    EVENT_STATUS = [
      "CANCELCOMPLETED",
      "CANCELED",
      "COMPLETED",
      "FAILED",
      "STARTED",
      "UPLOADED",
    ]

    LOOKBACK_WINDOW = [
      "DAYS30",
      "DAYS45",
      "DAYS60",
      "DAYS90",
    ]

    MATCH_UNIVERSE = [
      "FULL",
      "PII",
      "PIXEL",
    ]

    TIMEZONE = [
      "TZ_AFRICA_ACCRA",
      "TZ_AFRICA_CAIRO",
      "TZ_AFRICA_CASABLANCA",
      "TZ_AFRICA_JOHANNESBURG",
      "TZ_AFRICA_LAGOS",
      "TZ_AFRICA_NAIROBI",
      "TZ_AFRICA_TUNIS",
      "TZ_AMERICA_ANCHORAGE",
      "TZ_AMERICA_ARGENTINA_BUENOS_AIRES",
      "TZ_AMERICA_ARGENTINA_SALTA",
      "TZ_AMERICA_ARGENTINA_SAN_LUIS",
      "TZ_AMERICA_ASUNCION",
      "TZ_AMERICA_ATIKOKAN",
      "TZ_AMERICA_BELEM",
      "TZ_AMERICA_BLANC_SABLON",
      "TZ_AMERICA_BOGOTA",
      "TZ_AMERICA_CAMPO_GRANDE",
      "TZ_AMERICA_CARACAS",
      "TZ_AMERICA_CHICAGO",
      "TZ_AMERICA_COSTA_RICA",
      "TZ_AMERICA_DAWSON",
      "TZ_AMERICA_DAWSON_CREEK",
      "TZ_AMERICA_DENVER",
      "TZ_AMERICA_DETROIT",
      "TZ_AMERICA_EDMONTON",
      "TZ_AMERICA_EL_SALVADOR",
      "TZ_AMERICA_GUATEMALA",
      "TZ_AMERICA_GUAYAQUIL",
      "TZ_AMERICA_HALIFAX",
      "TZ_AMERICA_HERMOSILLO",
      "TZ_AMERICA_IQALUIT",
      "TZ_AMERICA_JAMAICA",
      "TZ_AMERICA_LA_PAZ",
      "TZ_AMERICA_LIMA",
      "TZ_AMERICA_LOS_ANGELES",
      "TZ_AMERICA_MANAGUA",
      "TZ_AMERICA_MAZATLAN",
      "TZ_AMERICA_MEXICO_CITY",
      "TZ_AMERICA_MONTEVIDEO",
      "TZ_AMERICA_NASSAU",
      "TZ_AMERICA_NEW_YORK",
      "TZ_AMERICA_NORONHA",
      "TZ_AMERICA_PANAMA",
      "TZ_AMERICA_PHOENIX",
      "TZ_AMERICA_PORT_OF_SPAIN",
      "TZ_AMERICA_PUERTO_RICO",
      "TZ_AMERICA_RAINY_RIVER",
      "TZ_AMERICA_REGINA",
      "TZ_AMERICA_SANTIAGO",
      "TZ_AMERICA_SANTO_DOMINGO",
      "TZ_AMERICA_SAO_PAULO",
      "TZ_AMERICA_ST_JOHNS",
      "TZ_AMERICA_TEGUCIGALPA",
      "TZ_AMERICA_TIJUANA",
      "TZ_AMERICA_TORONTO",
      "TZ_AMERICA_VANCOUVER",
      "TZ_AMERICA_WINNIPEG",
      "TZ_ASIA_AMMAN",
      "TZ_ASIA_BAGHDAD",
      "TZ_ASIA_BAHRAIN",
      "TZ_ASIA_BANGKOK",
      "TZ_ASIA_BEIRUT",
      "TZ_ASIA_COLOMBO",
      "TZ_ASIA_DHAKA",
      "TZ_ASIA_DUBAI",
      "TZ_ASIA_GAZA",
      "TZ_ASIA_HONG_KONG",
      "TZ_ASIA_HO_CHI_MINH",
      "TZ_ASIA_IRKUTSK",
      "TZ_ASIA_JAKARTA",
      "TZ_ASIA_JAYAPURA",
      "TZ_ASIA_JERUSALEM",
      "TZ_ASIA_KAMCHATKA",
      "TZ_ASIA_KARACHI",
      "TZ_ASIA_KATHMANDU",
      "TZ_ASIA_KOLKATA",
      "TZ_ASIA_KRASNOYARSK",
      "TZ_ASIA_KUALA_LUMPUR",
      "TZ_ASIA_KUWAIT",
      "TZ_ASIA_MAGADAN",
      "TZ_ASIA_MAKASSAR",
      "TZ_ASIA_MANILA",
      "TZ_ASIA_MUSCAT",
      "TZ_ASIA_NICOSIA",
      "TZ_ASIA_OMSK",
      "TZ_ASIA_QATAR",
      "TZ_ASIA_RIYADH",
      "TZ_ASIA_SEOUL",
      "TZ_ASIA_SHANGHAI",
      "TZ_ASIA_SINGAPORE",
      "TZ_ASIA_TAIPEI",
      "TZ_ASIA_TOKYO",
      "TZ_ASIA_VLADIVOSTOK",
      "TZ_ASIA_YAKUTSK",
      "TZ_ASIA_YEKATERINBURG",
      "TZ_ATLANTIC_AZORES",
      "TZ_ATLANTIC_CANARY",
      "TZ_ATLANTIC_REYKJAVIK",
      "TZ_AUSTRALIA_BROKEN_HILL",
      "TZ_AUSTRALIA_MELBOURNE",
      "TZ_AUSTRALIA_PERTH",
      "TZ_AUSTRALIA_SYDNEY",
      "TZ_EUROPE_AMSTERDAM",
      "TZ_EUROPE_ATHENS",
      "TZ_EUROPE_BELGRADE",
      "TZ_EUROPE_BERLIN",
      "TZ_EUROPE_BRATISLAVA",
      "TZ_EUROPE_BRUSSELS",
      "TZ_EUROPE_BUCHAREST",
      "TZ_EUROPE_BUDAPEST",
      "TZ_EUROPE_COPENHAGEN",
      "TZ_EUROPE_DUBLIN",
      "TZ_EUROPE_HELSINKI",
      "TZ_EUROPE_ISTANBUL",
      "TZ_EUROPE_KALININGRAD",
      "TZ_EUROPE_KIEV",
      "TZ_EUROPE_LISBON",
      "TZ_EUROPE_LJUBLJANA",
      "TZ_EUROPE_LONDON",
      "TZ_EUROPE_LUXEMBOURG",
      "TZ_EUROPE_MADRID",
      "TZ_EUROPE_MALTA",
      "TZ_EUROPE_MOSCOW",
      "TZ_EUROPE_OSLO",
      "TZ_EUROPE_PARIS",
      "TZ_EUROPE_PRAGUE",
      "TZ_EUROPE_RIGA",
      "TZ_EUROPE_ROME",
      "TZ_EUROPE_SAMARA",
      "TZ_EUROPE_SARAJEVO",
      "TZ_EUROPE_SKOPJE",
      "TZ_EUROPE_SOFIA",
      "TZ_EUROPE_STOCKHOLM",
      "TZ_EUROPE_TALLINN",
      "TZ_EUROPE_VIENNA",
      "TZ_EUROPE_VILNIUS",
      "TZ_EUROPE_WARSAW",
      "TZ_EUROPE_ZAGREB",
      "TZ_EUROPE_ZURICH",
      "TZ_INDIAN_MALDIVES",
      "TZ_INDIAN_MAURITIUS",
      "TZ_NUM_TIMEZONES",
      "TZ_PACIFIC_AUCKLAND",
      "TZ_PACIFIC_EASTER",
      "TZ_PACIFIC_GALAPAGOS",
      "TZ_PACIFIC_HONOLULU",
    ]


    field :aggregation_level, 'string'
    field :conversion_end_date, 'string'
    field :conversion_start_date, 'string'
    field :event_status, 'string'
    field :id, 'string'
    field :lookback_window, 'string'
    field :match_universe, 'string'
    field :partner, 'Business'
    field :timezone, 'string'
    field :upload_tag, 'string'
    has_no_delete

  end
end
