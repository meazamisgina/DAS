create schema schools;
CREATE TABLE schools.students (
   student_id VARCHAR(20) PRIMARY key NOT NULL,
   full_name VARCHAR(100) NOT NULL,
   dob INT not NULL,
   gender VARCHAR(10) not null,
   enrolled_in VARCHAR(50)not NULL,
   student_extracurricular VARCHAR(60) not NULL,  
   fav_course VARCHAR(50) not NULL
);

--ALTER table school.students 
--      add column enrolled_in VARCHAR(50),
--      add column student_extracurricular VARCHAR(60), 
--      add column fav_course VARCHAR(50);

INSERT INTO schools.students (student_id, full_name, dob, gender, enrolled_in, student_extracurricular, fav_course)
VALUES
('ST99', 'Yeabsra Mekonnen', 16, 'Male', 'Natural', 'Std_gov.t', 'Biology'),
('ST92', 'Sala Alemu', 17, 'Female', 'Natural', 'Science', 'physics'),
('ST98', 'Biruk Tesfaye', 15, 'Male', 'Social', 'Sport', 'History'),
('ST90', 'Selam Getachew', 16, 'Female', 'Social', 'Mini-Media', 'Civics');

SELECT * FROM schools.students;

select full_name, fav_course,
case 
	when student_extracurricular='Science' AND enrolled_in in ('Natural','Social') then 'Anti-HIV'
	when gender='Female' AND enrolled_in='Natural'  then 'Womens_club'
	else 'Sport'
end as new_activity,
enrolled_in
from schools.students;


select student_id,gender,
case 
	when full_name in ('Selam Getachew', 'Yeabsra Mekonnen') then 'Python'
	when gender='Female' and enrolled_in= 'Social' then 'Kotlin'
	else 'DataBase'
end as new_fav_course,
fav_course

from schools.students
where enrolled_in in ('Social')





    