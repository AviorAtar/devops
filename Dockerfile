# שלב 1: בחר את התמונה בסיס של פייתון (גרסה 3.9 בסלי)
FROM python:3.9-slim

# שלב 2: הגדרת ספריית עבודה בתוך הקונטיינר
WORKDIR /app

# שלב 3: העתקת כל הקבצים מתוך המחשב המקומי לתוך הקונטיינר
COPY . .

# שלב 4: התקנת כל התלויות מתוך requirements.txt
RUN pip install -r requirements.txt

# שלב 5: הגדרת משתנה סביבה שמציין את ה-Flask App
ENV FLASK_APP=flaskr

# שלב 6: הגדרת מצב פיתוח לאפליקציה
ENV FLASK_ENV=development

# שלב 7: ביצוע הפקודה `flask run` כדי להפעיל את השרת
CMD ["flask", "run", "--host=0.0.0.0"]

