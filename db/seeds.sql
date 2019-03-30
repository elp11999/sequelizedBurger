--
-- Schema to seed the burgers table
--
use burgers_db;
drop table if exists burgers;
insert into burgers (burger_name, devoured, createdAt, updatedAt)
    values ("Big Mac", false, Now(), Now()),
		   ("Royale with Cheese", false, Now(), Now()),
		   ("Vegan Burger", false, Now(), Now()),
		   ("Slug Burger", false, Now(), Now()),
		   ("Bacon Cheese Burger", false, Now(), Now());

--
-- Heroku JAWSDB seed
--
use uiezm7582wctd1xn;
drop table if exists burgers;
insert into burgers (burger_name, devoured, createdAt, updatedAt)
    values ("Big Mac", false, Now(), Now()),
		   ("Royale with Cheese", false, Now(), Now()),
		   ("Vegan Burger", false, Now(), Now()),
		   ("Slug Burger", false, Now(), Now()),
		   ("Bacon Cheese Burger", false, Now(), Now());