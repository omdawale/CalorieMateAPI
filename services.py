from model import FoodCalories
from sqlalchemy.orm import Session
from schemas import CalorieAdd

def create_calorie_item(db: Session, cal_data: CalorieAdd):
    calorie_instance = FoodCalories(**cal_data.model_dump()) 
    db.add(calorie_instance)
    db.commit()
    db.refresh(calorie_instance)
    return calorie_instance

def get_calorie_data(db:Session):
    return db.query(FoodCalories).all()

def get_specific_calorie_data(db:Session, food_name: str):
    return db.query(FoodCalories).filter(FoodCalories.food_item == food_name).first()

def update_calorie_data(db: Session, cal_data: CalorieAdd, food_id: int):
    calorie_queryset = db.query(FoodCalories).filter(FoodCalories.id==food_id).first()
    if calorie_queryset:
        for key, value in cal_data.model_dump().items():
            setattr(calorie_queryset,key,value)
        db.commit()
        db.refresh(calorie_queryset)
    return calorie_queryset

def delete_calorie_data(db:Session, id: int):
    calorie_queryset = db.query(FoodCalories).filter(FoodCalories.id == id).first()
    if calorie_queryset:
        db.delete(calorie_queryset)
        db.commit()
    return calorie_queryset