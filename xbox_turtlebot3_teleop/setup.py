from setuptools import find_packages, setup

package_name = 'xbox_turtlebot3_teleop'

setup(
    name=package_name,
    version='0.0.1',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='dingo',
    maintainer_email='dingo.australia@gmail.com',
    description='TODO: Package description',
    license='TODO: License declaration',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
			'xbox_teleop = xbox_turtlebot3_teleop.xbox_teleop_node:main',
        ],
    },
)

