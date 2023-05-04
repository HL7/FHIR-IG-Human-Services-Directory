// Example value set from the 211HSIS Code System illustrating 211HSIS categories

Alias: $HealthcareServiceCategoryCS = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS
Alias: $HealthcareServiceTypeVS = http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/HealthcareServiceTypeVS
Alias: $CS_211HSISCS = http://211hsis.org
Alias: $OpenEligibilityTaxonomyCS = http://terminology.hl7.org/CodeSystem/OpenEligibilityTaxonomy
Alias: $VS_211HSISType = http://hl7.org/fhir/us/hsds/ValueSet/211HSIS-type
Alias: $VS_211HSISCategory = http://hl7.org/fhir/us/hsds/ValueSet/211HSIS-category

ValueSet: VS_211HSISCategory
Id: 211HSIS-category
Title: "211HSIS Category VS"
Description: "This value set represents the high level categories by which human services directories using the 211 Human Services Indexing System (211HSIS) can be searched. The value set excludes concepts descending from Level 1 Y-Target Populations, but includes Level 2 concepts from all other Level 1 hierarchies in the 211HSIS code system."

* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/211HSIS-category"
* ^experimental = false
* ^extension.url = "http://hl7.org/fhir/extensions/StructureDefinition-valueset-rules-text.html"
* ^extension.valueMarkdown  = "Rules TEXT This value set represents the high level categories by which human services directories using the 211 Human Services Indexing System (211HSIS) can be searched. The value set excludes concepts descending from Level 1 Y-Target Populations, but includes Level 2 concepts from all other Level 1 hierarchies in the 211HSIS code system."
* ^compose.include.system = "http://211hsis.org"
* ^compose.include.concept.code = #BD
* ^compose.include.concept.display = "Food"
* ^compose.include.filter.property = #code
* ^compose.include.filter.op = #=
* ^compose.include.filter.value = #BD
// * ^compose.include.system = "http://211hsis.org"
* ^compose.include.concept.code = #BH
* ^compose.include.concept.display = "Housing/Shelter"
// * ^compose.include.filter.property = #code
// * ^compose.include.filter.op = #=
// * ^compose.include.filter.value = #BH
// * ^compose.include.system = "http://211hsis.org"
// * ^compose.include.concept.code = #BM
// * ^compose.include.concept.display = "Material Goods"
// * ^compose.include.filter.property = #code
// * ^compose.include.filter.op = #=
// * ^compose.include.filter.value = #BM
// * ^compose.include.system = "http://211hsis.org"
* ^compose.include.concept.code = #BT
* ^compose.include.concept.display = "Transportation"
// * ^compose.include.filter.property = #code
// * ^compose.include.filter.op = #=
// * ^compose.include.filter.value = #BT
* ^compose.include.system = "http://211hsis.org"
* ^compose.include.concept.code = #BV
* ^compose.include.concept.display = "Utilities"
// * ^compose.include.filter.property = #code
// * ^compose.include.filter.op = #=
// * ^compose.include.filter.value = #BV
* ^compose.exclude.system = "http://211hsis.org"
* ^compose.exclude.concept.code = #Y
* ^compose.exclude.concept.display = "Target Populations"
* ^compose.exclude.filter.property = #code
* ^compose.exclude.filter.op = #is-a
* ^compose.exclude.filter.value = "Y"


// Example value set illustrating the classification of human services within the OpenEligibility code system by type

ValueSet: VS_211HSISType
Id: 211HSIS-type
Title: "211HSIS Type VS"

Description: "This value set represents a more refined classification by which human services directories using 211 Human Services Indexing System (211HSIS) can be searched. The value set and excludes all concepts descending from Level 1 (Y - Target Populations), and includes concepts descending from Levels 3-6 from all other Level 1 hierarchies in the 211HSIS code system."

