terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"  # LocalStack wymaga dowolnego niepustego ciągu
  secret_key                  = "test"  # LocalStack wymaga dowolnego niepustego ciągu
  skip_credentials_validation = true    # Pominięcie walidacji danych AWS
  skip_metadata_api_check     = true    # Wyłączenie sprawdzania metadanych EC2
  skip_requesting_account_id  = true    # Pominięcie pobierania Account ID
  s3_use_path_style           = true    # Wymagane dla LocalStack (S3 w stylu ścieżki)

  endpoints {
    s3 = "http://localhost:4566"  # Endpoint LocalStack dla S3
  }
}