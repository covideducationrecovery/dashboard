[.[] |
{
  metadata: {
    respondentEmail: .QID2_TEXT,
    responseType: .Response_Type,
    responseDate: .recordedDate,
    recordId: ._recordId
  },
  country: {
    identifier: .QID30
  },
  nonCovidClosure: (if .QID9=="1" then true else null end),
  nonCovidClosureComment: .QID9_3TEXT,
  vaccinations: {
    availableInCountry: (if .QID27=="1" then true else null end),
    availableToSchoolStaff: (if .QID28=="1" then true else null end)
  },
  noEducation: (if .QID10_1=="1" then true else null end),
  remoteEducation: (if .QID10_2=="1" then true else null end),
  hybridEducation: (if .QID10_3=="1" then true else null end),
  inPersonEducation: (if .QID10_4=="1" then true else null end)
}
]