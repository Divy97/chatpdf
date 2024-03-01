# Base image - choose a suitable Python base
FROM python:3.9-slim 

# Work directory
WORKDIR /app

# Install dependencies 
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Copy your app code
COPY app.py ./

# Expose the port your app listens to
EXPOSE 8501  
#Adjust if you use a different port in Streamlit

# Command for starting your app
CMD ["streamlit", "run", "app.py"]
