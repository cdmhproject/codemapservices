/*
	This query is for finding a patient cohort that satisfies the Breast Cancer (BC) Use Case inclusion criteria.
  The CQL version this query conforming to is v1.5.3 (https://cql.hl7.org/index.html)
  Latest Update Date: 20250523
*/
library "Breast Cancer Use Case Inclusion Criteria" version '1'

using FHIR version '4.0.0' 

codesystem "RxNorm": 'http://www.nlm.nih.gov/research/umls/rxnorm'
codesystem "NDC": 'http://hl7.org/fhir/sid/ndc'
codesystem "SNOMED-CT": 'http://snomed.info/sct'
codesystem "ICD10": 'https://www.cms.gov/medicare/coding/icd10'
codesystem "LOINC": 'http://loinc.org'

code "T-DM1 Kadcyla 1":'50242-087-01' from "NDC"
code "T-DM1 Kadcyla 2":'50242-088-01' from "NDC"
code "T-DXd Enhertu":'65597-406-01' from "NDC"
code "SG Trodelvy":'55135-132-01' from "NDC"

concept "ADC NDC concept":{
  "T-DM1 Kadcyla 1",
  "T-DM1 Kadcyla 2",
  "T-DXd Enhertu",
  "SG Trodelvy"
}

code "T-DM1 Kadcyla RxNorm":'1371046' from "RxNorm"
code "T-DXd Enhertu RxNorm":'2267577' from "RxNorm"
code "SG Trodelvy RxNorm":'2360535' from "RxNorm" 

concept "ADC RxNorm concept":{
  "T-DM1 Kadcyla RxNorm",
  "T-DXd Enhertu RxNorm",
  "SG Trodelvy RxNorm"  
}

code "Intraductal carcinoma in situ of unspecified breast":'D05.10' from "ICD10"
code "Intraductal carcinoma in situ of right breast":'D05.11' from "ICD10"
code "Intraductal carcinoma in situ of left breast":'D05.12' from "ICD10"
code "Lobular carcinoma in situ of unspecified breast":'D05.0' from "ICD10"
code "Lobular carcinoma in situ of right breast":'D05.01' from "ICD10"
code "Lobular carcinoma in situ of left breast":'D05.02' from "ICD10"
code "Hormone receptor negative":'Z17.42' from "ICD10" 
code "Hormone receptor positive":'Z17.41' from "ICD10"
code "Human epidermal growth factor receptor 2 negative status":'Z17.32' from "ICD10"
code "Human epidermal growth factor receptor 2 positive status":'Z17.31' from "ICD10"
code "Hormone receptor negative with human epidermal growth factor receptor 2 negative status, Triple negative breast cancer":'Z17.421' from "ICD10" 
code "Hormone receptor positive with human epidermal growth factor receptor 2 positive status":'Z17.410' from "ICD10"
code "Hormone receptor negative with human epidermal growth factor receptor 2 positive status":'Z17.420' from "ICD10"
code "Hormone receptor positive with human epidermal growth factor receptor 2 negative status":'Z17.411' from "ICD10"
code "Metastatic disease or Stage IV TxNxM1":'C79.9' from "ICD10"
code "Recurrent initial diagnosis of TxNxM0 with subsequent TxNxM1 Metastatic breast cancer":'C79.81' from "ICD10"
code "Locally advanced, inoperable disease Inflammatory breast cancer":'N61' from "ICD10"
code "Malignant neoplasm of breast":'C50' from "ICD10"
code "Malignant neoplasm of unspecified site of unspecified female breast":'C50.919' from "ICD10"

