import streamlit as st
import pickle
import pandas as pd

# Load Model
Investor = pickle.load(open("Investor.pkl", "rb"))

st.title("Investment Profit Prediction")

st.write("### Enter Investment Details")

digital = st.number_input("Digital Marketing")

promotion = st.number_input("Promotion")

research = st.number_input("Research")

state = st.selectbox(
    "State",
    ("Bangalore", "Chennai", "Hyderabad")
)

# One Hot Encoding
state_chennai = 0
state_hyderabad = 0

if state == "Chennai":
    state_chennai = 1

elif state == "Hyderabad":
    state_hyderabad = 1

input_data = pd.DataFrame(
    [[digital,
      promotion,
      research,
      state_chennai,
      state_hyderabad]],
    columns=[
        "DigitalMarketing",
        "Promotion",
        "Research",
        "State_Chennai",
        "State_Hyderabad"
    ]
)

if st.button("Predict Profit"):

    prediction = Investor.predict(input_data)

    st.success(f"Predicted Profit = {prediction[0]:,.2f}")