* ^experimental = false
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/211HSIS-type"
* ^extension.valueMarkdown = "Rules TEXT This value set represents a more refined classification by which human services directories using 211 Human Services Indexing System (211HSIS) can be searched. The value set and excludes all concepts descending from Level 1 (Y - Target Populations), and includes concepts descending from Levels 3-6 from all other Level 1 hierarchies in the 211HSIS code system."
* ^compose.include.system = "http://211hsis.org"
// * ^compose.include.filter.property = #code
// * ^compose.include.filter.op = #descendent-of
// * ^compose.include.filter.value in (Level 3 - 6)
* ^extension.url = "http://hl7.org/fhir/extensions/StructureDefinition-valueset-rules-text.html"
* ^extension.valueMarkdown = "Rules TEXT This value set represents a more refined classification by which human services directories using 211 Human Services Indexing System (211HSIS) can be searched. The value set includes concepts descending from Levels 3-6 in the 211 Human Services Indexing System (211HSIS), and excludes concepts descending from Level 1 (Y - Target Populations)."

// Value set illustrating the high level categories of human services within the OpenEligibility code system

ValueSet: VS_OpenEligibilityCategory
Id: OpenEligibilityCategory
Title: "OpenEligibility Category VS"
Description: "This  value set represents a more refined classification by which human services directories can be queried when using the Open Eligibility Taxonomy. This value set represents codes found in the second, third, and forth levels of the Human Services section within the Open Eligibility Taxonomy Code System. None of the records in the Human Situations portion of the taxonomy are included in this value set."

* ^experimental = false
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/OpenEligibilityCategory"
* ^compose.include.system = "http://terminology.hl7.org/CodeSystem/OpenEligibilityTaxonomy"

*  OpenEligibilityTaxonomyCS#1101 "Emergency"
*  OpenEligibilityTaxonomyCS#1102 "Food"
*  OpenEligibilityTaxonomyCS#1103 "Housing"
*  OpenEligibilityTaxonomyCS#1104 "Goods"
*  OpenEligibilityTaxonomyCS#1105 "Transit"
*  OpenEligibilityTaxonomyCS#1106 "Health"
*  OpenEligibilityTaxonomyCS#1107 "Money"
*  OpenEligibilityTaxonomyCS#1108 "Care"
*  OpenEligibilityTaxonomyCS#1109 "Education"
*  OpenEligibilityTaxonomyCS#1110 "Work"
*  OpenEligibilityTaxonomyCS#1111 "Legal"


// Value set illustrating the classification of human services within the OpenEligibility code system by type

ValueSet: VS_OpenEligibilityType
Id: OpenEligibilityType
Title: "OpenEligibility Type VS"

Description: "This value set represents a more refined classification by which human services directories using the Open Eligibility Taxonomy code system can be searched. The value set includes codes found in the second, third, and forth levels of the Human Services section, and excludes all codes in the Human Situations section of the Open Eligibility Taxonomy Code System."

* ^experimental = false
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/OpenEligibilityType"
* ^compose.include.system = "http://terminology.hl7.org/CodeSystem/OpenEligibilityTaxonomy"

