CLASS zcl_student DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

    METHODS insert_student_data.
    METHODS delete_old_student_data.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_student IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    delete_old_student_data( ).
    "insert_student_data( ).
  ENDMETHOD.

  METHOD insert_student_data.
    DATA: ls_student_data TYPE zsn_student,
          lt_student_data TYPE TABLE OF zsn_student.

    lt_student_data = VALUE #(
        ( id = '10' first_name = 'Shivam' last_name = 'Naik'
          course = 'Informatik' course_duration = '24' status = abap_true
          dob = '19960627' age = '29'
        )
        ( id = '11' first_name = 'Madhavi' last_name = 'Shenoy'
          course = 'Embedded Systeme' course_duration = '24' status = abap_true
          dob = '19971111' age = '28'
        )
        ( id = '12' first_name = 'Indrajit' last_name = 'Patil'
          course = 'CVT' course_duration = '24' status = abap_false
          dob = '19950710' age = '30'
        )
    ).

    INSERT zsn_student FROM TABLE @lt_student_data.
  ENDMETHOD.

  METHOD delete_old_student_data.
    DELETE FROM zsn_student.
  ENDMETHOD.
ENDCLASS.
