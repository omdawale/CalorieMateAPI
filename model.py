from db import Base
from sqlalchemy import Integer, Column, String, Float

#Book
class FoodCalories(Base):
    __tablename__ = "calories"

    id = Column(Integer, primary_key = True, index = True)
    food_item = Column(String, index=True)
    calorie = Column(Integer, index=True)
    protein = Column(Float, index=True)
    carbs = Column(Float, index=True)
    fiber = Column(Float, index=True)
    vitamins = Column(String, index=True)
    calcium = Column(Integer, index=True)
    image_url = Column(String, index=True)
    fat = Column(Float, index=True)
