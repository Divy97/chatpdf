from setuptools import setup, find_packages

setup(
    name="your-app-name",  
    version="1.0.0",
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        line.strip() for line in open("requirements.txt") 
    ],
)
