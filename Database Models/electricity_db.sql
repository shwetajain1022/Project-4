CREATE TABLE "continent" (
    "country" varchar(100)   NOT NULL,
	"country_code" varchar(3)   NOT NULL,
    "continent" varchar(60),
    "region" varchar(50),
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
    "gdp_per_month" float   NOT NULL,
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
    "population_per_month" float   NOT NULL,
    CONSTRAINT "pk_population" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "energyconsumption" (
    "id"  SERIAL  NOT NULL,
    "country_code" varchar(3)   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "month" varchar(2)   NOT NULL,
	"year" varchar(4)   NOT NULL,
    "distribution_losses_electricity" float   NOT NULL,
    "coal_peat_and_manufactured_gases" float   NOT NULL,
    "combustible_renewables" float   NOT NULL,
    "geothermal" float  NOT NULL,
    "hydro" float   NOT NULL,
    "natural_gas" float   NOT NULL,
    "nuclear" float   NOT NULL,
    "oil_and_petroleum_products" float   NOT NULL,
    "other_combustible_non-renewables" float   NOT NULL,
    "other_renewables,others" float   NOT NULL,
    "solar" float   NOT NULL,
    "wind" float   NOT NULL,
    "total_exports_electricity" float   NOT NULL,
    "total_imports_electricity" float   NOT NULL,
    "used_for_pumped_storage_electricity" float   NOT NULL,
    CONSTRAINT "pk_energyconsumption" PRIMARY KEY (
        "id"
     )
);


ALTER TABLE "gdp" ADD CONSTRAINT "fk_gdp_country_code" FOREIGN KEY("country_code")
REFERENCES "continent" ("country_code");

ALTER TABLE "population" ADD CONSTRAINT "fk_population_country_code" FOREIGN KEY("country_code")
REFERENCES "continent" ("country_code");

ALTER TABLE "energyconsumption" ADD CONSTRAINT "fk_energyconsumption_country_code" FOREIGN KEY("country_code")
REFERENCES "continent" ("country_code");
