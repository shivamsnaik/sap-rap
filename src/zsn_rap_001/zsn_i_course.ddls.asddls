@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Course Interface View Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSN_I_COURSE as select from zsn_course
association to parent ZSN_I_STUDENT as _Student on $projection.StudentId = _Student.Id
{
    key course_id as CourseId,
    course_name as CourseName,
    course_duration as CourseDuration,
    department_id as DepartmentId,
    student_id as StudentId,
    //Associations
    _Student
}