concept "BC ICD10CM concept":{
  "Intraductal carcinoma in situ of unspecified breast",
  "Intraductal carcinoma in situ of right breast",
  "Intraductal carcinoma in situ of left breast",
  "Lobular carcinoma in situ of unspecified breast",
  "Lobular carcinoma in situ of right breast",
  "Lobular carcinoma in situ of left breast",
  "Hormone receptor negative",
  "Hormone receptor positive",
  "Human epidermal growth factor receptor 2 negative status",
  "Human epidermal growth factor receptor 2 positive status",
  "Hormone receptor negative with human epidermal growth factor receptor 2 negative status, Triple negative breast cancer",
  "Hormone receptor positive with human epidermal growth factor receptor 2 positive status",
  "Hormone receptor negative with human epidermal growth factor receptor 2 positive status",
  "Hormone receptor positive with human epidermal growth factor receptor 2 negative status",
  "Metastatic disease or Stage IV TxNxM1",
  "Recurrent initial diagnosis of TxNxM0 with subsequent TxNxM1 Metastatic breast cancer",
  "Locally advanced, inoperable disease Inflammatory breast cancer",
  "Malignant neoplasm of breast",
  "Malignant neoplasm of unspecified site of unspecified female breast"
}

code "Invasive ductal carcinoma Intraductal carcinoma - SNOMEDCT":'408643008' from "SNOMED-CT"
code "Intraductal carcinoma in situ of right breast - SNOMEDCT":'1306576000' from "SNOMED-CT"
code "Intraductal carcinoma in situ of left breast - SNOMEDCT":'1306575001' from "SNOMED-CT"
code "lLobular carcinoma in situ of unspecified breast - SNOMEDCT":'15952981000119103' from "SNOMED-CT"
code "Lobular carcinoma in situ of right breast - SNOMEDCT":'354471000119108' from "SNOMED-CT"
code "Lobular carcinoma in situ of left breast - SNOMEDCT":'354341000119108' from "SNOMED-CT"
code "Hormone receptor negative - SNOMEDCT":'438628005' from "SNOMED-CT" 
code "Hormone receptor positive - SNOMEDCT":'417181009' from "SNOMED-CT"
code "Human epidermal growth factor receptor 2 negative status - SNOMEDCT":'438628005' from "SNOMED-CT"
code "Human epidermal growth factor receptor 2 positive status - SNOMEDCT":'417181009' from "SNOMED-CT"
code "Hormone receptor negative with human epidermal growth factor receptor 2 negative status, Triple negative breast cancer - SNOMEDCT":'706970001' from "SNOMED-CT" 
code "Human epidermal growth factor receptor 2 positive status 2 - SNOMEDCT":'459391000124109' from "SNOMED-CT" 
code "Hormone receptor positive with human epidermal growth factor receptor 2 negative status - SNOMEDCT":'431396003' from "SNOMED-CT"
code "Inflammatory carcinoma of breast - SNOMEDCT":'254837009' from "SNOMED-CT"
code "Inflammatory disorder of breast - SNOMEDCT":'266579006' from "SNOMED-CT"

concept "BC SNOMEDCT concept":{
  "Invasive ductal carcinoma Intraductal carcinoma - SNOMEDCT",
  "Intraductal carcinoma in situ of right breast - SNOMEDCT",
  "Intraductal carcinoma in situ of left breast - SNOMEDCT",
  "lLobular carcinoma in situ of unspecified breast - SNOMEDCT",
  "Lobular carcinoma in situ of right breast - SNOMEDCT",
  "Lobular carcinoma in situ of left breast - SNOMEDCT",
  "Hormone receptor negative - SNOMEDCT",
  "Hormone receptor positive - SNOMEDCT",
  "Human epidermal growth factor receptor 2 negative status - SNOMEDCT",
  "Human epidermal growth factor receptor 2 positive status - SNOMEDCT",
  "Hormone receptor negative with human epidermal growth factor receptor 2 negative status, Triple negative breast cancer - SNOMEDCT",
  "Human epidermal growth factor receptor 2 positive status 2 - SNOMEDCT",
  "Hormone receptor positive with human epidermal growth factor receptor 2 negative status - SNOMEDCT",
  "Inflammatory carcinoma of breast - SNOMEDCT",
  "Inflammatory disorder of breast - SNOMEDCT"
}

