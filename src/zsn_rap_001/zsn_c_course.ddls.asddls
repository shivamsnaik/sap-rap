@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Course CDS Model'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZSN_C_COURSE
  as projection on ZSN_I_COURSE as Course
{
      @EndUserText.label: 'Course ID'
  key CourseId,
      @EndUserText.label: 'Course Name'
      CourseName,
      @EndUserText.label: 'Course Duration'
      CourseDuration,
      @EndUserText.label: 'Department ID'
      DepartmentId,
      @EndUserText.label: 'Student ID'
      StudentId,

      /* Associations */
      _Student : redirected to parent ZSN_C_STUDENT
}
