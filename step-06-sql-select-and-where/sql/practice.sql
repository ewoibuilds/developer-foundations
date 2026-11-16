-- 1. All beginner lessons, shortest first.
SELECT title, minutes FROM lessons WHERE level = 'beginner' ORDER BY minutes ASC;

-- 2. The single longest lesson.
SELECT title, minutes FROM lessons ORDER BY minutes DESC LIMIT 1;

-- 3. How many lessons take under 30 minutes.
SELECT COUNT(*) AS short_lessons FROM lessons WHERE minutes < 30;

-- 4. Every lesson whose title contains the word "first".
SELECT title FROM lessons WHERE title LIKE '%first%';

-- 5. The average length of each level.
SELECT level, AVG(minutes) AS average_minutes FROM lessons GROUP BY level;
