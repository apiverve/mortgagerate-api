from setuptools import setup, find_packages

setup(
    name='apiverve_mortgagerate',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Mortgage Rate reports weekly US fixed mortgage rates for 15-year and 30-year terms. Pass the loan term to get the latest percentage rate, survey date, and direction of weekly change.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/mortgagerate?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
