-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/aRfoDC
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "continent" (
    "country_code" varchar(3)   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "continent" varchar(60)   NULL,
    "region" varchar(50)   NULL,
    CONSTRAINT "pk_continent" PRIMARY KEY (
        "country_code"
     )
);

CREATE TABLE "gdp" (
    "id"  SERIAL  NOT NULL,
    "country" varchar(100)   NOT NULL,
    "country_code" varchar(3)   NOT NULL,
    "year" varchar(4)   NOT NULL,
    "month" varchar(2)   NOT NULL,
    "GDPpermonth" float   NULL,
    CONSTRAINT "pk_gdp" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "population" (
    "id"  SERIAL  NOT NULL,
    "country" varchar(100)   NOT NULL,
    "country_code" varchar(3)   NOT NULL,
    "year" varchar(4)   NOT NULL,
    "month" varchar(2)   NOT NULL,
    "populationpermonth" float   NULL,
    CONSTRAINT "pk_population" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "energyconsumption" (
    "id"  SERIAL  NOT NULL,
    "country_code" varchar(3)   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "year" varchar(4)   NOT NULL,
    "month" varchar(2)   NOT NULL,
    "distribution_losses_electricity" float   NULL,
    "coal_peat_and_manufactured_gases" float   NULL,
    "combustible_renewables" float   NULL,
    "geothermal" float   NULL,
    "hydro" float   NULL,
    "natural_gas" float   NULL,
    "nuclear" float   NULL,
    "oil_and_petroleum_products" float   NULL,
    "other_combustible_non-renewables" float   NULL,
    "other_renewables" float   NULL,
    "others" float   NULL,
    "solar" float   NULL,
    "wind" float   NULL,
    "total_exports_electricity" float   NULL,
    "total_imports_electricity" float   NULL,
    "used_for_pumped_storage_electricity" float   NULL,
    CONSTRAINT "pk_energyconsumption" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "temparature" (
    "id"  SERIAL  NOT NULL,
    "country_code" varchar(3)   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "year" varchar(4)   NOT NULL,
    "month" varchar(2)   NOT NULL,
    "avg_temp" float   NOT NULL,
    CONSTRAINT "pk_temparature" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "gdp" ADD CONSTRAINT "fk_gdp_country_code" FOREIGN KEY("country_code")
REFERENCES "continent" ("country_code");

ALTER TABLE "population" ADD CONSTRAINT "fk_population_country_code" FOREIGN KEY("country_code")
REFERENCES "continent" ("country_code");

ALTER TABLE "energyconsumption" ADD CONSTRAINT "fk_energyconsumption_country_code" FOREIGN KEY("country_code")
REFERENCES "continent" ("country_code");

ALTER TABLE "temparature" ADD CONSTRAINT "fk_temparature_country_code" FOREIGN KEY("country_code")
REFERENCES "continent" ("country_code");

