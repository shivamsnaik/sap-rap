@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Interface CDS View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZSN_I_STUDENT
  as select from zsn_student
  composition [0..*] of ZSN_I_COURSE as _Course
{
  key id              as Id,
      first_name      as FirstName,
      last_name       as LastName,
      age             as Age,
      course          as Course,
      course_duration as CourseDuration,
      status          as Status,
      gender          as Gender,
      dob             as Dob,
      course_id       as CourseId,

      // Associations
      _Course
}
