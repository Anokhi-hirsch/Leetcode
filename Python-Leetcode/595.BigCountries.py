# leeetcode 595 Big countries
import panda as pd
df big_countries(world:pd.Dataframe:
  return world[(world['area']>=3000000)|(world['population']>=25000000)]
[['name'],['population'],['area']]

# another way
import panda as pd
df big_countries(world:pd.Dataframe:
big_countries_df=world[(world['area']>=3000000)|(world['population']>=25000000)]
result_df=big_countries_df[['name'],['population'],['area']]
return result_df
