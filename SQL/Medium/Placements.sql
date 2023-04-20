#Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.


select Name from Students as s
join Friends as f on s.ID = f.ID
join Packages as p on p.ID = s.ID
join Packages as fp on fp.ID = f.Friend_ID
where p.Salary < fp.Salary
order by fp.Salary;
