import streamlit as st

# Page Config
st.set_page_config(page_title="Circle Area Calculator", page_icon="⭕")

# Title
st.markdown("<h1 style='text-align: center; color: ;'>⭕ Circle Area Calculator</h1>", unsafe_allow_html=True)

st.write("")

# Input Section
radius = st.number_input("Enter the radius of the circle:", min_value=0.0, format="%.2f")

# Button
if st.button("Calculate Area"):
    area = (22/7) * (radius ** 2)
    
    st.success(f"✅ Area of Circle is: {round(area,2)}")

# Footer
st.markdown("---")
st.caption("Made by Shantanu 🚀")