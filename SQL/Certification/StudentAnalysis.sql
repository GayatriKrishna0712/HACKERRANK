# A school recently conducted its annual examination and wishes to know the list of academically low performing students to organize extra classses for them.
#Write a query to return the roll number and names of students who have a total of less than 100 marks including all 3 subjects.


SELECT  
    student_information.roll_number,
    student_information.name
FROM student_information
INNER JOIN examination_marks ON student_information.roll_numer =examination_marks.roll_number
GROUP BY examination_marks.roll_number
HAVING SUM(examination_marks.subject_one+examination_marks.subject_two+examination_marks.subject_three)<100;
