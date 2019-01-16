dat<-read.csv("C:/Users/Marinos_Test/Downloads/gapminder_data.csv")
mean(dat[dat$continent=="Americas","gdpPercap"])
filter(dat, continent == "Americas")
filter(dat, year > 2000)
filter(dat, continent == "Americas", year > 2000)
dat2<-filter(dat, continent == "Americas", year > 2000)
##filter is for rows##
##select chooses columns##
select(dat, continent)
select(dat2, country, year, gdpPercap)
dat2<-filter(dat, continent == "Americas", year > 2000)
select(dat2, country, year, gdpPercap)
%>%
dat %>%
  filter(continent == "Americas", year > 2000)
  select(country, year, gdpPercap)
  
## %>% reads the parenthesis starting from the inside instead of outside
 
#Challenge Question ------ 
# 1. Compute the average gdp for each country
# 2. Compute the average  gdp for each continent in year 1957
 # Answer1 
 average_gpd_per_country<- dat%>%
   group_by(country) %>%
  mean(gdpPercap)
"1957_gdp"<-  dat %>%
  filter(year == 1957)%>%
  select(gdpPercap)

dat %>%
  filter(year == 1957)%>%
  group_by(continent) %>%
  summarize(avg_gdp=mean(gdpPercap))
  dat %>%
    summarize(avg_gp = mean(gdpPercap), min_gdp = min(gdpPercap), max_gdp = max(gdpPercap), median_gdp = median(gdpPercap), sd_gdp = sd(gdpPercap), num_values = n())
### making new column variables
  dat %>%
     mutate(gdp_billion=gdpPercap * 10^9)
dat2 <- dat %>%
  select(country, year, gdpPercap)
print(dat2)
library(tidyr)
dat2_wide <- dat2 %>% spread(year, gdpPercap)
