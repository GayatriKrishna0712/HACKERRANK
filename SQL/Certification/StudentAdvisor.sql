# A uni has started a student advisor plan that assigns a prof as an advisor to each student for academic guidance. 
# Write a query to find the roll_no,names of students who either have a male advisor with salary of more than 15K or a female advisor with salary of more than 20K.

SELECT 
    student_information.roll_number,
    student_information.name 
FROM student_information,faculty_information
WHERE student_information.advisor = faculty_information.employee_ID
   AND (faculty_information.gender = 'M' and faculty_information.salary >15000 
         OR faculty_information.gender = 'F' and faculty_information.salary >20000);
