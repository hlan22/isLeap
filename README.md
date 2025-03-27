# isLeap: An Sample R Package

Created with instructions from my DSCI 310 class, I learned how to make an example package for R using devtools.

It's purpose it to help determine if a given year is a leap year!

---

### Extra Notes

#### Thursday, March 27th Lecture Notes


## **devtools Package**
The **`devtools`** package in R is used to simplify package development. 
It provides functions to create, document, and test R packages efficiently.

### **Key Functions in `devtools`**
- **`sessionInfo()`**  
  - Displays details about the current R session, including loaded packages, R version, and system information.  
  - Useful for debugging and sharing reproducibility details.

- **`create_package("package_name")`**  
  - Creates a new R package with the given name in a specified directory.  
  - Sets up the necessary file structure for an R package, including `DESCRIPTION`, `NAMESPACE`, and `R/` folders.
  - For this class, I did `create_package("~/Documents/isLeap")

- **`use_r("name")`** (from **usethis** package)  
  - Creates a new R script file (`name.R`) inside the `R/` folder of your package.  
  - Helps keep functions organized when developing packages.

## **Triple Colons (`:::`) in R**
- Normally, `package::function()` is used to call a function from a loaded package.
- **`package:::function()`** (triple colons) allows access to **internal (non-exported) functions** of a package.
- This is mostly used for debugging or exploring undocumented functions within a package.
- **Important:** Using `:::` is not recommended for regular use since internal functions may change without notice.

---

## Steps to Add a Local Repository to GitHub

1. **Initialize Git in the Local Folder (if not already done)**
   ```sh
   git init
   ```
   - or, if you are doing this on Rstudio, you can do
   ```
   usethis::use_git()
   ```

2. **Create a Repository on GitHub**
   - Go to GitHub and create a new repository.
   - Do **not** initialize it with a README if your local repo already has files.

3. **Add the Remote Repository**
   ```sh
   git remote add origin <repository_url>
   ```
   Replace `<repository_url>` with the URL of your GitHub repo.
   You can verify this works properly with:
   ```sh
   git remote -v
   ```

4. **Add Files and Commit**
   ```sh
   git add .
   git commit -m "Initial commit"
   ```

5. **Push to GitHub**
   ```sh
   git push -u origin main
   ```

6. **Verify the Repository on GitHub**
   - Go to your GitHub repository page to confirm the files were uploaded.

---
## A guide to the steps done in class to check/install package

> library(devtools)
> > loads devtools package
> use_r("is_leap")
> > creates a new file in Rstudio called `is_leap.R`
> devtools::load_all()
> > loads all info about the package isLeap
> devtools::check()
> > check if package is following all the checks that would be good enough for R (and CRAN?)
> usethis::use_mit_license()
> > Adds "MIT + file LICENSE"
> devtools::check()
> > checks again, "approved"
> devtools::document()
> > Updates isLeap documentation and loads it
> devtools::install()
> > does all the checks for the package and then installs it on your local machine
> library(isLeap)
> > now you can load the library
> is_leap(1000)
> > and use the functions with no issues!

