# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create the global configuration
# create! makes the object and automatically saves it to the database
# the ! means that if something goes wrong and cannot save, throw an exception
AppConfig.create!(name: 'Trenton Mercer Visual Solutions', logo_url: 'hhhhhhh')

if Rails.env.development?

  # We're in a development mode, so making fake, insecure data is fine
  # Create two user profiles, admin and unprivledged user
  # Right now, there is no difference between the accounts
  # If your project needs it, add a boolean field to user for administrator
  admin = User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  user = User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')

  crime1 = Crime.create!(oriNumber: 'NJ0110100', agency: 'East Windsor Twp Pd', population: 27401,typeOfOffense: 'Number of Offenses', murder: 1, rape: 1, robbery: 4, assault: 10, burglary: 17, larceny: 151, autoTheft: 14, total: 198)
  crime2 = Crime.create!(oriNumber: 'NJ0110100', agency: 'East Windsor Twp Pd', population: 27401,typeOfOffense: 'Number of Clearances', murder: 1, rape: 1, robbery: 6, assault: 9, burglary: 2, larceny: 57, autoTheft: 2, total: 78)
  crime3 = Crime.create!(oriNumber: 'NJ0110100', agency: 'East Windsor Twp Pd', population: 27401,typeOfOffense: 'Number of Arrests', murder: 1, rape: 1, robbery: 2, assault: 9, burglary: 5, larceny: 65, autoTheft: 2, total: 85)
  crime4 = Crime.create!(oriNumber: 'NJ0110200', agency: 'Ewing Twp Pd', population: 36142,typeOfOffense: 'Number of Offenses', murder: 0, rape: 4, robbery: 20, assault: 36, burglary: 76, larceny: 385, autoTheft: 46, total: 567)
  crime5 = Crime.create!(oriNumber: 'NJ0110200', agency: 'Ewing Twp Pd', population: 36142,typeOfOffense: 'Number of Clearances', murder: 0, rape: 3, robbery: 8, assault: 32, burglary: 10, larceny: 90, autoTheft: 3, total: 146)
  crime6 = Crime.create!(oriNumber: 'NJ0110200', agency: 'Ewing Twp Pd', population: 36142,typeOfOffense: 'Number of Arrests', murder: 0, rape: 2, robbery: 8, assault: 35, burglary: 13, larceny: 100, autoTheft: 0, total: 158)
  crime7 = Crime.create!(oriNumber: 'NJ0110300', agency: 'Hamilton Twp Pd', population: 87889,typeOfOffense: 'Number of Offenses', murder: 1, rape: 20, robbery: 47, assault: 54, burglary: 264, larceny: 1215, autoTheft: 106, total: 1707)
  crime8 = Crime.create!(oriNumber: 'NJ0110300', agency: 'Hamilton Twp Pd', population: 87889,typeOfOffense: 'Number of Clearances', murder: 0, rape: 2, robbery: 0, assault: 17, burglary: 11, larceny: 42, autoTheft: 0, total: 72)
  crime9 = Crime.create!(oriNumber: 'NJ0110300', agency: 'Hamilton Twp Pd', population: 87889,typeOfOffense: 'Number of Arrests', murder: 0, rape: 5, robbery: 12, assault: 27, burglary: 25, larceny: 158, autoTheft: 8, total: 235)
  crime10 = Crime.create!(oriNumber: 'NJ0110400', agency: 'Hightstown Pd', population: 5289,typeOfOffense: 'Number of Offenses', murder: 0, rape: 3, robbery: 1, assault: 2, burglary: 2, larceny: 19, autoTheft: 1, total: 28)
  crime11 = Crime.create!(oriNumber: 'NJ0110400', agency: 'Hightstown Pd', population: 5289,typeOfOffense: 'Number of Clearances', murder: 0, rape: 3, robbery: 0, assault: 1, burglary: 0, larceny: 4, autoTheft: 0, total: 8)
  crime12 = Crime.create!(oriNumber: 'NJ0110400', agency: 'Hightstown Pd', population: 5289,typeOfOffense: 'Number of Arrests', murder: 0, rape: 2, robbery: 0, assault: 1, burglary: 0, larceny: 2, autoTheft: 0, total: 5)
  crime13 = Crime.create!(oriNumber: 'NJ0110500', agency: 'Hopewell Borough', population: 1921,typeOfOffense: 'Number of Offenses', murder: 0, rape: 0, robbery: 0, assault: 0, burglary: 2, larceny: 10, autoTheft: 1, total: 13)
  crime14 = Crime.create!(oriNumber: 'NJ0110500', agency: 'Hopewell Borough', population: 1921,typeOfOffense: 'Number of Clearances', murder: 0, rape: 0, robbery: 0, assault: 0, burglary: 0, larceny: 5, autoTheft: 0, total: 5)
  crime15 = Crime.create!(oriNumber: 'NJ0110500', agency: 'Hopewell Borough', population: 1921,typeOfOffense: 'Number of Arrests', murder: 0, rape: 0, robbery: 0, assault: 0, burglary: 0, larceny: 3, autoTheft: 0, total: 3)
  crime16 = Crime.create!(oriNumber: 'NJ0110600', agency: 'Hopewell Twp Pd', population: 18000,typeOfOffense: 'Number of Offenses', murder: 0, rape: 1, robbery: 0, assault: 6, burglary: 14, larceny: 55, autoTheft: 4, total: 80)
  crime17 = Crime.create!(oriNumber: 'NJ0110600', agency: 'Hopewell Twp Pd', population: 18000,typeOfOffense: 'Number of Clearances', murder: 0, rape: 0, robbery: 0, assault: 4, burglary: 0, larceny: 10, autoTheft: 0, total: 14)
  crime18 = Crime.create!(oriNumber: 'NJ0110600', agency: 'Hopewell Twp Pd', population: 18000,typeOfOffense: 'Number of Arrests', murder: 0, rape: 0, robbery: 0, assault: 5, burglary: 0, larceny: 8, autoTheft: 0, total: 13)
  crime19 = Crime.create!(oriNumber: 'NJ0110700', agency: 'Lawrence Twp Pd', population: 32644,typeOfOffense: 'Number of Offenses', murder: 0, rape: 10, robbery: 11, assault: 24, burglary: 83, larceny: 388, autoTheft: 22, total: 538)
  crime20 = Crime.create!(oriNumber: 'NJ0110700', agency: 'Lawrence Twp Pd', population: 32644,typeOfOffense: 'Number of Clearances', murder: 0, rape: 0, robbery: 6, assault: 22, burglary: 22, larceny: 129, autoTheft: 1, total: 180)
  crime21 = Crime.create!(oriNumber: 'NJ0110700', agency: 'Lawrence Twp Pd', population: 32644,typeOfOffense: 'Number of Arrests', murder: 0, rape: 1, robbery: 9, assault: 27, burglary: 25, larceny: 131, autoTheft: 0, total: 193)
  crime22 = Crime.create!(oriNumber: 'NJ0110800', agency: 'Pennington Boro Pd', population: 2554,typeOfOffense: 'Number of Offenses', murder: 0, rape: 0, robbery: 0, assault: 0, burglary: 1, larceny: 5, autoTheft: 2, total: 8)
  crime23 = Crime.create!(oriNumber: 'NJ0110800', agency: 'Pennington Boro Pd', population: 2554,typeOfOffense: 'Number of Clearances', murder: 0, rape: 0, robbery: 0, assault: 0, burglary: 0, larceny: 1, autoTheft: 2, total: 3)
  crime24 = Crime.create!(oriNumber: 'NJ0110800', agency: 'Pennington Boro Pd', population: 2554,typeOfOffense: 'Number of Arrests', murder: 0, rape: 0, robbery: 0, assault: 0, burglary: 0, larceny: 1, autoTheft: 0, total: 1)
  crime25 = Crime.create!(oriNumber: 'NJ0111000', agency: 'Princeton Pd', population: 31856,typeOfOffense: 'Number of Offenses', murder: 0, rape: 1, robbery: 0, assault: 9, burglary: 45, larceny: 190, autoTheft: 3, total: 248)
  crime26 = Crime.create!(oriNumber: 'NJ0111000', agency: 'Princeton Pd', population: 31856,typeOfOffense: 'Number of Clearances', murder: 0, rape: 0, robbery: 0, assault: 11, burglary: 6, larceny: 29, autoTheft: 0, total: 46)
  crime27 = Crime.create!(oriNumber: 'NJ0111000', agency: 'Princeton Pd', population: 31856,typeOfOffense: 'Number of Arrests', murder: 0, rape: 1, robbery: 1, assault: 9, burglary: 8, larceny: 28, autoTheft: 0, total: 47)
  crime28 = Crime.create!(oriNumber: 'NJ0111200', agency: 'Robbinsville Township Police', population: 14710,typeOfOffense: 'Number of Offenses', murder: 0, rape: 2, robbery: 0, assault: 0, burglary: 6, larceny: 43, autoTheft: 2, total: 53)
  crime29 = Crime.create!(oriNumber: 'NJ0111200', agency: 'Robbinsville Township Police', population: 14710,typeOfOffense: 'Number of Clearances', murder: 0, rape: 1, robbery: 0, assault: 0, burglary: 2, larceny: 9, autoTheft: 1, total: 13)
  crime30 = Crime.create!(oriNumber: 'NJ0111200', agency: 'Robbinsville Township Police', population: 14710,typeOfOffense: 'Number of Arrests', murder: 0, rape: 0, robbery: 0, assault: 8, burglary: 7, larceny: 3, autoTheft: 2, total: 20)
  crime31 = Crime.create!(oriNumber: 'NJ0111100', agency: 'Trenton Pd', population: 83753,typeOfOffense: 'Number of Offenses', murder: 15, rape: 70, robbery: 300, assault: 552, burglary: 360, larceny: 1142, autoTheft: 246, total: 2685)
  crime32 = Crime.create!(oriNumber: 'NJ0111100', agency: 'Trenton Pd', population: 83753,typeOfOffense: 'Number of Clearances', murder: 9, rape: 30, robbery: 65, assault: 292, burglary: 52, larceny: 128, autoTheft: 10, total: 586)
  crime33 = Crime.create!(oriNumber: 'NJ0111100', agency: 'Trenton Pd', population: 83753,typeOfOffense: 'Number of Arrests', murder: 13, rape: 25, robbery: 65, assault: 262, burglary: 51, larceny: 88, autoTheft: 11, total: 515)
  crime34 = Crime.create!(oriNumber: 'NJ0111300', agency: 'West Windsor Twp Pd', population: 28277,typeOfOffense: 'Number of Offenses', murder: 0, rape: 0, robbery: 4, assault: 7, burglary: 46, larceny: 259, autoTheft: 5, total: 321)
  crime35 = Crime.create!(oriNumber: 'NJ0111300', agency: 'West Windsor Twp Pd', population: 28277,typeOfOffense: 'Number of Clearances', murder: 0, rape: 0, robbery: 4, assault: 7, burglary: 1, larceny: 59, autoTheft: 0, total: 71)
  crime36 = Crime.create!(oriNumber: 'NJ0111300', agency: 'West Windsor Twp Pd', population: 28277,typeOfOffense: 'Number of Arrests', murder: 0, rape: 0, robbery: 6, assault: 6, burglary: 21, larceny: 94, autoTheft: 0, total: 127)

  district1 = District.create!(district_code: 1245, district_name: 'East Windsor Regional School District')
  district2 = District.create!(district_code: 1430, district_name: 'Ewing Township School District')
  district3 = District.create!(district_code: 1950, district_name: 'Hamilton Township Public School District')
  district4 = District.create!(district_code: 2280, district_name: 'Hopewell Valley Regional School District')
  district5 = District.create!(district_code: 2580, district_name: 'Lawrence Township Public School District')
  district6 = District.create!(district_code: 3105, district_name: 'Area Vocational Technical Schools of Mercer County')
  district7 = District.create!(district_code: 4255, district_name: 'Princeton Public Schools')
  district8 = District.create!(district_code: 5210, district_name: 'Trenton Public School District')
  district9 = District.create!(district_code: 5510, district_name: 'Robbinsville Public Schools')
  district10 = District.create!(district_code: 5715, district_name: 'West Windsor-Plainsboro Regional School District')

  grade1 = SchoolPopulation.create!(district_code: 1245, gradePK: 73, gradeKG: 372, grade01: 343, grade02:356, grade03: 371, grade04: 386, grade05: 388, grade06: 426, grade07: 401, grade08: 415, grade09: 403, grade10: 462, grade11: 360, grade12: 393, total: 5149)
  grade2 = SchoolPopulation.create!(district_code: 1430, gradePK: 81, gradeKG: 228, grade01: 251, grade02: 257, grade03: 275, grade04: 270, grade05: 265, grade06: 268, grade07: 274, grade08: 230, grade09: 249, grade10: 305, grade11: 235, grade12: 264, total: 3452)
  grade3 = SchoolPopulation.create!(district_code: 1950, gradePK: 191, gradeKG: 824, grade01: 847, grade02: 846, grade03: 817, grade04: 925, grade05: 878, grade06: 836, grade07: 874, grade08: 878, grade09: 932, grade10: 941, grade11: 826, grade12: 856, total: 11471)
  grade4 = SchoolPopulation.create!(district_code: 2280, gradePK: 84, gradeKG: 237, grade01: 223, grade02: 241, grade03: 237, grade04: 263, grade05: 294, grade06: 257, grade07: 270, grade08: 281, grade09: 290, grade10: 285, grade11: 250, grade12: 281, total: 3493)
  grade5 = SchoolPopulation.create!(district_code: 2580, gradePK: 89, gradeKG: 259, grade01: 272, grade02: 298, grade03: 270, grade04: 265, grade05: 297, grade06: 312, grade07: 298, grade08: 288, grade09: 299, grade10: 289, grade11: 271, grade12: 255, total: 3762)
  grade6 = SchoolPopulation.create!(district_code: 3105, gradePK: 0, gradeKG: 0, grade01: 0, grade02: 0, grade03: 0, grade04: 0, grade05: 0, grade06: 0, grade07: 0, grade08: 0, grade09: 85, grade10: 87, grade11: 226, grade12: 255, total: 656)
  grade7 = SchoolPopulation.create!(district_code: 4255, gradePK: 65, gradeKG: 198, grade01: 231, grade02: 230, grade03: 225, grade04: 250, grade05: 249, grade06: 259, grade07: 230, grade08: 265, grade09: 392, grade10: 417, grade11: 345, grade12: 411, total: 3767)
  grade8 = SchoolPopulation.create!(district_code: 5210, gradePK: 2071, gradeKG: 1184, grade01: 1221, grade02: 1148, grade03: 1201, grade04: 1067, grade05: 1014, grade06: 799, grade07: 825, grade08: 842, grade09: 853, grade10: 722, grade11: 698, grade12: 627, total: 14272)
  grade9 = SchoolPopulation.create!(district_code: 5510, gradePK: 46, gradeKG: 165, grade01: 187, grade02: 224, grade03: 233, grade04: 224, grade05: 274, grade06: 241, grade07: 266, grade08: 259, grade09: 317, grade10: 245, grade11: 230, grade12: 257, total: 3168)
  grade10 = SchoolPopulation.create!(district_code: 5715, gradePK: 103, gradeKG: 529, grade01: 623, grade02: 624, grade03: 703, grade04: 770, grade05: 736, grade06: 820, grade07: 792, grade08: 815, grade09: 817, grade10: 791, grade11: 716, grade12: 730, total: 9569)


  studentStat1 = StudentStatistic.create!(district_code: 1245,female: 47.5, male: 52.5, economicDis: 36.4,studentsWithDis: 12.4, englishLearners: 12.8, homeless: 0.1, foster: 0.1,militaryConnectedStudent: 0.7, migrantStudents: 0)
  studentStat2 = StudentStatistic.create!(district_code: 1430,female: 48.1, male: 51.9, economicDis: 45.0,studentsWithDis: 21.0, englishLearners: 4.0, homeless: 1.5, foster: 0.6,militaryConnectedStudent: 0.8, migrantStudents: 0)
  studentStat3 = StudentStatistic.create!(district_code: 1950,female: 47.7, male: 52.3, economicDis: 36.8,studentsWithDis: 16.1, englishLearners: 5.3, homeless: 0.2, foster: 0.3,militaryConnectedStudent: 0, migrantStudents: 0)
  studentStat4 = StudentStatistic.create!(district_code: 2280,female: 47.4, male: 52.6, economicDis: 3.4,studentsWithDis: 19.0, englishLearners: 0.8, homeless: 0, foster: 0.0,militaryConnectedStudent: 0, migrantStudents: 0)
  studentStat5 = StudentStatistic.create!(district_code: 2580,female: 48.7, male: 51.3, economicDis: 25.7,studentsWithDis: 17.9, englishLearners: 3.4, homeless: 0.2, foster: 0.1,militaryConnectedStudent: 0, migrantStudents: 0)
  studentStat6 = StudentStatistic.create!(district_code: 3105,female: 47.1, male: 52.9, economicDis: 34.9,studentsWithDis: 31.8, englishLearners: 0.9, homeless: 0.5, foster: 0.2,militaryConnectedStudent: 0, migrantStudents: 0)
  studentStat7 = StudentStatistic.create!(district_code: 4255,female: 47.0, male: 53.0, economicDis: 12.3,studentsWithDis: 17.5, englishLearners: 4.9, homeless: 0.0, foster: 0.0,militaryConnectedStudent: 0, migrantStudents: 0.1)
  studentStat8 = StudentStatistic.create!(district_code: 5210,female: 48.8, male: 51.2, economicDis: 62.9,studentsWithDis: 12.7, englishLearners: 23.2, homeless: 1.7, foster: 0.5,militaryConnectedStudent: 0, migrantStudents: 0)
  studentStat9 = StudentStatistic.create!(district_code: 5510,female: 49.0, male: 51.0, economicDis: 3.9,studentsWithDis: 12.7, englishLearners: 0.9, homeless: 0.1, foster: 0.1,militaryConnectedStudent: 0.2, migrantStudents: 0)
  studentStat10 = StudentStatistic.create!(district_code: 5715,female: 48.3, male: 51.7, economicDis: 4.8,studentsWithDis: 9.5, englishLearners: 3.2, homeless: 0.0, foster: 0.0,militaryConnectedStudent: 0.2, migrantStudents: 0)


  race1 = StudentRace.create!(district_code: 1245, white: 30.0, hispanic: 40.9, black: 9.3, asian: 17.4, nativeHawaiian: 0.2, americanIndian: 0.1, mixed: 2.1)
  race2 = StudentRace.create!(district_code: 1430, white: 26.9, hispanic: 17.7, black: 46.8, asian: 4.7, nativeHawaiian: 0.1, americanIndian: 0.0, mixed: 3.8)
  race3 = StudentRace.create!(district_code: 1950, white: 44.2, hispanic: 31.4, black: 17.2, asian: 3.8, nativeHawaiian: 0.1, americanIndian: 0.0, mixed: 3.3)
  race4 = StudentRace.create!(district_code: 2280, white: 75.5, hispanic: 5.0, black: 2.2, asian: 12.5, nativeHawaiian: 0.1, americanIndian: 0.0, mixed: 4.7)
  race5 = StudentRace.create!(district_code: 2580, white: 42.0, hispanic: 19.0, black: 14.3, asian: 19.5, nativeHawaiian: 0.1, americanIndian: 0.1, mixed: 5.0)
  race6 = StudentRace.create!(district_code: 3105, white: 32.2, hispanic: 28.1, black: 29.0, asian: 7.8, nativeHawaiian: 0.1, americanIndian: 0.2, mixed: 2.7)
  race7 = StudentRace.create!(district_code: 4255, white: 52.2, hispanic: 15.3, black: 6.1, asian: 19.9, nativeHawaiian: 0.0, americanIndian: 0.1, mixed: 6.4)
  race8 = StudentRace.create!(district_code: 5210, white: 1.1, hispanic: 56.9, black: 40.9, asian: 0.3, nativeHawaiian: 0.1, americanIndian: 0.1, mixed: 0.6)
  race9 = StudentRace.create!(district_code: 5510, white: 57.6, hispanic: 4.8, black: 2.2, asian: 33.1, nativeHawaiian: 0.1, americanIndian: 0.2, mixed: 2.0)
  race10 = StudentRace.create!(district_code: 5715, white: 18.6, hispanic: 4.3, black: 4.9, asian: 70.6, nativeHawaiian: 0.1, americanIndian: 0.1, mixed: 1.5)

  mathStat1 = MathStat.create!(district_code: 1245, validScores: 3020, participationPercentage: 98.3, districtPerformance: 43.5, profRate: 43.5, annualTarget: 50.4)
  mathStat2 = MathStat.create!(district_code: 1430, validScores: 2012, participationPercentage: 95.6, districtPerformance: 34.1, profRate: 34.1, annualTarget: 40.3)
  mathStat3 = MathStat.create!(district_code: 1950, validScores: 6845, participationPercentage: 99.1, districtPerformance: 32.7, profRate: 32.7, annualTarget: 43.5)
  mathStat4 = MathStat.create!(district_code: 2280, validScores: 2012, participationPercentage: 95.7, districtPerformance: 63.9, profRate: 63.9, annualTarget: 53.0)
  mathStat5 = MathStat.create!(district_code: 2580, validScores: 2201, participationPercentage: 97.5, districtPerformance: 43.8, profRate: 43.8, annualTarget: 51.5)
  mathStat6 = MathStat.create!(district_code: 3105, validScores: 119, participationPercentage: 90.8, districtPerformance: 32.9, profRate: 32.9, annualTarget: 46.4)
  mathStat7 = MathStat.create!(district_code: 4255, validScores: 1996, participationPercentage: 95.5, districtPerformance: 63.6, profRate: 63.6, annualTarget: 67.8)
  mathStat8 = MathStat.create!(district_code: 5210, validScores: 6410, participationPercentage: 94.8, districtPerformance: 10.9, profRate: 10.9, annualTarget: 19.7)
  mathStat9 = MathStat.create!(district_code: 5510, validScores: 1962, participationPercentage: 99.1, districtPerformance: 68.6, profRate: 68.6, annualTarget: 60.4)
  mathStat10 = MathStat.create!(district_code: 5715, validScores: 5992, participationPercentage: 98.9, districtPerformance: 74.5, profRate: 74.5, annualTarget: 73.5)

  litStat1 = LitStat.create!(district_code: 1245, validScores: 3106, participationPercentage: 98.5, districtPerformance: 57.4, profRate: 57.4, annualTarget: 60.2)
  litStat2 = LitStat.create!(district_code: 1430, validScores: 1967, participationPercentage: 95.2, districtPerformance: 42.2, profRate: 42.2, annualTarget: 44.7)
  litStat3 = LitStat.create!(district_code: 1950, validScores: 6860, participationPercentage: 99.1, districtPerformance: 44.9, profRate: 44.9, annualTarget: 52.9)
  litStat4 = LitStat.create!(district_code: 2280, validScores: 2100, participationPercentage: 95.9, districtPerformance: 76.4, profRate: 76.4, annualTarget: 62.1)
  litStat5 = LitStat.create!(district_code: 2580, validScores: 2230, participationPercentage: 97.9, districtPerformance: 59.9, profRate: 59.9, annualTarget: 62.2)
  litStat6 = LitStat.create!(district_code: 3105, validScores: 134, participationPercentage: 97.1, districtPerformance: 64.2, profRate: 64.2, annualTarget: 80)
  litStat7 = LitStat.create!(district_code: 4255, validScores: 2116, participationPercentage: 95.4, districtPerformance: 78.4, profRate: 78.4, annualTarget: 74.1)
  litStat8 = LitStat.create!(district_code: 5210, validScores: 6128, participationPercentage: 94.9, districtPerformance: 20.0, profRate: 20.0, annualTarget: 26)
  litStat9 = LitStat.create!(district_code: 5510, validScores: 2019, participationPercentage: 99.4, districtPerformance: 74.3, profRate: 74.3, annualTarget: 67.3)
  litStat10 = LitStat.create!(district_code: 5715, validScores: 6096, participationPercentage: 99.0, districtPerformance: 81.0, profRate: 81.0, annualTarget: 77.8)

  gradStat1 = GraduationDatum.create!(district_code: 1245, class2019_4YR_School: 93.0, class2018_5YR_School: 96.4, class2018_4YR_School: 94.8, class2017_5YR_School: 95.4)
  gradStat2 = GraduationDatum.create!(district_code: 1430, class2019_4YR_School: 86.3, class2018_5YR_School: 93.3, class2018_4YR_School: 90.2, class2017_5YR_School: 92.5)
  gradStat3 = GraduationDatum.create!(district_code: 1950, class2019_4YR_School: 90.4, class2018_5YR_School: 93.1, class2018_4YR_School: 91.1, class2017_5YR_School: 92.7)
  gradStat4 = GraduationDatum.create!(district_code: 2280, class2019_4YR_School: 95.3, class2018_5YR_School: 98.0, class2018_4YR_School: 97.7, class2017_5YR_School: 99.1)
  gradStat5 = GraduationDatum.create!(district_code: 2580, class2019_4YR_School: 95.6, class2018_5YR_School: 95.9, class2018_4YR_School: 95.9, class2017_5YR_School: 95.8)
  gradStat6 = GraduationDatum.create!(district_code: 3105, class2019_4YR_School: 97.8, class2018_5YR_School: 97.6, class2018_4YR_School: 57.6, class2017_5YR_School: 73.3)
  gradStat7 = GraduationDatum.create!(district_code: 4255, class2019_4YR_School: 95.5, class2018_5YR_School: 96.9, class2018_4YR_School: 96.4, class2017_5YR_School: 98.2)
  gradStat8 = GraduationDatum.create!(district_code: 5210, class2019_4YR_School: 63.8, class2018_5YR_School: 71.4, class2018_4YR_School: 67.8, class2017_5YR_School: 73.6)
  gradStat9 = GraduationDatum.create!(district_code: 5510, class2019_4YR_School: 95.1, class2018_5YR_School: 98.4, class2018_4YR_School: 97.6, class2017_5YR_School: 98.7)
  gradStat10 = GraduationDatum.create!(district_code: 5715, class2019_4YR_School: 96.9, class2018_5YR_School: 98.4, class2018_4YR_School: 97.8, class2017_5YR_School: 98.3)

  town1 = Town.create!(oriNumber: 'NJ0110100', townName: 'East Windsor Twp', population: 27401, district_code: 1245)
  town2 = Town.create!(oriNumber: 'NJ0110200', townName: 'Ewing Twp', population: 36142, district_code: 1430)
  town3 = Town.create!(oriNumber: 'NJ0110300', townName: 'Hamilton Twp', population: 87889, district_code: 1950)
  town4 = Town.create!(oriNumber: 'NJ0110400', townName: 'Hightstown Boro', population: 5289, district_code: 1245)
  town5 = Town.create!(oriNumber: 'NJ0110500', townName: 'Hopewell Boro', population: 1921, district_code: 2280)
  town6 = Town.create!(oriNumber: 'NJ0110600', townName: 'Hopewell Twp', population: 18000, district_code: 2280)
  town7 = Town.create!(oriNumber: 'NJ0110700', townName: 'Lawrence Twp', population: 32644, district_code: 2580)
  town8 = Town.create!(oriNumber: 'NJ0110800', townName: 'Pennington Boro', population: 2554, district_code: 1430)
  town9 = Town.create!(oriNumber: 'NJ0111000', townName: 'Princeton', population: 31856, district_code: 4255)
  town10 = Town.create!(oriNumber: 'NJ0111200', townName: 'Robinsville Twp' , population: 14710, district_code: 5510)
  town11 = Town.create!(oriNumber: 'NJ0111100', townName: 'Trenton', population: 83753, district_code: 5210)
  town12 = Town.create!(oriNumber: 'NJ0111300', townName: 'West Windsor Twp', population: 28277, district_code: 5715)
  

elsif Rails.env.production?

  # We're in a production application! Stay secure! No accounts with password!

end
