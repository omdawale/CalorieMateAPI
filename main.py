from fastapi import FastAPI, Depends, HTTPException
import services, model, schemas
from db import get_db,engine
from sqlalchemy.orm import Session

app = FastAPI()

@app.get("/food_calories/all", response_model=list[schemas.Calorie])
async def get_all_foods_calories(db: Session = Depends(get_db)):
    return services.get_calorie_data(db)

@app.post("/food_calories/add-food", response_model=schemas.Calorie)
async def create_foods_calories(cal_data: schemas.CalorieAdd, db: Session = Depends(get_db)):
    return services.create_calorie_item(db, cal_data)

@app.get("/food_calories/{food_item}", response_model=schemas.Caloriesbyname)
async def get_foods_calories_by_id(food_item: str, db: Session = Depends(get_db)):
    calorie_queryset = services.get_specific_calorie_data(db,food_item)
    if calorie_queryset:
        return calorie_queryset
    raise HTTPException(status_code=404, detail="Invalid Food Name Provided")

@app.put("/food_calories/update_food/{id}", response_model=schemas.Calorie)
async def update_foods_calories(cal_data: schemas.CalorieAdd, id:int, db: Session = Depends(get_db)):
    db_update = services.update_calorie_data(db,cal_data,id)
    if not db_update:
        raise HTTPException(status_code=404, detail="Food Item Not Found")
    return db_update

@app.delete("/food_calories/delete-food/{id}", response_model=schemas.Calorie)
async def delete_foods_calories(id: int, db: Session = Depends(get_db)):
    db_delete = services.delete_calorie_data(db,id)
    if not db_delete:
        raise HTTPException(status_code=404, detail="Food Item Not Found for Deletion")
    return db_delete