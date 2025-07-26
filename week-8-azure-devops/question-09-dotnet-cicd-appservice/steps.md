# Week 8 – Question 9: CI/CD Pipeline for .NET App to Azure App Service

---

##  Step 1: Create an Azure App Service

1. Go to Azure Portal → Create → App Service
2. Name: `dotnetapp-kanishk`
3. Publish: Code
4. Runtime: .NET 6 or .NET Core 3.1 (Linux or Windows)
5. Region: Central India
6. Resource Group: `dotnet-rg`
7. Pricing: Free or Basic B1

---

##  Step 2: Sample .NET Web App

If not available, create sample:

```bash
dotnet new webapp -o dotnet-sample
cd dotnet-sample
