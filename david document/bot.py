import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys

# Function to log in to a job portal
def login_to_portal(driver, url, username, password):
    driver.get(url)
    time.sleep(2)  # Wait for the page to load
    driver.find_element(By.NAME, "username").send_keys(username)
    driver.find_element(By.NAME, "password").send_keys(password + Keys.RETURN)
    time.sleep(2)  # Wait for login to complete

# Function to update profile
def update_profile(driver, profile_data):
    # Navigate to profile update page
    driver.get("https://www.jobportal.com/profile")
    time.sleep(2)
    
    # Update fields based on profile_data dictionary
    for field, value in profile_data.items():
        input_field = driver.find_element(By.NAME, field)
        input_field.clear()
        input_field.send_keys(value)
    
    # Save changes
    driver.find_element(By.NAME, "save").click()
    time.sleep(2)

# Function to apply for jobs
def apply_for_jobs(driver, job_skills):
    driver.get("https://www.jobportal.com/jobs")
    time.sleep(2)
    
    # Search for jobs based on skills
    search_box = driver.find_element(By.NAME, "search")
    search_box.send_keys(job_skills + Keys.RETURN)
    time.sleep(2)
    
    # Apply for each job in the search results
    job_listings = driver.find_elements(By.CLASS_NAME, "job-listing")
    for job in job_listings:
        job.click()
        time.sleep(1)
        driver.find_element(By.NAME, "apply").click()
        time.sleep(1)  # Wait for application to process

# Main function to run the bot
def main():
    # Initialize WebDriver
    driver = webdriver.Chrome()  # or webdriver.Firefox() for Firefox
    
    # User credentials and profile data
    username = "your_email@example.com"
    password = "your_password"
    profile_data = {
        "name": "Your Name",
        "skills": "JavaScript, Java, SQL, MySQL, PostgresQL, Java Spring Boot, Spring Boot",
        "experience": "fresher"
    }
    job_skills = "Python Developer"

    # Execute functions
    login_to_portal(driver, "https://www.jobportal.com/login", username, password)
    update_profile(driver, profile_data)
    apply_for_jobs(driver, job_skills)

    # Close the driver
    driver.quit()

if __name__ == "__main__":
    main()
