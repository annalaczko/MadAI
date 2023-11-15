# Use an official Python runtime as a parent image
FROM jupyter/datascience-notebook

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose the port that Jupyter Notebook will run on (default is 8888)
EXPOSE 8888

# Start Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]