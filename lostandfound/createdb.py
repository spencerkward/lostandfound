from sqlalchemy import *

db = create_engine('sqlite:///orphanage.db')
metadata = MetaData(db)
orphans = Table('orphans', metadata,
        Column('id', Integer, primary_key=True),
        Column('found_on', DateTime),
        Column('lat', Float),
        Column('long', Float),
        Column('description', String))
orphans.create()

conn = orphans.insert()
conn.execute(description='Scarf')

data = orphans.select()
rs = data.execute()
row = rs.fetchone()
print row[0]
print row.description
