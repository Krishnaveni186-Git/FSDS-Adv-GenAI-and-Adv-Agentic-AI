import streamlit as st

st.title('My First streamlit App created by Krishnaveni')

st.write('Welcome! This app calculates the square of a number')

st.header('Select a number')
number = st.slider('Pick a number', 0, 100 ,15)

st.subheader('Result')
squared_number = number * number
st.write(f'The number of **{number}** is **{squared_number}**. ')

