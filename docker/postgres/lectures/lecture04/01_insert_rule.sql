CREATE RULE insert_holidays AS ON INSERT TO holidays DO INSTEAD
  INSERT INTO events(title, starts, colors)
  VALUES (NEW.name, NEW.date, NEW.colors);

SELECT * FROM holidays;
