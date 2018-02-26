InstallLoadPackages = function(package)
{
  if(is.character(package))
  {
    if(! package %in% installed.packages())
      install.packages(package)
    else
      library(package, character.only = TRUE)
  }else
    warning("The variable introduce is not a character string")
}