code "Complete blood count W Differential panel method unspecified": '69742-5' from "LOINC" display 'Complete blood count W Differential panel method unspecified'
code "Hepatic Function Panel": '80076' from "LOINC" display 'Hepatic Function Panel'
code "Creatinine Clearance 82575": '82575' from "LOINC" display 'Creatinine Clearance 82575'
code "Complete Blood Count CBC With Differential": '85025' from "LOINC" display 'Complete Blood Count CBC With Differential'
code "Globulin": '10834-0' from "LOINC" display 'Globulin'
code "Creatinine renal clearance 1.73 sq M 12195-4": '12195-4' from "LOINC" display 'Creatinine renal clearance 1.73 sq M 12195-4'
code "Creatinine renal clearance 13441-1": '13441-1' from "LOINC" display 'Creatinine renal clearance 13441-1'
code "Creatinine renal clearance 13442-9": '13442-9' from "LOINC" display 'Creatinine renal clearance 13442-9'
code "Creatinine renal clearance 13443-7": '13443-7' from "LOINC" display 'Creatinine renal clearance 13443-7'
code "Creatinine renal clearance 1.73 sq M 13446-0": '13446-0' from "LOINC" display 'Creatinine renal clearance 1.73 sq M 13446-0'
code "Creatinine renal clearance 1.73 sq M 13447-8": '13447-8' from "LOINC" display 'Creatinine renal clearance 1.73 sq M 13447-8'
code "Creatinine renal clearance 1.73 sq M 13449-4": '13449-4' from "LOINC" display 'Creatinine renal clearance 1.73 sq M 13449-4'
code "Creatinine renal clearance 1.73 sq M 13450-2": '13450-2' from "LOINC" display 'Creatinine renal clearance 1.73 sq M 13450-2'
code "ALT SGPT": '1742-6' from "LOINC" display 'ALT SGPT'
code "Albumin": '1751-7' from "LOINC" display 'Albumin'
code "Albumin Globulin Ratio": '1759-0' from "LOINC" display 'Albumin Globulin Ratio'
code "Amylase Creatinine renal clearance 1811-9": '1811-9' from "LOINC" display 'Amylase Creatinine renal clearance 1811-9'
code "AST SGOT": '1920-8' from "LOINC" display 'AST SGOT'
code "Bilirubin Direct": '1968-7' from "LOINC" display 'Bilirubin Direct'
code "Bilirubin Indirect": '1971-1' from "LOINC" display 'Bilirubin Indirect'
code "Bilirubin Total": '1975-2' from "LOINC" display 'Bilirubin Total'
code "Creatinine Clearance 2160-0": '2160-0' from "LOINC" display 'Creatinine Clearance 2160-0'
code "Creatinine Mass per volume in Urine": '2161-8' from "LOINC" display 'Creatinine Mass per volume in Urine'
code "Creatinine Clearance 2162-6": '2162-6' from "LOINC" display 'Creatinine Clearance 2162-6'
code "Creatinine renal clearance 2163-4": '2163-4' from "LOINC" display 'Creatinine renal clearance 2163-4'
code "Creatinine renal clearance 2164-2": '2164-2' from "LOINC" display 'Creatinine renal clearance 2164-2'
code "Hepatic function 1996 panel Serum or Plasma": '24324-6' from "LOINC" display 'Hepatic function 1996 panel Serum or Plasma'
code "Hepatic function 2000 panel Serum or Plasma": '24325-3' from "LOINC" display 'Hepatic function 2000 panel Serum or Plasma'
code "Creatinine renal clearance 26752-6": '26752-6' from "LOINC" display 'Creatinine renal clearance 26752-6'
code "Protein Total": '2885-2' from "LOINC" display 'Protein Total'
code "Amylase Creatinine renal clearance 30077-2": '30077-2' from "LOINC" display 'Amylase Creatinine renal clearance 30077-2'
code "Creatinine renal clearance 33558-8": '33558-8' from "LOINC" display 'Creatinine renal clearance 33558-8'
code "Creatinine Clearance 34555-3": '34555-3' from "LOINC" display 'Creatinine Clearance 34555-3'
code "Creatinine renal clearance 1.73 sq M 35593-3": '35593-3' from "LOINC" display 'Creatinine renal clearance 1.73 sq M 35593-3'
code "Creatinine renal clearance 1.73 sq M 35594-1": '35594-1' from "LOINC" display 'Creatinine renal clearance 1.73 sq M 35594-1'
code "Amylase & Creatinine clearance panel": '44789-6' from "LOINC" display 'Amylase & Creatinine clearance panel'
code "CBC W Auto Differential panel - Blood": '57021-8' from "LOINC" display 'CBC W Auto Differential panel - Blood'
code "Alkaline Phosphatase": '6768-6' from "LOINC" display 'Alkaline Phosphatase'
code "Creatinine Clearance 98979-8": '98979-8' from "LOINC" display 'Creatinine Clearance 98979-8'

