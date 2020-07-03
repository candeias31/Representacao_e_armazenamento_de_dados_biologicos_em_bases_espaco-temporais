-- check first and last appearence of all cells
Select id, cells.born as bornGT, cells.dead as deadGT,a.born,a.dead from
(select GT_ID,MIN(frame) as born, MAX(frame) as dead from lifetmp group by GT_ID order by GT_ID ) as a
join cells on cells.id=GT_ID where cells.dead != a.dead

Select * from lifetmp where ST_area(geom) = 2258 and frame = 0
Select * from features

-- give the ground truth ID to cells
ALTER TABLE lifetmp ADD COLUMN GT_ID smallint default 0;

UPDATE lifetmp SET GT_ID = 2 WHERE myid = 31

select * from lifetmp where GT_ID = 0 and myid != 0 order by myid

select * from lifetmp where frame = 0 order by id

select ST_area(geom), * from lifetmp where frame = 0 and gt_id < 10

select * from cells

select ST_area(geom), * from lifetmp where GT_ID = 4 or gt_id = 1 order by frame
select * from lifetmp where frame  = 0