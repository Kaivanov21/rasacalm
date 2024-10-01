# Rasa Pro CALM Chatbot 
Test and interact with Rasa Pro CALM Chatbot locally.

#### Clone project from GitHub repository:

- > ```git clone https://github.com/Kaivanov21/rasacalm```
- > ```cd rasacalm```

#### Create and activate new virtual environment:

- > ```python -m venv ./venv```
- > ```.\venv\Scripts\activate```

#### Install Rasa Pro using "uv":

- > ```pip install uv```
- > ```uv pip install rasa-pro --extra-index-url=https://europe-west3-python.pkg.dev/rasa-releases/rasa-pro-python/simple/ rasa-pro==3.8.0```

#### Install dependecies for action server:

- > ```cd actions```
- > ```pip install -r requirements-actions.txt```

#### Set Rasa Pro Developer Edition Extended License Key and OpenAI API Key variables:

- > ```[System.Environment]::SetEnvironmentVariable('RASA_PRO_LICENSE','<your-license-string>','USER')```
- > ```[System.Environment]::SetEnvironmentVariable('OPENAI_API_KEY','<your-license-string>','USER')```

#### Train chatbot model (optionally):

Train chatbot (in case, if there is no model inside ```/models``` folder):
- > ```rasa train```

#### Start action server (inside actions folder):
- > ```rasa run actions```

#### Start Rasa server:

In new terminal start Rasa Server and interact with chatbot using Rasa Inspector (http://localhost:5005/webhooks/inspector/inspect.html):
- > ```.\venv\Scripts\activate```
- > ```rasa inspect```
    
    or

In new terminal start Rasa Server and interact with chatbot using command line or using ```index.html``` file located inside ```frontend``` folder:
- > ```.\venv\Scripts\activate```
- >  ```rasa run -m models --endpoints endpoints.yml --enable-api --cors "*"```
