from pydantic.v1 import BaseSettings


class Settings(BaseSettings):
    stage: str
    model_name: str
    mlflow_host: str
    # google_application_credentials: str

    class Config:
        env_file = ".env"


settings = Settings()
