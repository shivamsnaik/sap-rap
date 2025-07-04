@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Consumption/Projection CDS View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true

define root view entity ZSN_C_STUDENT 
provider contract transactional_query // Required: To indicate this CDS View will involve transactions
as projection on ZSN_I_STUDENT as Student
{
    @EndUserText.label: 'Student ID'
    key Id,
    @EndUserText.label: 'First Name'
    FirstName,
    @EndUserText.label: 'Last Name'
    LastName,
    @EndUserText.label: 'Age'
    Age,
    @EndUserText.label: 'Course Name'
    Course,
    @EndUserText.label: 'Course Duration'
    CourseDuration,
    @EndUserText.label: 'Student Status'
    Status,
    @EndUserText.label: 'Gender'
    Gender,
    @EndUserText.label: 'Date of Birth'
    Dob
}