*  OpenEligibilityTaxonomyCS#1112   "Disaster Response"
*  OpenEligibilityTaxonomyCS#1113   "Emergency Payments"
*  OpenEligibilityTaxonomyCS#1114   "Help Pay for Food"
*  OpenEligibilityTaxonomyCS#1115	"Help Pay for Healthcare"
*  OpenEligibilityTaxonomyCS#1116	"Help Pay for Housing"
*  OpenEligibilityTaxonomyCS#1117	"Help Pay for Gas"
*  OpenEligibilityTaxonomyCS#1118	"Help Pay for School"
*  OpenEligibilityTaxonomyCS#1119	"Help Pay for Utilities"
*  OpenEligibilityTaxonomyCS#1120	"Emergency Food"
*  OpenEligibilityTaxonomyCS#1121	"Emergency Shelter"
*  OpenEligibilityTaxonomyCS#1122	"Help Find Missing Persons"
*  OpenEligibilityTaxonomyCS#1123	"Immediate Safety"
*  OpenEligibilityTaxonomyCS#1124	"Help Escape Violence"
*  OpenEligibilityTaxonomyCS#1125	"Safe Housing"
*  OpenEligibilityTaxonomyCS#1126	"Psychiatric Emergency Services"
*  OpenEligibilityTaxonomyCS#1127	"Community Gardens"
*  OpenEligibilityTaxonomyCS#1128	"Emergency Food"
*  OpenEligibilityTaxonomyCS#1129	"Food Delivery"
*  OpenEligibilityTaxonomyCS#1130	"Food Pantry"
*  OpenEligibilityTaxonomyCS#1131	"Free Meals"
*  OpenEligibilityTaxonomyCS#1132	"Help Pay for Food"
*  OpenEligibilityTaxonomyCS#1133	"Food Benefits"
*  OpenEligibilityTaxonomyCS#1134	"Nutrition"
*  OpenEligibilityTaxonomyCS#1135	"Emergency Shelter"
*  OpenEligibilityTaxonomyCS#1136	"Help Find Housing"
*  OpenEligibilityTaxonomyCS#1137	"Help Pay for Housing"
*  OpenEligibilityTaxonomyCS#1138	"Help Pay for Utilities"
*  OpenEligibilityTaxonomyCS#1139	"Home & Renters Insurance"
*  OpenEligibilityTaxonomyCS#1140	"Housing Vouchers"
*  OpenEligibilityTaxonomyCS#1141	"Maintenance & Repairs"
*  OpenEligibilityTaxonomyCS#1142	"Housing Advice"
*  OpenEligibilityTaxonomyCS#1143	"Foreclosure Counseling"
*  OpenEligibilityTaxonomyCS#1144	"Homebuyer Education"
*  OpenEligibilityTaxonomyCS#1145	"Residential Housing"
*  OpenEligibilityTaxonomyCS#1146	"Long-Term Housing"
*  OpenEligibilityTaxonomyCS#1147	"Assisted Living"
*  OpenEligibilityTaxonomyCS#1148	"Independent Living"
*  OpenEligibilityTaxonomyCS#1149	"Nursing Home"
*  OpenEligibilityTaxonomyCS#1151	"Safe Housing"
*  OpenEligibilityTaxonomyCS#1152	"Short-Term Housing"
*  OpenEligibilityTaxonomyCS#1153	"Nursing Home"
*  OpenEligibilityTaxonomyCS#1154	"Sober Living"
*  OpenEligibilityTaxonomyCS#1155	"Baby Supplies"
*  OpenEligibilityTaxonomyCS#1156	"Baby Clothes"
*  OpenEligibilityTaxonomyCS#1157	"Diapers & Formula"
*  OpenEligibilityTaxonomyCS#1158   "Clothing"
*  OpenEligibilityTaxonomyCS#1159	"Baby Clothes"
*  OpenEligibilityTaxonomyCS#1160	"Clothes for School"
*  OpenEligibilityTaxonomyCS#1161	"Clothes for Work"
*  OpenEligibilityTaxonomyCS#1162	"Clothing Vouchers"
*  OpenEligibilityTaxonomyCS#1163	"Home Goods"
*  OpenEligibilityTaxonomyCS#1164	"Blankets & Fans"
*  OpenEligibilityTaxonomyCS#1165	"Books"
*  OpenEligibilityTaxonomyCS#1166	"Furniture"
*  OpenEligibilityTaxonomyCS#1167	"Personal Care Items"
*  OpenEligibilityTaxonomyCS#1168	"Supplies for Work"
*  OpenEligibilityTaxonomyCS#1169	"Medical Supplies"
*  OpenEligibilityTaxonomyCS#1170	"Assistive Technology"
*  OpenEligibilityTaxonomyCS#1171	"Toys & Gifts"
*  OpenEligibilityTaxonomyCS#1172	"Help Pay for Transit"
*  OpenEligibilityTaxonomyCS#1173	"Bus Passes"
*  OpenEligibilityTaxonomyCS#1174	"Help Pay for Gas"
*  OpenEligibilityTaxonomyCS#1175	"Transportation"
*  OpenEligibilityTaxonomyCS#1176	"Transportation for Healthcare"
*  OpenEligibilityTaxonomyCS#1177	"Transportation for School"
*  OpenEligibilityTaxonomyCS#1178	"Addiction & Recovery"
*  OpenEligibilityTaxonomyCS#1179	"12-Step"
*  OpenEligibilityTaxonomyCS#1180	"Detox"
*  OpenEligibilityTaxonomyCS#1181	"Outpatient Treatment"
*  OpenEligibilityTaxonomyCS#1182	"Residential Treatment"
*  OpenEligibilityTaxonomyCS#1183	"Sober Living"
*  OpenEligibilityTaxonomyCS#1184	"Dental Care"
*  OpenEligibilityTaxonomyCS#1185	"End-of-Life Care"
*  OpenEligibilityTaxonomyCS#1186	"Bereavement"
*  OpenEligibilityTaxonomyCS#1187	"Burial & Funeral Help"
*  OpenEligibilityTaxonomyCS#1188	"Hospice"
*  OpenEligibilityTaxonomyCS#1189	"Pain Management"
*  OpenEligibilityTaxonomyCS#1190	"Health Education"
*  OpenEligibilityTaxonomyCS#1191	"Daily Life Skills"
*  OpenEligibilityTaxonomyCS#1192	"Disease Management"
*  OpenEligibilityTaxonomyCS#1193	"Family Planning"
*  OpenEligibilityTaxonomyCS#1194	"Nutrition"
*  OpenEligibilityTaxonomyCS#1195	"Parenting Education"
*  OpenEligibilityTaxonomyCS#1196	"Sex Education"
*  OpenEligibilityTaxonomyCS#1197	"Understand Disability"
*  OpenEligibilityTaxonomyCS#1198	"Understand Mental Health"
*  OpenEligibilityTaxonomyCS#1199	"Help Pay for Healthcare"
*  OpenEligibilityTaxonomyCS#1200	"Disability Benefits"
*  OpenEligibilityTaxonomyCS#1201	"Discounted Healthcare" 
*  OpenEligibilityTaxonomyCS#1202	"Health Insurance"
*  OpenEligibilityTaxonomyCS#1203	"Medical Supplies"
*  OpenEligibilityTaxonomyCS#1204   "Prescription Assistance"
*  OpenEligibilityTaxonomyCS#1205	"Transportation for Healthcare"
*  OpenEligibilityTaxonomyCS#1206	"Primary Care"
*  OpenEligibilityTaxonomyCS#1207	"Alternative Medicine"
*  OpenEligibilityTaxonomyCS#1208	"Assistive Technology"
*  OpenEligibilityTaxonomyCS#1209	"Birth Control"
*  OpenEligibilityTaxonomyCS#1210	"Checkup & Test"
*  OpenEligibilityTaxonomyCS#1211	"Disability Screening"
*  OpenEligibilityTaxonomyCS#1212	"Disease Screening"
*  OpenEligibilityTaxonomyCS#1213	"Hearing Tests"
*  OpenEligibilityTaxonomyCS#1214	"Mental Health Evaluation"
*  OpenEligibilityTaxonomyCS#1215	"Pregnancy Tests"
*  OpenEligibilityTaxonomyCS#1216	"Vision Tests"
*  OpenEligibilityTaxonomyCS#1217	"Maternity Care"
*  OpenEligibilityTaxonomyCS#1218	"Personal Hygiene"
*  OpenEligibilityTaxonomyCS#1219	"Prevent & Treat"
*  OpenEligibilityTaxonomyCS#1220	"Counseling"
*  OpenEligibilityTaxonomyCS#1221	"HIV Treatment"
*  OpenEligibilityTaxonomyCS#1222	"Pain Management"
*  OpenEligibilityTaxonomyCS#1223	"Disease Management"
*  OpenEligibilityTaxonomyCS#1224	"Nursing Home"
*  OpenEligibilityTaxonomyCS#1225	"Physical Therapy"
*  OpenEligibilityTaxonomyCS#1226	"Specialized Therapy"
*  OpenEligibilityTaxonomyCS#1227	"Vaccinations"
*  OpenEligibilityTaxonomyCS#1228	"In-Home Support"
*  OpenEligibilityTaxonomyCS#1229	"Residential Treatment"
*  OpenEligibilityTaxonomyCS#1230	"Outpatient Treatment"
*  OpenEligibilityTaxonomyCS#1231	"Psychiatric Emergency Services"
*  OpenEligibilityTaxonomyCS#1233	"Help Pay for Childcare"
*  OpenEligibilityTaxonomyCS#1234	"Help Pay for Food"
*  OpenEligibilityTaxonomyCS#1235	"Food Benefits"
*  OpenEligibilityTaxonomyCS#1237	"Disability Benefits"
*  OpenEligibilityTaxonomyCS#1238	"Discounted Healthcare"
*  OpenEligibilityTaxonomyCS#1239	"Health Insurance"
*  OpenEligibilityTaxonomyCS#1240	"Medical Supplies"
*  OpenEligibilityTaxonomyCS#1241	"Prescription Assistance"
*  OpenEligibilityTaxonomyCS#1242	"Transportation for Healthcare"
*  OpenEligibilityTaxonomyCS#1244	"Help Pay for Utilities"
*  OpenEligibilityTaxonomyCS#1245	"Home & Renters Insurance"
*  OpenEligibilityTaxonomyCS#1246	"Maintenance & Repairs"
*  OpenEligibilityTaxonomyCS#1247	"Help Pay for School"
*  OpenEligibilityTaxonomyCS#1248	"Books"
*  OpenEligibilityTaxonomyCS#1249	"Clothes for School"
*  OpenEligibilityTaxonomyCS#1250	"Financial Aid & Loans"
*  OpenEligibilityTaxonomyCS#1251	"Transportation for School"
*  OpenEligibilityTaxonomyCS#1252	"Help Pay for Transit"
*  OpenEligibilityTaxonomyCS#1253	"Help Pay for Gas"
*  OpenEligibilityTaxonomyCS#1254	"Bus Passes"
*  OpenEligibilityTaxonomyCS#1255	"Help Pay for Work Expenses"
*  OpenEligibilityTaxonomyCS#1257	"Disability Benefits"
*  OpenEligibilityTaxonomyCS#1258	"Food Benefits"
*  OpenEligibilityTaxonomyCS#1259	"Retirement Benefits"
*  OpenEligibilityTaxonomyCS#1260	"Understand Government Programs"
*  OpenEligibilityTaxonomyCS#1261	"Unemployment Benefits"
*  OpenEligibilityTaxonomyCS#1263	"Credit Counseling"
*  OpenEligibilityTaxonomyCS#1264	"Foreclosure Counseling"
*  OpenEligibilityTaxonomyCS#1265	"Homebuyer Education"
*  OpenEligibilityTaxonomyCS#1266	"Savings Program"
*  OpenEligibilityTaxonomyCS#1268	"Health Insurance"
*  OpenEligibilityTaxonomyCS#1269	"Home & Renters Insurance"
*  OpenEligibilityTaxonomyCS#1270	"Tax Preparation"
*  OpenEligibilityTaxonomyCS#1271	"Adoption & Foster Care"
*  OpenEligibilityTaxonomyCS#1272	"Adoption & Foster Placement"
*  OpenEligibilityTaxonomyCS#1273	"Adoption & Foster Parenting"
*  OpenEligibilityTaxonomyCS#1274	"Adoption Planning"
*  OpenEligibilityTaxonomyCS#1275	"Post-Adoption Support"
*  OpenEligibilityTaxonomyCS#1276	"Animal Welfare"
*  OpenEligibilityTaxonomyCS#1277	"Daytime Care"
*  OpenEligibilityTaxonomyCS#1278	"Adult Daycare"
*  OpenEligibilityTaxonomyCS#1279	"Afterschool Care"
*  OpenEligibilityTaxonomyCS#1280	"Childcare"
*  OpenEligibilityTaxonomyCS#1281	"Help Find Childcare"
*  OpenEligibilityTaxonomyCS#1282	"Help Pay for Childcare"
*  OpenEligibilityTaxonomyCS#1283	"Day Camp"
*  OpenEligibilityTaxonomyCS#1284	"Preschool"
*  OpenEligibilityTaxonomyCS#1285	"Recreation"
*  OpenEligibilityTaxonomyCS#1286	"Relief for Caregivers"
*  OpenEligibilityTaxonomyCS#1288	"Bereavement"
*  OpenEligibilityTaxonomyCS#1289	"Burial & Funeral Help"
*  OpenEligibilityTaxonomyCS#1290	"Hospice"
*  OpenEligibilityTaxonomyCS#1291	"Pain Management"
*  OpenEligibilityTaxonomyCS#1293	"Help Fill out Forms"
*  OpenEligibilityTaxonomyCS#1294	"Help Find Childcare"
*  OpenEligibilityTaxonomyCS#1295	"Help Find Housing"
*  OpenEligibilityTaxonomyCS#1296	"Help Find School"
*  OpenEligibilityTaxonomyCS#1297	"Help Find Work"
*  OpenEligibilityTaxonomyCS#1299	"Assisted Living"
*  OpenEligibilityTaxonomyCS#1300	"Residential Treatment"
*  OpenEligibilityTaxonomyCS#1301	"Nursing Home"
*  OpenEligibilityTaxonomyCS#1302	"Overnight Camp"
*  OpenEligibilityTaxonomyCS#1304	"Counseling"
*  OpenEligibilityTaxonomyCS#1305	"Help Hotlines"
*  OpenEligibilityTaxonomyCS#1306	"Home Visiting"
*  OpenEligibilityTaxonomyCS#1307	"In-Home Support"
*  OpenEligibilityTaxonomyCS#1308	"Mentoring"
*  OpenEligibilityTaxonomyCS#1309	"One-on-One Support"
*  OpenEligibilityTaxonomyCS#1310	"Peer Support"
*  OpenEligibilityTaxonomyCS#1311	"Spiritual Support"
*  OpenEligibilityTaxonomyCS#1312	"Support Groups"
*  OpenEligibilityTaxonomyCS#1313	"12-Step"
*  OpenEligibilityTaxonomyCS#1314	"Bereavement"
*  OpenEligibilityTaxonomyCS#1315	"Parenting Education"
*  OpenEligibilityTaxonomyCS#1316	"Virtual Support"
*  OpenEligibilityTaxonomyCS#1317	"Help Find School"
*  OpenEligibilityTaxonomyCS#1318	"Help Pay for School"
*  OpenEligibilityTaxonomyCS#1319	"Books"
*  OpenEligibilityTaxonomyCS#1320	"Clothes for School"
*  OpenEligibilityTaxonomyCS#1321	"Financial Aid & Loans"
*  OpenEligibilityTaxonomyCS#1322	"Transportation for School"
*  OpenEligibilityTaxonomyCS#1324	"Alternative Education"
*  OpenEligibilityTaxonomyCS#1325	"Disaster Preparedness & Response"
*  OpenEligibilityTaxonomyCS#1326	"English as a Second Language (ESL)"
*  OpenEligibilityTaxonomyCS#1327	"Financial Education"
*  OpenEligibilityTaxonomyCS#1328	"Credit Counseling"
*  OpenEligibilityTaxonomyCS#1329	"Foreclosure Counseling"
*  OpenEligibilityTaxonomyCS#1330	"Homebuyer Education"
*  OpenEligibilityTaxonomyCS#1331	"Foreign Languages"
*  OpenEligibilityTaxonomyCS#1332	"GED/High-School Equivalency"
*  OpenEligibilityTaxonomyCS#1333	"Health Education"
*  OpenEligibilityTaxonomyCS#1334	"Disease Management"
*  OpenEligibilityTaxonomyCS#1335	"Family Planning"
*  OpenEligibilityTaxonomyCS#1336	"Nutrition Education"
*  OpenEligibilityTaxonomyCS#1337	"Parenting Education"
*  OpenEligibilityTaxonomyCS#1338	"Sex Education"
*  OpenEligibilityTaxonomyCS#1339	"Understand Disability"
*  OpenEligibilityTaxonomyCS#1340	"Understand Mental Health"
*  OpenEligibilityTaxonomyCS#1341	"Supported Employment"
*  OpenEligibilityTaxonomyCS#1342	"Special Education"
*  OpenEligibilityTaxonomyCS#1343	"Tutoring"
*  OpenEligibilityTaxonomyCS#1344	"Preschool"
*  OpenEligibilityTaxonomyCS#1345	"Screening & Exams"
*  OpenEligibilityTaxonomyCS#1346	"Citizenship & Immigration"
*  OpenEligibilityTaxonomyCS#1347	"GED/High-School Equivalency"
*  OpenEligibilityTaxonomyCS#1348	"English as a Second Language (ESL)"
*  OpenEligibilityTaxonomyCS#1350	"Basic Literacy"
*  OpenEligibilityTaxonomyCS#1351	"Computer Class"
*  OpenEligibilityTaxonomyCS#1352	"Daily Life Skills"
*  OpenEligibilityTaxonomyCS#1353	"Interview Training"
*  OpenEligibilityTaxonomyCS#1354	"Resume Development"
*  OpenEligibilityTaxonomyCS#1355	"Skills Assessment"
*  OpenEligibilityTaxonomyCS#1356	"Specialized Training"
*  OpenEligibilityTaxonomyCS#1357	"Help Find Work"
*  OpenEligibilityTaxonomyCS#1358	"Job Placement"
*  OpenEligibilityTaxonomyCS#1359	"Supported Employment"
*  OpenEligibilityTaxonomyCS#1361	"Clothes for Work"
*  OpenEligibilityTaxonomyCS#1362	"Retirement Benefits"
*  OpenEligibilityTaxonomyCS#1363	"Supplies for Work"
*  OpenEligibilityTaxonomyCS#1364	"Unemployment Benefits"
*  OpenEligibilityTaxonomyCS#1366	"Basic Literacy"
*  OpenEligibilityTaxonomyCS#1367	"Computer Class"
*  OpenEligibilityTaxonomyCS#1368	"GED/High-School Equivalency"
*  OpenEligibilityTaxonomyCS#1369	"Interview Training"
*  OpenEligibilityTaxonomyCS#1370	"Resume Development"
*  OpenEligibilityTaxonomyCS#1371	"Skills Assessment"
*  OpenEligibilityTaxonomyCS#1372	"Specialized Training"
*  OpenEligibilityTaxonomyCS#1373	"Supported Employment"
*  OpenEligibilityTaxonomyCS#1374	"Workplace Rights"
*  OpenEligibilityTaxonomyCS#1375	"Advocacy & Legal Aid"
*  OpenEligibilityTaxonomyCS#1376	"Adoption & Foster Care"
*  OpenEligibilityTaxonomyCS#1377	"Adoption & Foster Placement"
*  OpenEligibilityTaxonomyCS#1378	"Adoption & Foster Parenting"
*  OpenEligibilityTaxonomyCS#1379	"Adoption Planning"
*  OpenEligibilityTaxonomyCS#1380	"Post-Adoption Support"
*  OpenEligibilityTaxonomyCS#1381	"Citizenship & Immigration"
*  OpenEligibilityTaxonomyCS#1382	"Discrimination & Civil Rights"
*  OpenEligibilityTaxonomyCS#1383	"Guardianship"
*  OpenEligibilityTaxonomyCS#1384	"Identification Recovery"
*  OpenEligibilityTaxonomyCS#1385	"Understand Government Programs"
*  OpenEligibilityTaxonomyCS#1386	"Workplace Rights"
*  OpenEligibilityTaxonomyCS#1387	"Mediation"
*  OpenEligibilityTaxonomyCS#1388	"Notary"
*  OpenEligibilityTaxonomyCS#1389	"Representation"
*  OpenEligibilityTaxonomyCS#1390	"Translation & Interpretation"

// Grouped value set to be bound to HealthcareService.category (extensible)

ValueSet: HumanServiceCategory
Id: HumanServiceCategory
Title: "Human Services Category VS"
Description: "This value set includes codes from the Plan-Net Healthcare Service Category value set (must support extensible binding), the 211HSIS Category value set, and the OpenEligibility Category value sets."
* ^experimental = false
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceCategory"
* codes from valueset OpenEligibilityCategory
* codes from system HealthcareServiceCategoryCS
* codes from valueset 211HSIS-category


// Grouped value set to be bound to HealthcareService.type (extensible)

ValueSet: HumanServiceType
Id: HumanServiceType
Title: "Human Services Type VS"
Description: "This value set that includes codes from the Plan-Net Healthcare Service Type value set (must support extensible binding), the 211HSIS Type value set, and the OpenEligibility Type value sets."

* ^experimental = false
* ^url = "http://hl7.org/fhir/us/hsds/ValueSet/HumanServiceType"
* codes from valueset HealthcareServiceTypeVS
* codes from valueset 211HSIS-type
* codes from valueset OpenEligibilityType



