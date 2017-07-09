# US-Pollutant-Emission-Analysis

Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). 

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that I have used for this assignment are for 1999, 2002, 2005, and 2008.

** PM2.5 Emissions Data **  This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Acronyms for the data columns are as mentioned below:

** f𝚒𝚙𝚜 ** A five-digit number (represented as a string) indicating the U.S. county
** 𝚏𝚂𝙲𝙲 ** The name of the source as indicated by a digit string (see source code classification table)
** 𝚏𝙿𝚘𝚕𝚕𝚞𝚝𝚊𝚗𝚝 ** A string indicating the pollutant
** 𝚏𝙴𝚖𝚒𝚜𝚜𝚒𝚘𝚗𝚜 ** Amount of PM2.5 emitted, in tons
** 𝚏𝚝𝚢𝚙𝚎 ** The type of source (point, non-point, on-road, or non-road)
** 𝚏𝚢𝚎𝚊𝚛 ** The year of emissions recorded


** Source Classification Code Table ** This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source.For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.

#Objective

Below are the questions that have been tried to answer from the analysis:

- Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
- Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (𝚏𝚒𝚙𝚜 == "𝟸𝟺𝟻𝟷𝟶") from 1999 to 2008?
- Of the four types of sources indicated by the 𝚝𝚢𝚙𝚎 (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? 
- Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
- How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
- Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (𝚏𝚒𝚙𝚜 == "𝟶𝟼𝟶𝟹𝟽"). Which city has seen greater changes over time in motor vehicle emissions?
