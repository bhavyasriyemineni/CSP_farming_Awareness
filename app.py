import pandas as pd

# Sample dataset (Replace with actual dataset)
data = {
    "State": ["Karnataka", "Karnataka", "Tamil Nadu", "Tamil Nadu", "Andhra Pradesh"],
    "District": ["Bangalore", "Bangalore", "Chennai", "Madurai", "Guntur"],
    "Mandal": ["Anekal", "Yelahanka", "Ambattur", "Usilampatti", "Tenali"],
    "Village": ["Jigani", "Attibele", "Avadi", "Kariapatti", "Nidubrolu"],
    "Soil Type": ["Red Soil", "Laterite Soil", "Black Soil", "Alluvial Soil", "Sandy Loam"],
    "pH": [6.2, 5.5, 7.8, 6.5, 7.0],
    "Organic Matter": [2.5, 1.8, 3.2, 2.7, 2.0],
    "Nitrogen": [150, 120, 180, 160, 140],
    "Phosphorus": [30, 25, 35, 28, 22],
    "Potassium": [200, 180, 220, 190, 160],
}

# Convert to DataFrame
df = pd.DataFrame(data)

# Crop recommendations based on soil type
crop_recommendations = {
    "Red Soil": ["Groundnut", "Millets", "Pulses"],
    "Laterite Soil": ["Tea", "Coffee", "Cashew"],
    "Black Soil": ["Cotton", "Wheat", "Soybean"],
    "Alluvial Soil": ["Rice", "Sugarcane", "Vegetables"],
    "Sandy Loam": ["Maize", "Potato", "Tomato"],
}

# Function to get soil details and crop recommendation
def get_soil_and_crop(state, district, mandal, village):
    location = df[
        (df["State"] == state) & 
        (df["District"] == district) & 
        (df["Mandal"] == mandal) & 
        (df["Village"] == village)
    ]
    
    if not location.empty:
        soil_type = location.iloc[0]["Soil Type"]
        soil_properties = location.iloc[0][["pH", "Organic Matter", "Nitrogen", "Phosphorus", "Potassium"]]
        recommended_crops = crop_recommendations.get(soil_type, ["No recommendation available"])
        
        print("\n===== Soil Details =====")
        print(f"State: {state}, District: {district}, Mandal: {mandal}, Village: {village}")
        print(f"Soil Type: {soil_type}")
        print(f"Soil Properties:\n{soil_properties}")
        print("\n===== Recommended Crops =====")
        print(", ".join(recommended_crops))
    else:
        print("No data available for the selected location.")

# Example Usage
state = input("Enter State: ")
district = input("Enter District: ")
mandal = input("Enter Mandal: ")
village = input("Enter Village: ")

get_soil_and_crop(state, district, mandal, village)
