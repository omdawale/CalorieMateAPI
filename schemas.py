from pydantic import BaseModel

class CalorieBase(BaseModel):
    #id: int
    food_item: str
    calorie: int
    protein: float
    carbs: float
    fiber: float
    vitamins: str
    calcium: int
    image_url: str
    fat: float

class CalorieAdd(CalorieBase):
    pass

class Calorie(CalorieBase):
    id: int

    class config:
        from_attribute = True

class Caloriesbyname(CalorieBase):
    food_item: str

    class config:
        from_attribute = True