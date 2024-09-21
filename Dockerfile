FROM python:3.9

WORKDIR /app

# Copy requirements first to leverage Docker cache
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy everything
COPY . .

# Set permissions for the Results directory
#RUN mkdir -p Results && chmod 777 Results

# Set the command to run tests and output results
CMD ["robot", "--outputdir", "Results", "Tests/"]