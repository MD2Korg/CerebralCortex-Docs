# Cerebral Cortex Documentation and Tutorials

## Introduction
This site provides two key components of the documentation of the MD2K platforms.  First, it provides a series of
Jupyter notebooks demonstrating the capabilities of Cerebral Cortex and second, a
data dictionary containing documentation of individual data stream that are part of the
MD2K platform.


### Platform Overview
MD2K software platform provides a flexible, scalable, and open platform for collecting,
analyzing, and sharing high-frequency, raw sensor data and associated labels in the context of scientific field
studies. It supports the development and validation of computational models and algorithms for inferring
markers of health, wellness and productivity, and their associated risk factors. The MD2K software platform is
an open source project (https://github.com/MD2Korg/) with over 80 unique repositories for individual
components of the various platforms. This platform currently supports research studies at 14 sites targeting 8
health and workplace targets: Smoking, Eating, Stress, Congestive Heart Failure, Oral Health, Cocaine Use,
Behavior Change, Workplace Performance. An estimated 2,251 users, 106,806 person-days, and 4.7 trillion
data points are to be collected from these studies into its cloud platform.

The MD2K system includes two primary components: mCerebrum and Cerebral Cortex.
mCerebrum is a software platform for smartphones that consists of 25+ apps that enables the collection of
high-frequency data from wearable sensors and smartphones, as well as the collection of smartphone usage
data. An integrated mobile stream processor framework enables real-time computation of behavioral
biomarkers from the raw data collected by the phone. mCerebrum also allows the collection of self-reported
assessments of activity, health, and behavioral states that serve as labels for machine learning-based model
development and validation. mCerebrum is optimized for collecting high volumes of sensor data from both
phone and multiple wearable sensors (exceeding 1,000 samples per second or 4 gigabytes per day).

The collected data is transferred in batches to the cloud-based Cerebral Cortex system that is the big
data companion of mCerebrum designed to support thousands of concurrently deployed mCerebrum
instances. Cerebral Cortex can receive data remotely from mCerebrum instances deployed in the field and
provide a real-time remote monitoring of data collection status at each participant level. In addition, it supports
population-scale data analysis, visualization, model development, and intervention design for mobile sensor
data. It provides the ability to do machine learning model development on population scale data sets and
provides interoperable interfaces for aggregation of diverse data sources. One of the primary capabilities of
Cerebral Cortex is its ability to support scalable big data machine learning model development and iterative
data analysis and model generation across population-scale data sets. It has been able to receive hundreds of
gigabytes of sensor data per day from hundreds of participants spread across the country.




## Contact Information

* General information: info@md2k.org
* Technical information: dev@md2k.org
