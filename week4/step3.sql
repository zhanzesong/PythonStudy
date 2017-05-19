3-1.把peoples表中school不是GDUFS的人全部找出来？（包括school为NULL的人）写出MySQL语句。
Select name from peoples where school is null and school is not GDUFS
3-2.查找计算机系每次考试所有学生的平均成绩(最终显示试名称, 平均分)。
select exam_name,avg(grade) from exam where student_id in (select ID from student where student.dept_name = 'comp. sci.') group by exam_name


3-3.查找女学霸（考试平均分达到80分或80分以上的女生的姓名, 分数）。
select name,avg(grade) from student,exam where student.ID = student_ID and sex = 'f' group by name having avg(grade)>=80;
3-4.找出人数最少的院系以及其年度预算。

select T1.dept_name,T1.budget 
from (
	select dept_name 
    from student
    ) as T2 
left join(
	select dept_name,budget
    from department
) as T1 
on T2.dept_name = T1.dept_name
group by T1.dept_name order by count(*)  limit 0,1

-- select department.dept_name,budget from student,department where student.dept_name = department.dept_name order by count(1) limit 0,1;
-- select budget,department.dept_name from department ,student where student.dept_name = department.dept_name group by student.dept_name order by count(*) desc limit 0,1;
-- from(
-- 	select dept_name 
--     from student
--     ) as T2 
-- left join(
-- 	select dept_name,budget
--     from department
-- ) as T1 
-- on T2.dept_name = T1.dept_name 
-- where T2.dept_name = 'computer' ;
3-5.计算机系改名了，改成计算机科学系（comp. sci.），写出mysql语句。
update department set dept_name = 'comp. sci.' where dept_name = 'computer';
3-6.修改每个系的年度预算，给该系的每个学生发2000元奖金。（修改每个系的年度预算为 原预算+该系人数*2000）。
-- update department set budget = budget+2000*(
-- select count(*)
-- from (
-- 	select dept_name 
--     from student
--     ) as T2 
-- left join(
-- 	select dept_name,budget
--     from department
-- ) as T1 
-- on T2.dept_name = T1.dept_name
-- group by T1.dept_name )

update department set budget = budget + 2000*(select count(*) from student where student.dept_name = department.dept_name);
3-7.向department表中插入一条数据, dept_name属性的值为avg_budget, building为空, 年度预算为所有院系的年度预算平均值.
insert into department values('avg_budget',NULL,select avg(budget) from department);
3-8. 删除计算机系中考试成绩平均分低于70的学生.
delete from exam,student where student_ID in (select student_ID from exam group by student_ID having avg(grade) < 70 );
3-9.找出所有正在谈恋爱,但是学习成绩不佳(考试平均分低于75)的学生,强制将其情感状态改为单身.
update student set emotion_state = 'single' where ID in (select student_ID from exam group by student_ID having avg(grade) < 75) and  emotion_state = 'loving'

