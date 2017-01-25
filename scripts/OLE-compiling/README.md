### Github Tips to compile retroarchs and cores using Open/LibreELEC toolchain:

clonar el repo en el HDD:

```
git clone https://github.com/bite-your-idols/Gamestarter-Pi
git config --global user.name "your-username"
git config --global user.email name@domain.com
```

actualizar local con servidor:
```
git pull
```

eliminar cambios locales:
```
git reset --hard
```

subir cambios a servidor:
```
git status
git add archivo
git commit
git push origin master
```

moverse por la linea de tiempo del git: 
```
git checkout "version"
git checkout master
```

compile LibreELEC:
```
PROJECT=RPi2 ARCH=arm make image
PROJECT=RPi2 ARCH=arm scripts/build packagename
```

compile Lakka: 
```
DISTRO=Lakka PROJECT=RPi2 ARCH=arm make image
```

actualizar fork: 
```
git remote add upstream https://github.com/whoever/whatever.git
git fetch upstream
git checkout master
git merge upstream/master
```