concept "BC LOINC concept":{
  "Complete blood count W Differential panel method unspecified",
  "Hepatic Function Panel",
  "Creatinine Clearance 82575",
  "Complete Blood Count CBC With Differential",
  "Globulin",
  "Creatinine renal clearance 1.73 sq M 12195-4",
  "Creatinine renal clearance 13441-1",
  "Creatinine renal clearance 13442-9",
  "Creatinine renal clearance 13443-7",
  "Creatinine renal clearance 1.73 sq M 13446-0",
  "Creatinine renal clearance 1.73 sq M 13447-8",
  "Creatinine renal clearance 1.73 sq M 13449-4",
  "Creatinine renal clearance 1.73 sq M 13450-2",
  "ALT SGPT",
  "Albumin",
  "Albumin Globulin Ratio",
  "Amylase Creatinine renal clearance 1811-9",
  "AST SGOT",
  "Bilirubin Direct",
  "Bilirubin Indirect",
  "Bilirubin Total",
  "Creatinine Clearance 2160-0",
  "Creatinine Mass per volume in Urine",
  "Creatinine Clearance 2162-6",
  "Creatinine renal clearance 2163-4",
  "Creatinine renal clearance 2164-2",
  "Hepatic function 1996 panel Serum or Plasma",
  "Hepatic function 2000 panel Serum or Plasma",
  "Creatinine renal clearance 26752-6",
  "Protein Total",
  "Amylase Creatinine renal clearance 30077-2",
  "Creatinine renal clearance 33558-8",
  "Creatinine Clearance 34555-3",
  "Creatinine renal clearance 1.73 sq M 35593-3",
  "Creatinine renal clearance 1.73 sq M 35594-1",
  "Amylase & Creatinine clearance panel",
  "CBC W Auto Differential panel - Blood",
  "Alkaline Phosphatase",
  "Creatinine Clearance 98979-8"
}

define "BC Patients MedicationRequest NDC":  
from [MedicationRequest: "ADC NDC concept"] medReq1, 
   [Encounter] medReqEnctr1,
   [Patient] medReqPat1
   where 
    medReq1.encounter.reference = 'Encounter/' + medReqEnctr1.identifier[0].value
    and medReq1.subject.reference = 'Patient/' + medReqPat1.identifier[0].value
    and CalculateAgeInYearsAt(medReqPat1.birthDate as date, date from start of (medReqEnctr1.period as Period)) >= 18
return distinct {medReq1.subject.reference}

define "BC Patients MedicationRequest RxNorm":  
from [MedicationRequest: "ADC RxNorm concept"] medReq2, 
   [Encounter] medReqEnctr2,
   [Patient] medReqPat2
   where 
    medReq2.encounter.reference = 'Encounter/' + medReqEnctr2.identifier[0].value
    and medReq2.subject.reference = 'Patient/' + medReqPat2.identifier[0].value
    and CalculateAgeInYearsAt(medReqPat2.birthDate as date, date from start of (medReqEnctr2.period as Period)) >= 18
