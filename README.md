# userProfile
This is a Swift Package used to Save / Dispay user's profile page

Integration:

1. Go to the project in which you want to add this package click File->Add Package Dependencies.
2. Enter the url "git@github.com:ulaganathan-PalaniVelayutham/userProfile.git" in the search field.
3. Depedency rule should be branch and branch name should be master.
4. Select your project name from Add to project Drop down.
5. Click the Add Package at the bottom right. The package will be integrated to your project.


Usage:

1. Import the package UserProfile where you want to use it.
2. Create the view inside you page by passing an Image object to the view like below.
    ProfilePage(img: myImage)
3. This is to render the entire page.
4. you can also render other components of the page separately in your project.

5. You can render the Profile Image with a frame and size like

       ProfileImage(img: yourImageObject, size: CGFloatValue)

