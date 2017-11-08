--------------------------------------------------------
--  File created - Sunday-October-15-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence HFT_ALGORITHM_T_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HFT_ALGORITHM_T_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HFT_DATA_T_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HFT_DATA_T_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1786393 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HFT_METRICS_T_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HFT_METRICS_T_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 27732 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HFT_MODEL_PARAMETERS_T_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HFT_MODEL_PARAMETERS_T_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7671 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HFT_MODEL_T_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HFT_MODEL_T_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 28284 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HFT_PARAMETERS_T_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HFT_PARAMETERS_T_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HFT_PREDICTION_T_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HFT_PREDICTION_T_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3139381 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MRR_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MRR_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table HFT_ALGORITHM_T
--------------------------------------------------------

  CREATE TABLE "HFT_ALGORITHM_T" 
   (	"NAME" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HFT_DATA_T
--------------------------------------------------------

  CREATE TABLE "HFT_DATA_T" 
   (	"ID" NUMBER, 
	"STEPS" NUMBER, 
	"MDATE" DATE, 
	"YEAR" NUMBER, 
	"WEEK" NUMBER, 
	"WEEKDAY" NUMBER, 
	"HOUR" NUMBER, 
	"TREATMENT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HFT_METRICS_T
--------------------------------------------------------

  CREATE TABLE "HFT_METRICS_T" 
   (	"ID" NUMBER, 
	"F1_SCORE" NUMBER, 
	"TRUE_NEGATIVE" NUMBER, 
	"TRUE_POSITIVE" NUMBER, 
	"FALSE_NEGATIVE" NUMBER, 
	"FALSE_POSITIVE" NUMBER, 
	"RUNDATE" DATE, 
	"STARTDATE" DATE, 
	"ENDDATE" DATE, 
	"ACCURACY" NUMBER, 
	"HFT_MODEL_ID" NUMBER, 
	"HFT_TREATMENT_ID" NUMBER, 
	"THRESHOLD" NUMBER, 
	"NUMBER_OF_OBSERVATIONS" NUMBER, 
	"WEEKDAY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HFT_MODEL_PARAMETERS_T
--------------------------------------------------------

  CREATE TABLE "HFT_MODEL_PARAMETERS_T" 
   (	"ID" NUMBER, 
	"VALUE" VARCHAR2(2000 BYTE), 
	"HFT_MODEL_T_ID" NUMBER, 
	"HFT_PARAMETERS_T_ID" NUMBER(9,0), 
	"TREATMENT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HFT_MODEL_T
--------------------------------------------------------

  CREATE TABLE "HFT_MODEL_T" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(50 BYTE), 
	"ALGORITHM" VARCHAR2(40 BYTE), 
	"USEDATE" DATE, 
	"DESTINATION" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HFT_PARAMETERS_T
--------------------------------------------------------

  CREATE TABLE "HFT_PARAMETERS_T" 
   (	"ID" NUMBER(9,0), 
	"NAME" VARCHAR2(150 BYTE), 
	"HFT_ALGORITHM_T_NAME" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HFT_PREDICTION_T
--------------------------------------------------------

  CREATE TABLE "HFT_PREDICTION_T" 
   (	"ID" NUMBER, 
	"STEPS_CAT" NUMBER, 
	"PREDICTION_CAT" NUMBER, 
	"PROBABILITY" NUMBER, 
	"HFT_DATA_T_ID" NUMBER, 
	"HFT_MODEL_T_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HFT_TREATMENT_T
--------------------------------------------------------

  CREATE TABLE "HFT_TREATMENT_T" 
   (	"TREATMENT_ID" NUMBER, 
	"AGE" NUMBER, 
	"GENDER" VARCHAR2(1 BYTE), 
	"RESEARCH_GROUP" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View HFT_HYPERPARAMETERS_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HFT_HYPERPARAMETERS_V" ("TREATMENT_ID", "ALGORITHM_NAME", "HYPERPARAMETER", "VALUE") AS 
  select mpr.treatment_id treatment_id
,      prr.hft_algorithm_t_name algorithm_name
,      prr.name hyperparameter
,      mpr.value value
from hft_model_parameters_t mpr
,    hft_model_t mdl
,    HFT_PARAMETERS_T prr
where mdl.id=mpr.HFT_MODEL_T_ID
and prr.ID=mpr.HFT_PARAMETERS_T_ID
order by treatment_id,hft_algorithm_t_name,prr.name;
--------------------------------------------------------
--  DDL for View HFT_MAX_F1_SCORE_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HFT_MAX_F1_SCORE_V" ("MAX_SCORE", "WEEKDAY", "ALGORITHM") AS 
  select max(algo.score)max_score
     ,      algo.weekday weekday
     ,      algo.algorithm algorithm
    from
       (select distinct(algorithm)algorithm
        ,      avg(f1_score_real_day) score
        ,      fss.weekday
        from hft_f1_scores_t fss
        where fss.weekday not in (5,6)
        group by algorithm,fss.weekday
         )algo
        group by algo.weekday,algo.algorithm
        order by weekday,max(algo.score);
--------------------------------------------------------
--  DDL for View HFT_PREDICTION_CM_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HFT_PREDICTION_CM_V" ("TREATMENT_ID", "WEEK", "WEEKDAY", "HOUR", "ALGORITHM", "PROBABILITY", "STEPS_CAT", "PREDICTION_CAT", "CONFUSION_MATRIX") AS 
  select  treatment_id
       ,       week
       ,       weekday
       ,       hour
       ,       mdl.ALGORITHM
       ,      pdn.PROBABILITY
        ,     pdn.steps_cat
       ,      pdn.prediction_cat
       , case when steps_cat=1 and prediction_cat=1 then 'tp' 
              when steps_cat=1 and prediction_cat=0 then 'fn'
              when steps_cat=0 and prediction_cat=0 then 'tn'
              when steps_cat=0 and prediction_cat=1 then 'fp'
               end confusion_matrix
       from hft_prediction_t pdn
       ,    hft_data_t dta
       ,    hft_model_t mdl
       where mdl.id=pdn.hft_model_t_id
       and   pdn.hft_data_t_id=dta.id
       ORDER BY WEEK ASC;
--------------------------------------------------------
--  DDL for View HFT_SUM_STEPS_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HFT_SUM_STEPS_V" ("ID", "TREATMENT_ID", "RESEARCH_GROUP", "YEAR", "WEEK", "WEEKDAY", "WEEKDAY_CHAR", "HOUR", "SUM_STEPS", "SUM_STEPS_HOUR", "DAILY_STEPS") AS 
  select t1.id,
  t1.treatment_id,
  ttt.research_group,
  t1.year,
  t1.week,
  t1.weekday,
  hft_replace_number_f(t1.weekday) weekday_char,
  t1.hour,sum(t1.steps) sum_steps, 
  hft_sum_steps_hour_f (t1.treatment_id,year,week,weekday,hour) sum_steps_hour, 
  hft_sum_steps_f (t1.treatment_id,year,week,weekday)daily_steps
from hft_data_t t1
,    hft_treatment_t ttt
where ttt.treatment_id=t1.treatment_id
and
0 <> (select sum(t2.steps)
from hft_data_t t2
where t1.treatment_id=t2.treatment_id
and t1.weekday=t2.weekday
and t1.week=t2.week
)
group by t1.treatment_id,ttt.research_group,t1.year,t1.weekday,t1.hour,t1.week,t1.id
order by t1.treatment_id,ttt.research_group,t1.year,t1.week,t1.weekday,t1.hour;
--------------------------------------------------------
--  DDL for View HFT_TTT_AGM_ACCURACY_SCORE_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HFT_TTT_AGM_ACCURACY_SCORE_V" ("METRICS_ID", "HFT_TREATMENT_ID", "ALGORITHM", "WEEKDAY", "ACCURACY", "TRUE_NEGATIVE", "TRUE_POSITIVE", "FALSE_NEGATIVE", "FALSE_POSITIVE", "NUMBER_OF_OBSERVATIONS", "THRESHOLD") AS 
  select   mtc.id metrics_id
,        mtc.hft_treatment_id
,        mdl.ALGORITHM
,        mtc.weekday
,        mtc.ACCURACY
,        mtc.true_negative
,        mtc.true_positive
,        mtc.false_negative
,        mtc.false_positive
,        mtc.number_of_observations
,        mtc.threshold
from hft_metrics_t mtc
,    hft_model_t mdl
,    (select    distinct ttt.treatment_id hft_treatment_id
        ,        mdl.ALGORITHM
        ,        mtc.f1_score
        ,        max(mtc.accuracy) over (partition by ttt.treatment_id,mtc.weekday) max_accuracy
        ,        mtc.weekday
        from hft_model_t mdl
        ,    hft_metrics_t mtc
        ,    hft_treatment_t ttt
        where mdl.id=mtc.hft_model_id
        and mtc.hft_treatment_id=ttt.treatment_id
         ) max
 where max.hft_treatment_id=mtc.hft_treatment_id
 and   mdl.id=mtc.hft_model_id
 and   mtc.accuracy=max.max_accuracy
 group by  mtc.id 
,        mtc.hft_treatment_id
,        mdl.ALGORITHM
,        mtc.weekday
,        mtc.accuracy
,        mtc.true_negative
,        mtc.true_positive
,        mtc.false_negative
,        mtc.false_positive
,        mtc.number_of_observations
,        mtc.threshold
order by mtc.weekday;
--------------------------------------------------------
--  DDL for View HFT_TTT_AGM_F1_SCORE_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HFT_TTT_AGM_F1_SCORE_V" ("METRICS_ID", "HFT_TREATMENT_ID", "ALGORITHM", "WEEKDAY", "F1_SCORE", "TRUE_NEGATIVE", "TRUE_POSITIVE", "FALSE_NEGATIVE", "FALSE_POSITIVE", "NUMBER_OF_OBSERVATIONS", "THRESHOLD") AS 
  select   mtc.id metrics_id
,        mtc.hft_treatment_id
,        mdl.ALGORITHM
,        mtc.weekday
,        mtc.f1_score
,        mtc.true_negative
,        mtc.true_positive
,        mtc.false_negative
,        mtc.false_positive
,        mtc.number_of_observations
,        mtc.threshold
from hft_metrics_t mtc
,    hft_model_t mdl
,    (select    distinct ttt.treatment_id hft_treatment_id
        ,        mdl.ALGORITHM
        ,        mtc.f1_score
        ,        max(mtc.F1_SCORE) over (partition by ttt.treatment_id,mtc.weekday) max_f1_score
        ,        mtc.weekday
        from hft_model_t mdl
        ,    hft_metrics_t mtc
        ,    hft_treatment_t ttt
        where mdl.id=mtc.hft_model_id
        and mtc.hft_treatment_id=ttt.treatment_id
         ) max
 where max.hft_treatment_id=mtc.hft_treatment_id
 and   mdl.id=mtc.hft_model_id
 and   mtc.f1_score=max.max_f1_score
 group by  mtc.id 
,        mtc.hft_treatment_id
,        mdl.ALGORITHM
,        mtc.weekday
,        mtc.f1_score
,        mtc.true_negative
,        mtc.true_positive
,        mtc.false_negative
,        mtc.false_positive
,        mtc.number_of_observations
,        mtc.threshold
order by mtc.weekday;
--------------------------------------------------------
--  DDL for Index HFT_ALGORITHM_T_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HFT_ALGORITHM_T_PK" ON "HFT_ALGORITHM_T" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HFT_DATA_T_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HFT_DATA_T_PK" ON "HFT_DATA_T" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HFT_METRICS_T_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HFT_METRICS_T_PK" ON "HFT_METRICS_T" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HFT_MODEL_PARAMETERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HFT_MODEL_PARAMETERS_PK" ON "HFT_MODEL_PARAMETERS_T" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HFT_MODEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HFT_MODEL_PK" ON "HFT_MODEL_T" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HFT_PARAMETERS_T_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HFT_PARAMETERS_T_PK" ON "HFT_PARAMETERS_T" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HFT_PREDICTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HFT_PREDICTION_PK" ON "HFT_PREDICTION_T" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index HFT_TREATMENT_T_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HFT_TREATMENT_T_PK" ON "HFT_TREATMENT_T" ("TREATMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INDEX1
--------------------------------------------------------

  CREATE INDEX "INDEX1" ON "HFT_DATA_T" ("YEAR", "WEEK", "WEEKDAY", "HOUR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INDEX2
--------------------------------------------------------

  CREATE INDEX "INDEX2" ON "HFT_DATA_T" ("YEAR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INDEX3
--------------------------------------------------------

  CREATE INDEX "INDEX3" ON "HFT_DATA_T" ("WEEK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INDEX4
--------------------------------------------------------

  CREATE INDEX "INDEX4" ON "HFT_DATA_T" ("HOUR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INDEX5
--------------------------------------------------------

  CREATE UNIQUE INDEX "INDEX5" ON "HFT_PREDICTION_T" ("HFT_DATA_T_ID", "HFT_MODEL_T_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TREATMENT_ID_IDX
--------------------------------------------------------

  CREATE INDEX "TREATMENT_ID_IDX" ON "HFT_DATA_T" ("TREATMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table HFT_ALGORITHM_T
--------------------------------------------------------

  ALTER TABLE "HFT_ALGORITHM_T" ADD CONSTRAINT "HFT_ALGORITHM_T_PK" PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HFT_ALGORITHM_T" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HFT_DATA_T
--------------------------------------------------------

  ALTER TABLE "HFT_DATA_T" ADD CONSTRAINT "HFT_DATA_T_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HFT_DATA_T" MODIFY ("TREATMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "HFT_DATA_T" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HFT_METRICS_T
--------------------------------------------------------

  ALTER TABLE "HFT_METRICS_T" ADD CONSTRAINT "HFT_METRICS_T_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HFT_METRICS_T" MODIFY ("HFT_TREATMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "HFT_METRICS_T" MODIFY ("HFT_MODEL_ID" NOT NULL ENABLE);
  ALTER TABLE "HFT_METRICS_T" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HFT_MODEL_PARAMETERS_T
--------------------------------------------------------

  ALTER TABLE "HFT_MODEL_PARAMETERS_T" ADD CONSTRAINT "HFT_MODEL_PARAMETERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HFT_MODEL_PARAMETERS_T" MODIFY ("HFT_PARAMETERS_T_ID" NOT NULL ENABLE);
  ALTER TABLE "HFT_MODEL_PARAMETERS_T" MODIFY ("HFT_MODEL_T_ID" NOT NULL ENABLE);
  ALTER TABLE "HFT_MODEL_PARAMETERS_T" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HFT_MODEL_T
--------------------------------------------------------

  ALTER TABLE "HFT_MODEL_T" ADD CONSTRAINT "HFT_MODEL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HFT_MODEL_T" MODIFY ("ALGORITHM" NOT NULL ENABLE);
  ALTER TABLE "HFT_MODEL_T" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HFT_MODEL_T" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HFT_PARAMETERS_T
--------------------------------------------------------

  ALTER TABLE "HFT_PARAMETERS_T" ADD CONSTRAINT "HFT_PARAMETERS_T_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HFT_PARAMETERS_T" MODIFY ("HFT_ALGORITHM_T_NAME" NOT NULL ENABLE);
  ALTER TABLE "HFT_PARAMETERS_T" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HFT_PARAMETERS_T" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HFT_PREDICTION_T
--------------------------------------------------------

  ALTER TABLE "HFT_PREDICTION_T" ADD CONSTRAINT "HFT_PREDICTION_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HFT_PREDICTION_T" MODIFY ("HFT_MODEL_T_ID" NOT NULL ENABLE);
  ALTER TABLE "HFT_PREDICTION_T" MODIFY ("PROBABILITY" NOT NULL ENABLE);
  ALTER TABLE "HFT_PREDICTION_T" MODIFY ("PREDICTION_CAT" NOT NULL ENABLE);
  ALTER TABLE "HFT_PREDICTION_T" MODIFY ("STEPS_CAT" NOT NULL ENABLE);
  ALTER TABLE "HFT_PREDICTION_T" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HFT_TREATMENT_T
--------------------------------------------------------

  ALTER TABLE "HFT_TREATMENT_T" ADD CONSTRAINT "HFT_TREATMENT_T_PK" PRIMARY KEY ("TREATMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "HFT_TREATMENT_T" ADD CHECK (
    gender IN (
        'F','M','U'
    )
) ENABLE;
  ALTER TABLE "HFT_TREATMENT_T" MODIFY ("TREATMENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table HFT_DATA_T
--------------------------------------------------------

  ALTER TABLE "HFT_DATA_T" ADD CONSTRAINT "HFT_DATA_T_HFT_TREATMENT_T_FK" FOREIGN KEY ("TREATMENT_ID")
	  REFERENCES "HFT_TREATMENT_T" ("TREATMENT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HFT_METRICS_T
--------------------------------------------------------

  ALTER TABLE "HFT_METRICS_T" ADD CONSTRAINT "HFT_METRICS_T_HFT_TTT_T_FK" FOREIGN KEY ("HFT_TREATMENT_ID")
	  REFERENCES "HFT_TREATMENT_T" ("TREATMENT_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HFT_PARAMETERS_T
--------------------------------------------------------

  ALTER TABLE "HFT_PARAMETERS_T" ADD CONSTRAINT "HFT_PRR_T_HFT_ALGORITHM_T_FK" FOREIGN KEY ("HFT_ALGORITHM_T_NAME")
	  REFERENCES "HFT_ALGORITHM_T" ("NAME") ENABLE;
--------------------------------------------------------
--  DDL for Trigger FKNTM_HFT_METRICS_REGR_T
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "FKNTM_HFT_METRICS_REGR_T" BEFORE
    UPDATE OF hft_model_t_id,hft_treatment_t_treatment_id ON hft_metrics_regr_t
BEGIN
    raise_application_error(-20225,'Non Transferable FK constraint  on table HFT_METRICS_REGR_T is violated');
END;
/
ALTER TRIGGER "FKNTM_HFT_METRICS_REGR_T" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FKNTM_HFT_METRICS_T
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "FKNTM_HFT_METRICS_T" BEFORE
    UPDATE OF hft_model_id,hft_treatment_t_treatment_id ON hft_metrics_t
BEGIN
    raise_application_error(-20225,'Non Transferable FK constraint  on table HFT_METRICS_T is violated');
END;
/
ALTER TRIGGER "FKNTM_HFT_METRICS_T" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FKNTM_HFT_PREDICTION_T
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "FKNTM_HFT_PREDICTION_T" BEFORE
    UPDATE OF hft_model_t_id ON hft_prediction_t
BEGIN
    raise_application_error(-20225,'Non Transferable FK constraint  on table HFT_PREDICTION_T is violated');
END;
/
ALTER TRIGGER "FKNTM_HFT_PREDICTION_T" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FKNTO_HFT_PREDICTION_T
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "FKNTO_HFT_PREDICTION_T" BEFORE
    UPDATE OF hft_data_t_id ON hft_prediction_t
    FOR EACH ROW
BEGIN
    IF :old.hft_data_t_id IS NOT NULL THEN
        raise_application_error(-20225,'Non Transferable FK constraint HFT_PREDICTION_HFT_DATA_T_FK on table HFT_PREDICTION_T is violated'
);
    END IF;
END;
/
ALTER TRIGGER "FKNTO_HFT_PREDICTION_T" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HFT_DATA_T_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HFT_DATA_T_ID_TRG" BEFORE
    INSERT ON hft_data_t
    FOR EACH ROW
     WHEN (
        new.id IS NULL
    ) BEGIN
    :new.id := hft_data_t_id_seq.nextval;
END;
/
ALTER TRIGGER "HFT_DATA_T_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HFT_METRICS_T_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HFT_METRICS_T_ID_TRG" BEFORE
    INSERT ON hft_metrics_t
    FOR EACH ROW
     WHEN (
        new.id IS NULL
    ) BEGIN
    :new.id := hft_metrics_t_id_seq.nextval;
END;
/
ALTER TRIGGER "HFT_METRICS_T_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HFT_MODEL_PARAMETERS_T_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HFT_MODEL_PARAMETERS_T_ID_TRG" BEFORE
    INSERT ON hft_model_parameters_t
    FOR EACH ROW
     WHEN (
        new.id IS NULL
    ) BEGIN
    :new.id := hft_model_parameters_t_id_seq.nextval;
END;
/
ALTER TRIGGER "HFT_MODEL_PARAMETERS_T_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HFT_MODEL_T_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HFT_MODEL_T_ID_TRG" BEFORE
    INSERT ON hft_model_t
    FOR EACH ROW
     WHEN (
        new.id IS NULL
    ) BEGIN
    :new.id := hft_model_t_id_seq.nextval;
END;
/
ALTER TRIGGER "HFT_MODEL_T_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HFT_NO_MODEL_T_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HFT_NO_MODEL_T_ID_TRG" BEFORE
    INSERT ON hft_no_model_t
    FOR EACH ROW
     WHEN (
        new.id IS NULL
    ) BEGIN
    :new.id := hft_no_model_t_id_seq.nextval;
END;
/
ALTER TRIGGER "HFT_NO_MODEL_T_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HFT_PARAMETERS_T_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HFT_PARAMETERS_T_ID_TRG" BEFORE
    INSERT ON hft_parameters_t
    FOR EACH ROW
     WHEN (
        new.id IS NULL
    ) BEGIN
    :new.id := hft_parameters_t_id_seq.nextval;
END;
/
ALTER TRIGGER "HFT_PARAMETERS_T_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HFT_PREDICTION_T_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HFT_PREDICTION_T_ID_TRG" BEFORE
    INSERT ON hft_prediction_t
    FOR EACH ROW
     WHEN (
        new.id IS NULL
    ) BEGIN
    :new.id := hft_prediction_t_id_seq.nextval;
END;
/
ALTER TRIGGER "HFT_PREDICTION_T_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MRR_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MRR_ID_TRG" BEFORE
    INSERT ON hft_metrics_regr_t
    FOR EACH ROW
     WHEN (
        new.id IS NULL
    ) BEGIN
    :new.id := mrr_id_seq.nextval;
END;
/
ALTER TRIGGER "MRR_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Function HFT_ACC_SCORE_PER_DAY_HR_F
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HFT_ACC_SCORE_PER_DAY_HR_F" (p_treatment_id in number,p_weekday in number,p_algorithm in varchar,p_hour in number) return number is

/* calculate accuracy on predictions per weekday and hour
Accuracy (ACC) = ? True positive + ? True negative/ ? Total population


TP= pred=actual=>1=1
TN= pred=actual=>0=0
FN= pred<>actual=>0<>1
FP= pred<>actual=>1<>0*/

cursor c_cat (b_treatment_id in number
             ,b_weekday in number 
             ,b_algorithm in varchar2
             ,b_hour in number)is
       select pdn.steps_cat
       ,      pdn.prediction_cat
       from hft_prediction_t pdn
       ,    hft_data_t dta
       ,    hft_model_t mdl
       where mdl.id=pdn.hft_model_t_id
       and   mdl.algorithm=b_algorithm
       and   pdn.hft_data_t_id=dta.id
       and   dta.weekday=b_weekday
       and   dta.hour=b_hour
       and   dta.treatment_id=b_treatment_id;
       
r_cat c_cat%rowtype;       

l_treatment_id number;
l_weekday number;
l_algorithm VARCHAR2(10);
l_hour number;
l_steps_cat number;
l_pred_cat number;
l_tn number:=0;
l_tp number:=0;
l_fp number:=0;
l_fn number:=0;
l_accuracy number:=0;

begin
l_treatment_id:=p_treatment_id;
l_weekday:=p_weekday;
l_algorithm:=p_algorithm;
l_hour:=p_hour;
open c_cat(b_treatment_id=>l_treatment_id,
           b_weekday=>l_weekday,
           b_algorithm=>l_algorithm,
           b_hour=>l_hour);
  fetch c_cat into r_cat;           
  while c_cat%found loop 
    l_steps_cat:=r_cat.steps_cat;
    l_pred_cat:=r_cat.prediction_cat;
    if l_steps_cat=0 and l_pred_cat=0 then
       l_tn:=l_tn+1;
    end if;
    if l_steps_cat=0 and l_pred_cat=1 then
       l_fp:=l_fp+1;
    end if;
    if l_steps_cat=1 and l_pred_cat=1 then
       l_tp:=l_tp+1;
    end if;
    if l_steps_cat=1 and l_pred_cat=0 then
       l_fn:=l_fn+1;
    end if;
    fetch c_cat into r_cat;
   end loop; 
   close c_cat;
   --dbms_output.put_line('fp '||l_fp||' fn '||l_fn||' tp '||l_tp||' tn '||l_tn);
  /* precision=TP/(TP+FP)
     recall=TP/(TP+FN)

     TP= pred=actual=>1=1
     TN= pred=actual=>0=0
     FN= pred<>actual=>0<>1
     FP= pred<>actual=>1<>0*/
   if l_tp+l_fp+l_tn+l_fn=0 then
      l_accuracy:=-1;
   else  
      --Accuracy (ACC) = ? True positive + ? True negative/ ? Total population
      l_accuracy:= (l_tp+l_tn)/(l_tp+l_fp+l_tn+l_fn);
     
   end if;   
   
   --dbms_output.put_line('precision '||l_precision||' l_recall '||l_recall||' F1 '||l_f1);
   return l_accuracy;
end;

/
--------------------------------------------------------
--  DDL for Function HFT_F1_SCORE_PER_DAY_CM_F
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HFT_F1_SCORE_PER_DAY_CM_F" (p_treatment_id in number,p_weekday in number,p_algorithm in varchar) return varchar is

/* calculate f1 on predictions
F1=2* (precision*recall/precision+recall)
precision=TP/(TP+FP)
recall=TP/(TP+FN)

TP= pred=actual=>1=1
TN= pred=actual=>0=0
FN= pred<>actual=>0<>1
FP= pred<>actual=>1<>0*/

cursor c_cat (b_treatment_id in number
             ,b_weekday in number 
             ,b_algorithm in varchar2)is
       select pdn.steps_cat
       ,      pdn.prediction_cat
       from hft_prediction_t pdn
       ,    hft_data_t dta
       ,    hft_model_t mdl
       where mdl.id=pdn.hft_model_t_id
       and   mdl.algorithm=b_algorithm
       and   pdn.hft_data_t_id=dta.id
       and   dta.weekday=b_weekday
       and   dta.treatment_id=b_treatment_id;
       
r_cat c_cat%rowtype;       

l_treatment_id number;
l_weekday number;
l_algorithm VARCHAR2(10);
l_steps_cat number;
l_pred_cat number;
l_tn number:=0;
l_tp number:=0;
l_fp number:=0;
l_fn number:=0;
l_precision number :=0;
l_recall number:=0;
l_f1 varchar2(200);

begin
l_treatment_id:=p_treatment_id;
l_weekday:=p_weekday;
l_algorithm:=p_algorithm;

open c_cat(b_treatment_id=>l_treatment_id,
           b_weekday=>l_weekday,
           b_algorithm=>l_algorithm);
  fetch c_cat into r_cat;           
  while c_cat%found loop 
    l_steps_cat:=r_cat.steps_cat;
    l_pred_cat:=r_cat.prediction_cat;
    if l_steps_cat=0 and l_pred_cat=0 then
       l_tn:=l_tn+1;
    end if;
    if l_steps_cat=0 and l_pred_cat=1 then
       l_fp:=l_fp+1;
    end if;
    if l_steps_cat=1 and l_pred_cat=1 then
       l_tp:=l_tp+1;
    end if;
    if l_steps_cat=1 and l_pred_cat=0 then
       l_fn:=l_fn+1;
    end if;
    fetch c_cat into r_cat;
   end loop; 
   close c_cat;
--   dbms_output.put_line('fp '||l_fp||' fn '||l_fn||' tp '||l_tp||' tn '||l_tn);
   if l_tp+l_fp=0 then
      l_f1:=-1;
   else   
      l_precision:= l_tp/(l_tp+l_fp);
      if l_tp+l_fn=0 then
         l_f1:=-1;
      else      
         l_recall:=l_tp/(l_tp+l_fn);
         l_f1:=2*((l_precision*l_recall)/(l_precision+l_recall));
      end if;
   end if;   
   
   l_f1:=('tp'||l_tp||'fn'||l_fn||' fp '||l_fp||' tn '||l_tn);
   return l_f1;
end;

/
--------------------------------------------------------
--  DDL for Function HFT_F1_SCORE_PER_DAY_F
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HFT_F1_SCORE_PER_DAY_F" (p_treatment_id in number,p_weekday in number,p_algorithm in varchar) return number is

/* calculate f1 on predictions
F1=2* (precision*recall/precision+recall)
precision=TP/(TP+FP)
recall=TP/(TP+FN)

TP= pred=actual=>1=1
TN= pred=actual=>0=0
FN= pred<>actual=>0<>1
FP= pred<>actual=>1<>0*/

cursor c_cat (b_treatment_id in number
             ,b_weekday in number 
             ,b_algorithm in varchar2)is
       select pdn.steps_cat
       ,      pdn.prediction_cat
       from hft_prediction_t pdn
       ,    hft_data_t dta
       ,    hft_model_t mdl
       where mdl.id=pdn.hft_model_t_id
       and   mdl.algorithm=b_algorithm
       and   pdn.hft_data_t_id=dta.id
       and   dta.weekday=b_weekday
       and   dta.treatment_id=b_treatment_id;
       
r_cat c_cat%rowtype;       

l_treatment_id number;
l_weekday number;
l_algorithm VARCHAR2(10);
l_steps_cat number;
l_pred_cat number;
l_tn number:=0;
l_tp number:=0;
l_fp number:=0;
l_fn number:=0;
l_precision number :=0;
l_recall number:=0;
l_f1 number:=0;

begin
l_treatment_id:=p_treatment_id;
l_weekday:=p_weekday;
l_algorithm:=p_algorithm;

open c_cat(b_treatment_id=>l_treatment_id,
           b_weekday=>l_weekday,
           b_algorithm=>l_algorithm);
  fetch c_cat into r_cat;           
  while c_cat%found loop 
    l_steps_cat:=r_cat.steps_cat;
    l_pred_cat:=r_cat.prediction_cat;
    if l_steps_cat=0 and l_pred_cat=0 then
       l_tn:=l_tn+1;
    end if;
    if l_steps_cat=0 and l_pred_cat=1 then
       l_fp:=l_fp+1;
    end if;
    if l_steps_cat=1 and l_pred_cat=1 then
       l_tp:=l_tp+1;
    end if;
    if l_steps_cat=1 and l_pred_cat=0 then
       l_fn:=l_fn+1;
    end if;
    fetch c_cat into r_cat;
   end loop; 
   close c_cat;
--   dbms_output.put_line('fp '||l_fp||' fn '||l_fn||' tp '||l_tp||' tn '||l_tn);
   if l_tp+l_fp=0 then
      l_f1:=-1;
   else   
      l_precision:= l_tp/(l_tp+l_fp);
      if l_tp+l_fn=0 then
         l_f1:=-1;
      else      
         l_recall:=l_tp/(l_tp+l_fn);
         l_f1:=2*((l_precision*l_recall)/(l_precision+l_recall));
      end if;
   end if;   
   
--   dbms_output.put_line('precision '||l_precision||' l_recall '||l_recall||' F1 '||l_f1);
   return l_f1;
end;

/
--------------------------------------------------------
--  DDL for Function HFT_SUM_STEPS_DAY_F
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HFT_SUM_STEPS_DAY_F" (p_treatment_id in number,p_year in number,p_week in number,p_weekday in number,p_hour in number) return number is

/* sum the steps of a day */
cursor c_sum_steps (b_treatment_id in number,
                    b_year in number,
                    b_week in number,
                    b_weekday in number,
                    b_hour in number) is
                  
select sum(sum_steps_hour) sum_steps
from hft_sum_steps_v
where treatment_id=b_treatment_id
and year= b_year
and week=b_week
and weekday=b_weekday
and hour=b_hour;

r_sum_steps c_sum_steps%rowtype;

l_treatment_id number;
l_year number;
l_week number;
l_weekday number;
l_sum_steps number;
l_hour number;
begin
 l_treatment_id:=p_treatment_id;
 l_year:=p_year;
 l_week:=p_week;
 l_weekday:=p_weekday;
 l_hour:=p_hour;
 
 open c_sum_steps(b_treatment_id=>l_treatment_id,
                  b_year=>l_year,
                  b_week=>l_week,
                  b_weekday=>l_weekday,
                  b_hour=>l_hour);
 fetch c_sum_steps into r_sum_steps;
 l_sum_steps:=r_sum_steps.sum_steps;
 close c_sum_steps;
 
 return l_sum_steps;
 end;

/
--------------------------------------------------------
--  DDL for Function HFT_SUM_STEPS_F
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HFT_SUM_STEPS_F" (p_treatment_id in number,p_year in number,p_week in number,p_weekday in number) return number is

/* sum the steps of a day */
cursor c_sum_steps (b_treatment_id in number,
                    b_year in number,
                    b_week in number,
                    b_weekday in number) is
                  
select sum(steps) sum_steps
from hft_data_t
where treatment_id=b_treatment_id
and year= b_year
and week=b_week
and weekday=b_weekday;

r_sum_steps c_sum_steps%rowtype;

l_treatment_id number;
l_year number;
l_week number;
l_weekday number;
l_sum_steps number:=0;
begin
 l_treatment_id:=p_treatment_id;
 l_year:=p_year;
 l_week:=p_week;
 l_weekday:=p_weekday;
 
 open c_sum_steps(b_treatment_id=>l_treatment_id,
                  b_year=>l_year,
                  b_week=>l_week,
                  b_weekday=>l_weekday);
 fetch c_sum_steps into r_sum_steps;
 l_sum_steps:=r_sum_steps.sum_steps;
 close c_sum_steps;
 
 return l_sum_steps;
 end;

/
--------------------------------------------------------
--  DDL for Function HFT_SUM_STEPS_HOUR_F
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HFT_SUM_STEPS_HOUR_F" (p_treatment_id in number,p_year in number,p_week in number,p_weekday in number,p_hour in number) return number is

/* sum the steps of a day from 7 o'clock till midnight running total per hour */
cursor c_sum_steps (b_treatment_id in number,
                    b_year in number,
                    b_week in number,
                    b_weekday in number,
                    b_hour in number) is
                  
select sum(steps) sum_steps
from hft_data_t
where treatment_id=b_treatment_id
and year= b_year
and week=b_week
and weekday=b_weekday
and hour>=7
and hour<=b_hour;

r_sum_steps c_sum_steps%rowtype;

l_treatment_id number;
l_year number;
l_week number;
l_weekday number;
l_sum_steps number;
l_hour number;
begin
 l_treatment_id:=p_treatment_id;
 l_year:=p_year;
 l_week:=p_week;
 l_weekday:=p_weekday;
 l_hour:=p_hour;
 open c_sum_steps(b_treatment_id=>l_treatment_id,
                  b_year=>l_year,
                  b_week=>l_week,
                  b_weekday=>l_weekday,
                  b_hour=>l_hour);
 fetch c_sum_steps into r_sum_steps;
 if c_sum_steps%found then
    l_sum_steps:=r_sum_steps.sum_steps;
 end if;
 close c_sum_steps;
 
 return nvl(l_sum_steps,0);
 end;

/
--------------------------------------------------------
--  DDL for Function HFT_F1_SCORE_PER_DAY_HR_F
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HFT_F1_SCORE_PER_DAY_HR_F" (p_treatment_id in number,p_weekday in number,p_algorithm in varchar,p_hour in number) return number is

/* calculate f1 on predictions per weekday and hour
F1=2* (precision*recall/precision+recall)
precision=TP/(TP+FP)
recall=TP/(TP+FN)

TP= pred=actual=>1=1
TN= pred=actual=>0=0
FN= pred<>actual=>0<>1
FP= pred<>actual=>1<>0*/

cursor c_cat (b_treatment_id in number
             ,b_weekday in number 
             ,b_algorithm in varchar2
             ,b_hour in number)is
       select pdn.steps_cat
       ,      pdn.prediction_cat
       from hft_prediction_t pdn
       ,    hft_data_t dta
       ,    hft_model_t mdl
       where mdl.id=pdn.hft_model_t_id
       and   mdl.algorithm=b_algorithm
       and   pdn.hft_data_t_id=dta.id
       and   dta.weekday=b_weekday
       and   dta.hour=b_hour
       and   dta.treatment_id=b_treatment_id;
       
r_cat c_cat%rowtype;       

l_treatment_id number;
l_weekday number;
l_algorithm VARCHAR2(10);
l_hour number;
l_steps_cat number;
l_pred_cat number;
l_tn number:=0;
l_tp number:=0;
l_fp number:=0;
l_fn number:=0;
l_precision number :=0;
l_recall number:=0;
l_f1 number:=0;

begin
l_treatment_id:=p_treatment_id;
l_weekday:=p_weekday;
l_algorithm:=p_algorithm;
l_hour:=p_hour;
open c_cat(b_treatment_id=>l_treatment_id,
           b_weekday=>l_weekday,
           b_algorithm=>l_algorithm,
           b_hour=>l_hour);
  fetch c_cat into r_cat;           
  while c_cat%found loop 
    l_steps_cat:=r_cat.steps_cat;
    l_pred_cat:=r_cat.prediction_cat;
    if l_steps_cat=0 and l_pred_cat=0 then
       l_tn:=l_tn+1;
    end if;
    if l_steps_cat=0 and l_pred_cat=1 then
       l_fp:=l_fp+1;
    end if;
    if l_steps_cat=1 and l_pred_cat=1 then
       l_tp:=l_tp+1;
    end if;
    if l_steps_cat=1 and l_pred_cat=0 then
       l_fn:=l_fn+1;
    end if;
    fetch c_cat into r_cat;
   end loop; 
   close c_cat;
   --dbms_output.put_line('fp '||l_fp||' fn '||l_fn||' tp '||l_tp||' tn '||l_tn);
  /* precision=TP/(TP+FP)
     recall=TP/(TP+FN)

     TP= pred=actual=>1=1
     TN= pred=actual=>0=0
     FN= pred<>actual=>0<>1
     FP= pred<>actual=>1<>0*/
   if l_tp+l_fp=0 then
      l_f1:=-1;
   else   
      l_precision:= l_tp/(l_tp+l_fp);
      if l_tp+l_fn=0 then
         l_f1:=-1;
      else      
         l_recall:=l_tp/(l_tp+l_fn);
         if l_precision+l_recall=0 then
            l_f1:=-1;
         else
            l_f1:=2*((l_precision*l_recall)/(l_precision+l_recall));
         end if;   
      end if;
   end if;   
   
   --dbms_output.put_line('precision '||l_precision||' l_recall '||l_recall||' F1 '||l_f1);
   return l_f1;
end;

/
--------------------------------------------------------
--  DDL for Procedure HFT_INSERT_INTO_HFT_DATA_T_P
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HFT_INSERT_INTO_HFT_DATA_T_P" (
  p_mdate in date,
  p_steps in number,
  p_treatment_id in number,
  p_year in number,
  p_week in number,
  p_weekday in number,
  p_hour in number,
  p_date in date
  )
	 is
begin
insert into hft_data_t (	
                 mdate
                , steps
                , year
                , week
                , weekday
                , hour
                , treatment_id)
	values (      p_mdate
                , p_steps
                , p_year
                , p_week
                , p_weekday
                , p_hour
                , p_treatment_id
	);
	commit;
end;

/
--------------------------------------------------------
--  DDL for Procedure HFT_INSERT_INTO_HFT_MODEL_T_P
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HFT_INSERT_INTO_HFT_MODEL_T_P" (
  p_name in varchar,
  p_algorithm in varchar,
  p_destination in varchar
  )
	 is
begin
insert into hft_model_t (	
                 name
                , algorithm
                , destination
                , usedate
                )
	values (      p_name
                , p_algorithm
                , p_destination
                , sysdate
               
	);
	commit;
end;

/
--------------------------------------------------------
--  DDL for Procedure INSERT_INTO_HFT_PREDICTION_T_F
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_INTO_HFT_PREDICTION_T_F" (P_HFT_DATA_T_ID in integer,p_HFT_MODEL_T_ID in integer,p_STEPS_CAT in integer
,p_PREDICTION_CAT in integer)

	 is
begin
insert into hft_prediction_t (	
                  hft_data_t_id
                , hft_model_t_id
                , steps_cat
                , prediction_cat
                )
	values (        p_hft_data_t_id
                , p_hft_model_t_id
                , p_steps_cat
                , p_prediction_cat
               
	);
	commit;
end;

/
