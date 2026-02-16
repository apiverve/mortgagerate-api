from setuptools import setup, find_packages

setup(
    name='apiverve_mortgagerate',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Mortgage Rate is a tool for retrieving current and historical US fixed-rate mortgage rates. It returns weekly average rates for 30-year and 15-year fixed mortgages from the Freddie Mac Primary Mortgage Market Survey.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/mortgagerate?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
