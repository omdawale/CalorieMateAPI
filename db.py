import os
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base
from dotenv import load_dotenv

load_dotenv()  

SQLALCHEMY_DATABASE_URL = os.getenv("DATABASE_URL")

engine = create_engine(
    SQLALCHEMY_DATABASE_URL,
    connect_args={"sslmode": "require"}  # this ensures secure Railway connection
)

Sessionlocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = Sessionlocal()
    try:
        yield db
    finally:
        db.close()

def create_table():
    Base.metadata.create_all(bind=engine)


#psql postgresql://postgres:IoteEBOeQkAtOPqKyAWJodnDDdgvkood@interchange.proxy.rlwy.net:25390/railway< caloriemates_dump.sql



#postgresql://postgres:1234@localhost:5432/caloriemates