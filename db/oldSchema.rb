# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_113_190_602) do
  create_table 'app_configs', force: :cascade do |t|
    t.string 'name'
    t.string 'logo_url'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  create_table 'crime', force: :cascade do |t|
    t.string 'oriNumber', null: false
    t.string 'agency',
    t.integer 'population'
    t.string 'typeOfOffense'
    t.integer 'murder'
    t.integer 'rape'
    t.integer 'robbery'
    t.integer 'assault'
    t.integer 'burglary'
    t.integer 'larceny'
    t.integer 'autoTheft'
    t.integer 'total'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'district', force:  :cascade do |t|
    t.integer 'district_code', null: false
    t.string 'district_name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'schoolPopulation', force:  :cascade do |t|
    t.integer 'districtCode', null: false
    t.integer 'gradePK'
    t.integer 'gradeKG'
    t.integer 'grade01'
    t.integer 'grade02'
    t.integer 'grade03'
    t.integer 'grade04'
    t.integer 'grade05'
    t.integer 'grade06'
    t.integer 'grade07'
    t.integer 'grade08'
    t.integer 'grade09'
    t.integer 'grade10'
    t.integer 'grade11'
    t.integer 'grade12'
    t.integer 'total'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'studentStatistics', force:  :cascade do |t|
    t.integer 'districtCode', null: false
    t.float 'female'
    t.float 'male'
    t.float 'economicDis'
    t.float 'studentsWithDis'
    t.float 'englishLearners'
    t.float 'homeless'
    t.float 'foster'
    t.float 'militaryConnectedStudents'
    t.float 'migrantStudents'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'studentRaces', force:  :cascade do |t|
    t.integer 'districtCode', null: false
    t.float 'white'
    t.float 'hispanic'
    t.float 'black'
    t.float 'asian'
    t.float 'nativeHawaiian'
    t.float 'americanIndian'
    t.float 'mixed'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'mathStats', force:  :cascade do |t|
    t.integer 'districtCode', null: false
    t.integer 'validScores'
    t.float 'participationPercentage'
    t.float 'districtPerformance'
    t.float 'profRate'
    t.float 'annualTarget'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'litStats', force:  :cascade do |t|
    t.integer 'districtCode', null: false
    t.integer 'validScores'
    t.float 'participationPercentage'
    t.float 'districtPerformance'
    t.float 'profRate'
    t.float 'annualTarget'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'graduationData', force:  :cascade do |t|
    t.integer 'districtCode', null: false
    t.float 'class2019_4YR_School'
    t.float 'class2018_5YR_School'
    t.float 'class2018_4YR_School'
    t.float 'class2017_5YR_School'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'Towns', force:  :cascade do |t|
    t.integer 'oriNumber', null: false
    t.string 'townName'
    t.integer 'population'
    t.integer 'districtCode'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
  end