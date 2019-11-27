view: ifleet_drivers {
  sql_table_name: CC.IFLEET_DRIVERS ;;



#################################### DIMENSIONS ##############################################

  dimension: aah {
    label: "aah"
    hidden: yes
    type: number
    sql: ${TABLE}."AAH" ;;
  }

  dimension: abb {
    label: "abb"
    hidden: yes
    type: number
    sql: ${TABLE}."ABB" ;;
  }

  dimension: adr {
    label: "adr"
    hidden: yes
    type: number
    sql: ${TABLE}."ADR" ;;
  }

  dimension: alg {
    label: "alg"
    hidden: yes
    type: number
    sql: ${TABLE}."ALG" ;;
  }

  dimension: ali {
    label: "ali"
    hidden: yes
    type: number
    sql: ${TABLE}."ALI" ;;
  }

  dimension: alv {
    label: "alv"
    hidden: yes
    type: number
    sql: ${TABLE}."ALV" ;;
  }

  dimension: approved {
    label: "approved"
    type: number
    sql: ${TABLE}."APPROVED" ;;
  }

  dimension: approved_flag {
    label: "approved_flag"
    type: string
    sql: case when ${approved} = 1 then 'On circuit' else 'Not on circuit' end ;;
  }

  dimension: associated_assets {
    label: "associated_assets"
    hidden: yes
    type: string
    sql: ${TABLE}."ASSOCIATED_ASSETS" ;;
  }

  dimension: bms {
    label: "bms"
    hidden: yes
    type: number
    sql: ${TABLE}."BMS" ;;
  }

  dimension: bx {
    label: "bx"
    hidden: yes
    type: number
    sql: ${TABLE}."BX" ;;
  }

  dimension: callsign {
    label: "callsign"
    type: string
    sql: case
    when ${TABLE}."CALLSIGN" LIKE 'C%' then 'Third Party Courier'
    else ${TABLE}."CALLSIGN"
    END  ;;
  }

  dimension: cap {
    label: "cap"
    hidden: yes
    type: number
    sql: ${TABLE}."CAP" ;;
  }

  dimension: carrierclass {
    label: "carrier_class"
    type: string
    sql: ${TABLE}."CARRIERCLASS" ;;
  }

  dimension: citytrak {
    label: "citytrak"
    hidden: yes
    type: number
    sql: ${TABLE}."CITYTRAK" ;;
  }

  dimension: co2 {
    label: "co2"
    hidden: yes
    type: string
    sql: ${TABLE}."CO2" ;;
  }

  dimension: colour {
    label: "colour"
    hidden: yes
    type: string
    sql: ${TABLE}."COLOUR" ;;
  }

  dimension_group: dob {
    label: "day_of_birth"
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DOB" ;;
  }

  dimension: dra {
    label: "dra"
    hidden: yes
    type: number
    sql: ${TABLE}."DRA" ;;
  }

  dimension: email {
    label: "email"
    hidden: yes
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: engcap {
    label: "engcap"
    hidden: yes
    type: string
    sql: ${TABLE}."ENGCAP" ;;
  }

  dimension: fuel_type {
    label: "fuel_type"
    hidden: yes
    type: string
    sql: ${TABLE}."FUEL_TYPE" ;;
  }

  dimension: gdp {
    label: "gdp"
    hidden: yes
    type: number
    sql: ${TABLE}."GDP" ;;
  }

  dimension: ig {
    label: "ig"
    hidden: yes
    type: number
    sql: ${TABLE}."IG" ;;
  }

  dimension: im {
    label: "im"
    hidden: yes
    type: number
    sql: ${TABLE}."IM" ;;
  }

  dimension: insurance_type {
    label: "insurance_type"
    hidden: yes
    type: string
    sql: ${TABLE}."INSURANCE_TYPE" ;;
  }

  dimension_group: lastvisitdate {
    label: "lastvisitdate"
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LASTVISITDATE" ;;
  }

  dimension: lez {
    label: "lez"
    hidden: yes
    type: number
    sql: ${TABLE}."LEZ" ;;
  }

  dimension: lez_group {
    label: "ULEZ_compliant"
    type: string
    sql: case when ${lez} = 1 then 'Yes' else 'No' end ;;

  }

  dimension: livery {
    label: "livery"
    hidden: yes
    type: string
    sql: ${TABLE}."LIVERY" ;;
  }

  dimension: med {
    label: "med"
    hidden: yes
    type: number
    sql: ${TABLE}."MED" ;;
  }

  dimension: mob {
    label: "mob"
    hidden: yes
    type: string
    sql: ${TABLE}."MOB" ;;
  }

  dimension: mod {
    label: "mod"
    hidden: yes
    type: number
    sql: ${TABLE}."MOD" ;;
  }

  dimension: name {
    label: "driver_name"
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: nationality {
    label: "nationality"
    hidden: yes
    type: string
    sql: ${TABLE}."NATIONALITY" ;;
  }

  dimension: owner {
    label: "owner"
    hidden: yes
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: phx {
    label: "phx"
    hidden: yes
    type: number
    sql: ${TABLE}."PHX" ;;
  }

  dimension: postcode {
    label: "postcode"
    hidden: yes
    type: string
    sql: ${TABLE}."POSTCODE" ;;
  }

  dimension: pro {
    label: "pro"
    hidden: yes
    type: number
    sql: ${TABLE}."PRO" ;;
  }

  dimension: rad {
    label: "rad"
    hidden: yes
    type: number
    sql: ${TABLE}."RAD" ;;
  }

  dimension: reference {
    label: "reference"
    hidden: yes
    type: string
    sql: ${TABLE}."REFERENCE" ;;
  }

  dimension: reg {
    label: "reg"
    hidden: yes
    type: string
    sql: ${TABLE}."REG" ;;
  }

  dimension_group: registerdate {
    label: "register_date"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."REGISTERDATE" ;;
  }

  dimension: service_centre {
    label: "service_centre"
    type: string
    sql: ${TABLE}."SERVICE_CENTRE" ;;
  }

  dimension_group: startdate {
    label: "start_date"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      week_of_year,
      month_name,
      month_num,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."STARTDATE" ;;
  }

  dimension: taxclass {
    label: "tax_class"
    hidden: yes
    type: string
    sql: ${TABLE}."TAXCLASS" ;;
  }

  dimension: telnum {
    label: "tel_num"
    hidden: yes
    type: string
    sql: ${TABLE}."TELNUM" ;;
  }

  dimension: updated {
    label: "updated"
    hidden: yes
    type: number
    sql: ${TABLE}."UPDATED" ;;
  }

  dimension: ups {
    label: "ups"
    hidden: yes
    type: number
    sql: ${TABLE}."UPS" ;;
  }

  dimension: user_role {
    label: "user_role"
    type: string
    sql: ${TABLE}."USER_ROLE" ;;
  }

  dimension: userid {
    label: "userid"
    type: number
    primary_key: yes
    value_format_name: id
    sql: ${TABLE}."USERID" ;;
  }

  dimension: vechtype {
    label: "vech_type"
    type: string
    sql: ${TABLE}."VECHTYPE" ;;
  }

  dimension: where_did_you_hear_about_us {
    label: "where_did_you_hear_about_us"
    hidden: yes
    type: string
    sql: ${TABLE}."WHERE_DID_YOU_HEAR_ABOUT_US" ;;
  }

  dimension: wic {
    label: "wic"
    hidden: yes
    type: string
    sql: ${TABLE}."WIC" ;;
  }
#################################### DIMENSIONS ##############################################



#################################### MEASURES ################################################

  measure: count {
    type: count
    drill_fields: [drill_fields*]
  }

  measure: distinct_count_user_ids {
    type: count_distinct
    sql:  ${userid};;
    drill_fields: [drill_fields*]
  }

  measure: distinct_count_lez_compliant {
    type: count_distinct
    sql: ${userid} ;;
    filters: {
      field: lez
      value: "1"
          }
      drill_fields: [drill_fields*]
  }

  measure: distinct_count_non_lez_compliant {
    type: count_distinct
    sql:  CASE WHEN ${lez} = 1 THEN NULL ELSE ${userid} END ;;
    drill_fields: [drill_fields*]
  }






#################################### MEASURES ################################################




#################################### DRILL DOWNS #############################################

  set: drill_fields {
    fields: [
    ifleet_drivers.userid,
    ifleet_drivers.callsign,
    ifleet_drivers.approved,
    ifleet_drivers.approved_flag,
    ifleet_drivers.vechtype,
    ifleet_drivers.user_role,
    ifleet_drivers.service_centre,
    ifleet_drivers.lez,
    ifleet_drivers.lez_group
    ]
  }

}
