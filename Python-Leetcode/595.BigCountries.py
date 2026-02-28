# leeetcode 595 Big countries
import pandas as pd

def big_countries(world:pd.DataFrame:
  return world[
        (world['area'] >= 3000000) | 
        (world['population'] >= 25000000)
    ][['name', 'population', 'area']]

# another way
import pandas as pd

def big_countries(world: pd.DataFrame) -> pd.DataFrame:
    big_countries_df = world[
        (world['area'] >= 3000000) | 
        (world['population'] >= 25000000)
    ]
    result_df = big_countries_df[['name', 'population', 'area']]
    
    return result_df

#first try
#time and space complaxity is o(n)
import pandas as pd

def big_countries(world: pd.DataFrame) -> pd.DataFrame:
    df=world[(world['area']>= 3000000) | (world['population']>= 25000000)]
    return df[['name','population','area']]

# Using Separate Masks 
def big_countries(world: pd.DataFrame) -> pd.DataFrame:
    area_mask = world['area'] >= 3000000
    pop_mask = world['population'] >= 25000000
    
    return world.loc[
        area_mask | pop_mask,
        ['name', 'population', 'area']
    ]
  """ When Should You Use Masks? They both do similar things, it's for readablity
Use (Version 1,2 or 3) when: 
Logic is simple
One-liner is readable
Short LeetCode problems

Use separate masks when:
Logic is complex
You need to debug
You have 3+ conditions
You want clarity"""
