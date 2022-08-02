CREATE TABLE "public.flights" (
	"id" serial NOT NULL,
	"initials" TEXT NOT NULL,
	"departure" time with time zone NOT NULL,
	"arrival" time with time zone NOT NULL,
	"airportOriginId" int NOT NULL,
	"airportDestinationId" int NOT NULL,
	"companyId" int NOT NULL,
	CONSTRAINT "flights_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.airport" (
	"id" serial NOT NULL,
	"initials" TEXT NOT NULL,
	"name" TEXT NOT NULL,
	CONSTRAINT "airport_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.companies" (
	"id" serial NOT NULL,
	"initials" TEXT NOT NULL,
	"nome" TEXT NOT NULL,
	CONSTRAINT "companies_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "flights" ADD CONSTRAINT "flights_fk0" FOREIGN KEY ("airportOriginId") REFERENCES "airport"("id");
ALTER TABLE "flights" ADD CONSTRAINT "flights_fk1" FOREIGN KEY ("airportDestinationId") REFERENCES "airport"("id");
ALTER TABLE "flights" ADD CONSTRAINT "flights_fk2" FOREIGN KEY ("companyId") REFERENCES "companies"("id");






