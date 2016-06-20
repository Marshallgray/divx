# README

### Potential HTML Templates
- http://showcase.thememountain.com/?theme=sartre
-

# Documentation

### Site walk through

- When a user gets to the home page they will be prompted to either sign in or sign up.
- Upon signing up they will then be prompted to create a profile once clicking through to this page the user will be asked to choose between either a candidate or recruiter and to provide their name DOB and a photo of themselves.
- Once the profile has been created it will be generated in a view for the user to see with different navigational option in the navbar and with an edit button to update the profile if needed.

#Candidate
  - If the user chose the role of Candidate they would then need to navigate to the create talent profile.
  - This will take them to the new talent page view asking the user to provide a link to a video of them, a resume file,  bio, their suburb and will later display three of their key skills.
  - Once they have created it will render their talent profile.
    - At the moment it displays their profile photo as a display picture with a link to their video which will be changed to display their video instead of the profile picture.
    - The profile has an interview me button on it (which will be hidden once figured out) and an edit button which allows the user to edit their talent profile.
  - The candidate will be able to search through the companies by their company name(location and roles need to added).

#Recruiter
  - If the user chose the role of Recruiter they will navigate to the company section of the navbar and click the create company drop down.
  - This will take them to a form that requires them to input the name of the company, a description and upload a company logo. They would then hit the create button.
  - Once they have created their company profile it will render it.
    - On the profile page the recruiter will be able to:
      - Update company location which will render on google maps
      - Add job roles that are available
  - Recruiters will be able to search through talent profiles by location (search by name and skill still need to be added).
  - Recruiters will be able to search through company profiles by name (location and roles need to be added)
  - Recruiters will be able to view a interview me button on the talents profile (that will be sent to the talent who will be able to accept or deny the interview sending the response back to the company)

#Pending Features
  - Recruiters & candidates will be able to search companies by location and roles
  - Candidate profile will display their video as the display picture
  - Recruiters will be able to search talents by name and skill type
  - When recruiters click interview me button it needs to connect to the talents profile that the recruiter is viewing. Whilst also linking to the current recruiters companies
  - Notifications (through mailgun & emails) - in regards to pending/approved/denied interviews
  - In app messaging
  - Admin dashboard
  - Skill types need to be linked to candidates profile
  -

###Deploymeny
  - Deployed to heroku https://fast-basin-17749.herokuapp.com/

###Challenges
  - roles
  - Deployment - had extra migration file with geocoded_by method in it that shouldn't have been there. Had to figure out how to remove columns from a migration file.
