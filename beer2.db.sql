BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "recepts" (
	"id"	INTEGER NOT NULL,
	"ord"	INTEGER DEFAULT 0,
	"xmlStr"	TEXT NOT NULL,
	"heatingSpeed"	REAL NOT NULL DEFAULT 1.5,
	"repeats"	INTEGER NOT NULL DEFAULT 0,
	"receptOrder"	INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "settings" (
	"id"	INTEGER NOT NULL,
	"intVal"	INTEGER,
	"doubleVal"	REAL,
	"strVal"	TEXT,
	"blobVal"	BLOB,
	"comment"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "chainHistory" (
	"chainId"	INTEGER NOT NULL,
	"chainName"	TEXT,
	"startTime"	INTEGER NOT NULL,
	"xmlStr"	TEXT NOT NULL,
	PRIMARY KEY("chainId")
);
CREATE TABLE IF NOT EXISTS "chainLog" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"time"	INTEGER NOT NULL,
	"chainId"	INTEGER NOT NULL,
	"TEN1"	INTEGER NOT NULL,
	"TEN0"	INTEGER NOT NULL,
	"Mesh0"	INTEGER NOT NULL,
	"Mesh1"	INTEGER NOT NULL,
	"Nas0"	INTEGER NOT NULL,
	"Nas1"	INTEGER NOT NULL,
	"Nas2"	INTEGER NOT NULL,
	"Nas3"	INTEGER NOT NULL,
	"RevNas0"	INTEGER NOT NULL,
	"RevNas1"	INTEGER NOT NULL,
	"Solenoid0"	INTEGER NOT NULL,
	"Solenoid1"	INTEGER NOT NULL,
	"Solenoid2"	INTEGER NOT NULL,
	"Solenoid3"	INTEGER NOT NULL,
	"Solenoid4"	INTEGER NOT NULL,
	"Solenoid5"	INTEGER NOT NULL,
	"Solenoid6"	INTEGER NOT NULL,
	"Solenoid7"	INTEGER NOT NULL,
	"TZatVnt"	REAL NOT NULL,
	"TZatRub"	REAL NOT NULL,
	"TVarVnt"	REAL NOT NULL,
	"TVarRub"	REAL NOT NULL,
	"TSpirt0"	REAL NOT NULL,
	"TSpirt1"	REAL NOT NULL
);
CREATE TABLE IF NOT EXISTS "errLog" (
	"time"	INTEGER,
	"str"	INTEGER
);
INSERT INTO "recepts" ("id","ord","xmlStr","heatingSpeed","repeats","receptOrder") VALUES (0,7,'<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="75" cool="900" name="Темный Lager" osad="1800" virp="600" waterT="25" waterVol="80"><zator><pause T="62" comment="Осахаривание" time="1800" zvuk="1"/><pause T="72" comment="Декстриновая" time="1800" zvuk="1"/><pause T="78" comment="Мэш аут (настой)" time="600" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="60" ves="23" zvuk="1"/><hmel name="Халлертау Миттельфрю" time="1740" ves="38" zvuk="1"/><hmel name="Халлертау Миттельфрю" time="1500" ves="50" zvuk="1"/><hmel name="" time="600" ves="50" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14.3" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/><ingr name="Мруст 1.400" ves="1.2" zvuk="0"/></sostav><comment>Стиль: Международный темный лагер. Категория: Темный лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (настойное затирание)</comment></recept>',1.5,0,0),
 (1,0,'<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="75" cool="1200" name="Helles" version="1" virp="600" waterT="25" waterVol="80"><zator><pause T="62" comment="Осахаривание" time="3000" zvuk="1"/><pause T="72" comment="Декстриновая" time="600" zvuk="1"/><pause T="78" comment="Мэш аут" time="600" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="60" ves="23" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="2280" ves="38" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="3180" ves="55" zvuk="1"/><hmel name="" time="1200" ves="55" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>',1.5,0,0),
 (2,5,'<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="75" cool="900" name="Венский Lager" osad="1800" virp="1800" waterT="25" waterVol="80"><zator><pause T="62" comment="Осахаривание" time="1800" zvuk="1"/><pause T="72" comment="Декстриновая" time="1800" zvuk="1"/><pause T="78" comment="Мэш аут" time="600" zvuk="1"/></zator><varoch><hmel name="Sonnet" time="1200" ves="24" zvuk="1"/><hmel name="Sonnet" time="1800" ves="30" zvuk="1"/><hmel name="Sonnet" time="300" ves="120" zvuk="1"/><hmel name="" time="1500" ves="0" zvuk="1"/></varoch><sostav><ingr name="Венский солод" ves="26.1" zvuk="0"/><ingr name="Arom 150" ves="52.5" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>',1.5,0,0),
 (3,6,'<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="75" cool="1200" name="Витбир (Бланш)" osad="2400" virp="600" waterT="25" waterVol="248"><zator><pause T="47.9" comment="Пшеничный солод в заторный котел" time="1200" zvuk="1"/><pause T="58" comment="Вносим остальной солод" time="1800" zvuk="1"/><pause T="67" comment="Мэш аут" time="3600" zvuk="1"/><pause T="72" comment="Мэш аут" time="900" zvuk="1"/><pause T="80" comment="Мэш аут" time="600" zvuk="1"/></zator><varoch><hmel name="Мандарина Бавария" time="60" ves="23" zvuk="1"/><hmel name="Мандарина Бавария" time="1740" ves="23" zvuk="1"/><hmel name="Мандарина Бавария" time="1500" ves="58" zvuk="1"/><hmel name="" time="900" ves="58" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="9" zvuk="0"/><ingr name="Солод пшеничный" ves="6" zvuk="0"/><ingr name="Солод Кислый" ves="2.8" zvuk="0"/><ingr name="Хлопья Овсяные" ves="7.8" zvuk="0"/></sostav><comment>Категория: Пшеничное/Ржаное Пиво Тип: Эль - верховое брожение. Метод: Зерновой (настойное затирание)</comment></recept>',1.5,0,0),
 (13,1,'<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="17" cool="60" name="Helles test" version="1" virp="60" waterT="1" waterVol="80"><zator><pause T="62" comment="Осахаривание" time="60" zvuk="1"/><pause T="72" comment="Декстриновая" time="60" zvuk="1"/><pause T="78" comment="Мэш аут" time="60" zvuk="1"/><pause T="82" comment="Мэш аут" time="60" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="60" ves="23" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="60" ves="38" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="60" ves="55" zvuk="1"/><hmel name="" time="60" ves="55" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>',0.017926,0,0),
 (14,2,'<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="17" cool="60" name="Helles test короткий" version="1" virp="60" waterT="1" waterVol="80"><zator><pause T="62" comment="Мэш аут" time="60" zvuk="1"/><pause T="82" comment="Мэш аут" time="60" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="60" ves="23" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="60" ves="55" zvuk="1"/><hmel name="" time="60" ves="55" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>',0.013555,1,1600087720),
 (15,4,'<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="17" cool="60" name="Helles test longer" version="1" virp="60" waterT="1" waterVol="80"><zator><pause T="62" comment="Мэш аут1" time="60" zvuk="1"/><pause T="72" comment="Мэш аут2" time="60" zvuk="1"/><pause T="82" comment="Мэш аут3" time="60" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="180" ves="23" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="240" ves="55" zvuk="1"/><hmel name="" time="180" ves="55" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>',0.387083,0,0),
 (16,3,'<?xml version="1.0" encoding="UTF-8" standalone="no"?><recept boilPower="17" cool="60" name="Helles test короткий copy" version="1" virp="60" waterT="1" waterVol="80"><zator><pause T="62" comment="Мэш аут" time="60" zvuk="1"/><pause T="82" comment="Мэш аут" time="60" zvuk="1"/></zator><varoch><hmel name="Хмель Магнум" time="60" ves="23" zvuk="1"/><hmel name="Халлертаур Миттельфрю" time="60" ves="55" zvuk="1"/><hmel name="" time="60" ves="55" zvuk="0"/></varoch><sostav><ingr name="Pils" ves="14" zvuk="0"/><ingr name="Kapa 150" ves="2" zvuk="0"/></sostav><comment>Категория: Светлый лагер. Тип: Лагер - низовое брожение. Метод: Зерновой (с отварками)</comment></recept>',0.757083,0,0);
INSERT INTO "settings" ("id","intVal","doubleVal","strVal","blobVal","comment") VALUES (0,NULL,NULL,NULL,NULL,'Chain ID'),
 (1,NULL,0.0,NULL,NULL,'Zator T'),
 (2,NULL,53.85375,'',NULL,'Varoch T'),
 (3,NULL,NULL,'Нет затирания - Helles test короткий',NULL,'Recepts names'),
 (4,NULL,NULL,'Helles test короткий *1',NULL,'Chain string'),
 (5,NULL,NULL,NULL,X'89504e470d0a1a0a0000000d49484452000006b80000000108060000008543ae390000041d49444154785e9dd65370a6591485e1f4b46ddbb61ddbb66d3be9d84edbb66ddbb66d9b33d55d959535f39fa9fabe53f55cec7d6edf8badf4abdc7baaac5c7efc3d0ba9a848a7aa2aa6a6268fbaba621a1af2686a2aa6a5258fb6b6988e8e74baba627a7ad2e9eb8b191894a12ecaedffc3d050ccc8483a6363311313794c4d15333393c7dc5cccc2423a4b4b312b2be9acadc56c6ca4b3b515b3b393cede5eccc1e17f5197e5ff1c1d15737292c7d959311717795c5dc5dcdca4737717f3f090ced353cccb4b3a6f6f311f1f797c7dcb50077e7ef2f8fb2b1610204f60a058509074c1c1622121d285868a858549171e2e1611215d64a45854943cd1d18ac5c4c8131bab585c9c3cf1f1620909d225268a8d1b275d52925872b274292962a9a9f2a4a529969e2e4f4686629999f264658965674b979323969b2b5d5e9e587ebe740505628585d21515891517cb5352a25869a92c4a4abffee52754f8c1fefa0e15bf41a5afacf217a8f29955fd04d53e42f50facc67ba8f90e6abd65b5df409dd7acee2ba8f712eabf600d9e43c367acd15368fc049a3c664d1f41b387d0fc016b711f5ade63adee42eb3bd0e6366b7b0bdadd64ed6f4087ebd0f11aeb74153a5f812e9759d74bd0ed22eb7e017a9c879ee758afb3d0fb0cf439cdfa9e827e2759ff1330e0380c3cc6061d85c147d890c330f4100c3bc8861f8011fb61e43e366a2f8cdec3c6ec86b1bb40792753d901aadb99da3650df0a1a5b98e666d0da04da1b99ce06d05dcff4d681fe5a3058c30c5783d12a66bc124c5680e97266b60ccc9782c51266b918ac1631eb8560b3006ce733bb7974732bd9cffdc3610e739c0d4eb398f34c709901aed399db34709fca3ca680e764f09ac4bc2782cf04f01dcffc4ac1bf8405144360110415b2e00208c967a17910960be1392c221b22b3202a934567404c3a8b4d83b854884f6109c99098c4feb9f9ca24254272024b89e71e52e3fe488b65e9319011cd32a3202b12b223584e38e486415e28cb0f8182605618044581501cc04afca1d48f8df785093e30d19b4df282c99e30c5834d7587696e6cba2bcc708199ce6c9613cc7664731c60ae3dccb363f36d61810d2cb4668bac60b1255b62f11b35b1d4fc97d23233b6dc145698c04a63b6ca08561bb23506b0561fd6e9b1f5bab041876dd4864d5ab059936dd180adeab04d8d6d57851d2a6ca732ec1a0bbbc7b03da361ef28b66f24ec1f010786b383c3e0d050383c841d190c4707b16303e1f80038d19f9dec07a7fab2d37de04c6f38db8b9deb09e77bfc460d5de8fec7c56e70a92bbbdc05ae7486ab9dd8b58e70bd03dc68cf6eb6835b6dd9ed3670a735dc6dc5eeb584fb2dd883e6f0b0193c6aca1e3781278de16923f6ac213c6fc05ed48797f5e0555df6ba0ebca9cdded6827735e17d0df6a13a7cac069faab2cf55e04b65f6b5127cab08dfff623f2ac04fa5327f03f79a06647d5ace1b0000000049454e44ae426082','Navigator line'),
 (6,149,NULL,NULL,NULL,'Total minutes'),
 (7,720,NULL,NULL,NULL,'Total litres');
CREATE INDEX IF NOT EXISTS "ordIdx" ON "recepts" (
	"ord"
);
CREATE INDEX IF NOT EXISTS "idIdx" ON "recepts" (
	"id"
);
CREATE INDEX IF NOT EXISTS "setvals" ON "settings" (
	"id"
);
CREATE INDEX IF NOT EXISTS "chainId" ON "chainHistory" (
	"chainId"
);
CREATE INDEX IF NOT EXISTS "histIdx2" ON "chainHistory" (
	"startTime"
);
CREATE INDEX IF NOT EXISTS "histIdx1" ON "chainHistory" (
	"chainId"
);
COMMIT;