return distinct {medReq2.subject.reference}

define "BC Patients MedicationDispense NDC":  
from [MedicationDispense: "ADC NDC concept"] medDisp3, 
   [Encounter] medDispEnctr3
   [Patient] medDispPat3
   where 
    medDisp3.context.reference = 'Encounter/' + medDispEnctr3.identifier[0].value
    and medDisp3.subject.reference = 'Patient/' + medDispPat3.identifier[0].value
    and CalculateAgeInYearsAt(medDispPat3.birthDate as date, date from start of (medDispEnctr3.period as Period)) >= 18
return distinct {medDisp3.subject.reference}

define "BC Patients MedicationDispense RxNorm":  
from [MedicationDispense: "ADC RxNorm concept"] medDisp4, 
   [Encounter] medDispEnctr4
   [Patient] medDispPat4
   where 
    medDisp4.context.reference = 'Encounter/' + medDispEnctr4.identifier[0].value
    and medDisp4.subject.reference = 'Patient/' + medDispPat4.identifier[0].value
    and CalculateAgeInYearsAt(medDispPat4.birthDate as date, date from start of (medDispEnctr4.period as Period)) >= 18
return distinct {medDisp4.subject.reference}

define "Patients from ADCs":
        "BC Patients MedicationRequest NDC"
  union "BC Patients MedicationRequest RxNorm"
  union "BC Patients MedicationDispense NDC"
  union "BC Patients MedicationDispense RxNorm"

define "DistinctPatiendsFromADCs":
  distinct("Patients from ADCs")

define "BC Condition SNOMED":  
from [Condition: "BC SNOMEDCT concept"] cond1, 
   [Encounter] enctr1,
   [Patient] condpat1
   where 
    ToDate(cond1.onsetDateTime) >= Date("2013-02-01")
    and cond1.subject.reference in "DistinctPatiendsFromADCs"
    and cond1.subject.reference = 'Patient/' + condpat1.identifier[0].value
    and cond1.encounter.reference = 'Encounter/' + enctr1.identifier[0].value
    and CalculateAgeInYearsAt(condpat1.birthDate as date, date from start of (enctr1.period as Period)) >= 18
return distinct {cond1.subject.reference}

define "BC Condition ICD10CM":
from [Condition: "BC ICD10CM concept"] cond2,
   [Encounter] enctr2,
   [Patient] condpat2
   where ToDate(cond2.onsetDateTime) >= Date("2013-02-01")
    and cond2.subject.reference in "DistinctPatiendsFromADCs"
    and cond2.subject.reference = 'Patient/' + condpat2.identifier[0].value
    and cond2.encounter.reference = 'Encounter/' + enctr2.identifier[0].value
    and CalculateAgeInYearsAt(condpat2.birthDate as date, date from start of (enctr2.period as Period)) >= 18
return distinct {cond2.subject.reference}

define "BC Observation LOINC":
from [Observation: "BC LOINC concept"] obs1,
   [Encounter] obsEnctr1,
   [Patient] obsPat1

   where (date from start of (obs1.effectivePeriod)) >= Date("2013-02-01")
    and obs1.subject.reference in "DistinctPatiendsFromADCs"
    and obs1.encounter.reference = 'Encounter/' + obsEnctr1.identifier[0].value
    and obs1.subject.reference = 'Patient/' + obsPat1.identifier[0].value
    and CalculateAgeInYearsAt(obsPat1.birthDate as date, date from start of (obsEnctr1.period as Period)) >= 18
return distinct {obs1.subject.reference}

define "MeetsInclusionCriteria":
        "BC Condition SNOMED"
  union "BC Condition ICD10CM"
  union "BC Observation LOINC"

define "Result":
  distinct("MeetsInclusionCriteria")

