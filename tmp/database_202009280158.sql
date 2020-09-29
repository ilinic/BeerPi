--
-- Скрипт сгенерирован Devart dbForge Studio 2020 for MySQL, Версия 9.0.391.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 28.09.2020 1:58:54
-- Версия сервера: 8.0.21
-- Версия клиента: 4.1
--

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

--
-- Установка базы данных по умолчанию
--
USE test_ceres2;

--
-- Удалить таблицу `chainhistory`
--
DROP TABLE IF EXISTS chainhistory;

--
-- Удалить таблицу `chainlog`
--
DROP TABLE IF EXISTS chainlog;

--
-- Удалить таблицу `errlog`
--
DROP TABLE IF EXISTS errlog;

--
-- Удалить таблицу `recepts`
--
DROP TABLE IF EXISTS recepts;

--
-- Удалить таблицу `settings`
--
DROP TABLE IF EXISTS settings;

--
-- Установка базы данных по умолчанию
--
USE test_ceres2;

--
-- Создать таблицу `settings`
--
CREATE TABLE settings (
  id tinyint DEFAULT NULL,
  intVal varchar(3) DEFAULT NULL,
  doubleVal varchar(8) DEFAULT NULL,
  strVal varchar(36) DEFAULT NULL,
  blobVal varchar(0) DEFAULT NULL,
  comment varchar(14) DEFAULT NULL
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 2048,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Создать таблицу `recepts`
--
CREATE TABLE recepts (
  id tinyint DEFAULT NULL,
  ord tinyint DEFAULT NULL,
  xmlStr text DEFAULT NULL,
  heatingSpeed decimal(7, 6) DEFAULT NULL,
  repeats tinyint DEFAULT NULL,
  receptOrder bigint DEFAULT NULL
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 2048,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Создать таблицу `errlog`
--
CREATE TABLE errlog (
  time varchar(0) DEFAULT NULL,
  str varchar(0) DEFAULT NULL
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Создать таблицу `chainlog`
--
CREATE TABLE chainlog (
  id varchar(0) DEFAULT NULL,
  time varchar(0) DEFAULT NULL,
  chainId varchar(0) DEFAULT NULL,
  TEN1 varchar(0) DEFAULT NULL,
  TEN0 varchar(0) DEFAULT NULL,
  Mesh0 varchar(0) DEFAULT NULL,
  Mesh1 varchar(0) DEFAULT NULL,
  Nas0 varchar(0) DEFAULT NULL,
  Nas1 varchar(0) DEFAULT NULL,
  Nas2 varchar(0) DEFAULT NULL,
  Nas3 varchar(0) DEFAULT NULL,
  RevNas0 varchar(0) DEFAULT NULL,
  RevNas1 varchar(0) DEFAULT NULL,
  Solenoid0 varchar(0) DEFAULT NULL,
  Solenoid1 varchar(0) DEFAULT NULL,
  Solenoid2 varchar(0) DEFAULT NULL,
  Solenoid3 varchar(0) DEFAULT NULL,
  Solenoid4 varchar(0) DEFAULT NULL,
  Solenoid5 varchar(0) DEFAULT NULL,
  Solenoid6 varchar(0) DEFAULT NULL,
  Solenoid7 varchar(0) DEFAULT NULL,
  TZatVnt varchar(0) DEFAULT NULL,
  TZatRub varchar(0) DEFAULT NULL,
  TVarVnt varchar(0) DEFAULT NULL,
  TVarRub varchar(0) DEFAULT NULL,
  TSpirt0 varchar(0) DEFAULT NULL,
  TSpirt1 varchar(0) DEFAULT NULL
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Создать таблицу `chainhistory`
--
CREATE TABLE chainhistory (
  chainId varchar(0) DEFAULT NULL,
  chainName varchar(0) DEFAULT NULL,
  startTime varchar(0) DEFAULT NULL,
  xmlStr varchar(0) DEFAULT NULL
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

-- 
-- Вывод данных для таблицы settings
--
INSERT INTO settings VALUES
(0, '', '', '', '', 'Chain ID'),
(1, '', '0.0', '', '', 'Zator T'),
(2, '', '53.85375', '', '', 'Varoch T'),
(3, '', '', 'Нет затирания - Helles test короткий', '', 'Recepts names'),
(4, '', '', 'Helles test короткий *1', '', 'Chain string'),
(5, '', '', '', '', 'Navigator line'),
(6, '149', '', '', '', 'Total minutes'),
(7, '720', '', '', '', 'Total litres');

-- 
-- Вывод данных для таблицы recepts
--
INSERT INTO recepts VALUES
(0, 7, '<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="75" cool="900" name="Темный Lager" osad="1800" virp="600" waterT="25" waterVol="80"><zator><pause T="62" comment="Осахаривание" time="1800" zvuk="1"/><pause T="72" comment="Декстриновая" time="1800" zvuk="1"/><pause T="78" comment="Мэш аут (настой)" time="600" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="60" ves="23" zvuk="1"/><hmel name="Халлертау Миттельфрю" time="1740" ves="38" zvuk="1"/><hmel name="Халлертау Миттельфрю" time="1500" ves="50" zvuk="1"/><hmel name="" time="600" ves="50" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14.3" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/><ingr name="Мруст 1.400" ves="1.2" zvuk="0"/></sostav><comment>Стиль: Международный темный лагер. Категория: Темный лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (настойное затирание)</comment></recept>', 1.500000, 0, 0),
(1, 0, '<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="75" cool="1200" name="Helles" version="1" virp="600" waterT="25" waterVol="80"><zator><pause T="62" comment="Осахаривание" time="3000" zvuk="1"/><pause T="72" comment="Декстриновая" time="600" zvuk="1"/><pause T="78" comment="Мэш аут" time="600" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="60" ves="23" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="2280" ves="38" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="3180" ves="55" zvuk="1"/><hmel name="" time="1200" ves="55" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>', 1.500000, 0, 0),
(2, 5, '<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="75" cool="900" name="Венский Lager" osad="1800" virp="1800" waterT="25" waterVol="80"><zator><pause T="62" comment="Осахаривание" time="1800" zvuk="1"/><pause T="72" comment="Декстриновая" time="1800" zvuk="1"/><pause T="78" comment="Мэш аут" time="600" zvuk="1"/></zator><varoch><hmel name="Sonnet" time="1200" ves="24" zvuk="1"/><hmel name="Sonnet" time="1800" ves="30" zvuk="1"/><hmel name="Sonnet" time="300" ves="120" zvuk="1"/><hmel name="" time="1500" ves="0" zvuk="1"/></varoch><sostav><ingr name="Венский солод" ves="26.1" zvuk="0"/><ingr name="Arom 150" ves="52.5" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>', 1.500000, 0, 0),
(3, 6, '<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="75" cool="1200" name="Витбир (Бланш)" osad="2400" virp="600" waterT="25" waterVol="248"><zator><pause T="47.9" comment="Пшеничный солод в заторный котел" time="1200" zvuk="1"/><pause T="58" comment="Вносим остальной солод" time="1800" zvuk="1"/><pause T="67" comment="Мэш аут" time="3600" zvuk="1"/><pause T="72" comment="Мэш аут" time="900" zvuk="1"/><pause T="80" comment="Мэш аут" time="600" zvuk="1"/></zator><varoch><hmel name="Мандарина Бавария" time="60" ves="23" zvuk="1"/><hmel name="Мандарина Бавария" time="1740" ves="23" zvuk="1"/><hmel name="Мандарина Бавария" time="1500" ves="58" zvuk="1"/><hmel name="" time="900" ves="58" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="9" zvuk="0"/><ingr name="Солод пшеничный" ves="6" zvuk="0"/><ingr name="Солод Кислый" ves="2.8" zvuk="0"/><ingr name="Хлопья Овсяные" ves="7.8" zvuk="0"/></sostav><comment>Категория: Пшеничное/Ржаное Пиво Тип: Эль - верховое брожение. Метод: Зерновой (настойное затирание)</comment></recept>', 1.500000, 0, 0),
(13, 1, '<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="17" cool="60" name="Helles test" version="1" virp="60" waterT="1" waterVol="80"><zator><pause T="62" comment="Осахаривание" time="60" zvuk="1"/><pause T="72" comment="Декстриновая" time="60" zvuk="1"/><pause T="78" comment="Мэш аут" time="60" zvuk="1"/><pause T="82" comment="Мэш аут" time="60" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="60" ves="23" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="60" ves="38" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="60" ves="55" zvuk="1"/><hmel name="" time="60" ves="55" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>', 0.017926, 0, 0),
(14, 2, '<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="17" cool="60" name="Helles test короткий" version="1" virp="60" waterT="1" waterVol="80"><zator><pause T="62" comment="Мэш аут" time="60" zvuk="1"/><pause T="82" comment="Мэш аут" time="60" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="60" ves="23" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="60" ves="55" zvuk="1"/><hmel name="" time="60" ves="55" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>', 0.013555, 1, 1600087720),
(15, 4, '<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="17" cool="60" name="Helles test longer" version="1" virp="60" waterT="1" waterVol="80"><zator><pause T="62" comment="Мэш аут1" time="60" zvuk="1"/><pause T="72" comment="Мэш аут2" time="60" zvuk="1"/><pause T="82" comment="Мэш аут3" time="60" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="180" ves="23" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="240" ves="55" zvuk="1"/><hmel name="" time="180" ves="55" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>', 0.387083, 0, 0),
(16, 3, '<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="17" cool="60" name="Helles test короткий copy" version="1" virp="60" waterT="1" waterVol="80"><zator><pause T="62" comment="Мэш аут" time="60" zvuk="1"/><pause T="82" comment="Мэш аут" time="60" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="60" ves="23" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="60" ves="55" zvuk="1"/><hmel name="" time="60" ves="55" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>', 0.757083, 0, 0);

-- 
-- Вывод данных для таблицы errlog
--
-- Таблица test_ceres2.errlog не содержит данных

-- 
-- Вывод данных для таблицы chainlog
--
-- Таблица test_ceres2.chainlog не содержит данных

-- 
-- Вывод данных для таблицы chainhistory
--
-- Таблица test_ceres2.chainhistory не содержит данных

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
--
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;