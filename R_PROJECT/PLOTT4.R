
#question4:
# Load the Source Classification Code dataset
SCC <- readRDS("Source_Classification_Code.rds")

# Identify coal combustion-related sources
coal_sources <- SCC[grepl("Coal", SCC$Short.Name), ]

# Merge with NEI data to get emissions for coal sources
coal_data <- merge(NEI, coal_sources, by = "SCC")

# Aggregate emissions by year
coal_emissions <- aggregate(Emissions ~ year, data = coal_data, sum)

# Create a base plot for coal combustion emissions
plot(coal_emissions$year, coal_emissions$Emissions, type = "b", 
     xlab = "Year", ylab = "Total Emissions (Tons)", 
     main = "Coal Combustion-Related PM2.5 Emissions (1999-2008)", 
     col = "green", pch = 19)