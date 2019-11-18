**miracle**

**ENTRY** table - contains system entities

**FILES** table - contains temporary information about remote datasource - filesystem, rdbms etc


  
  
We have remote datasource. it contains folders and files. External application can connect to 
the datasource and grab all information about inner structure.

as a result files table will contains information like this:

```
/exmlp_1
/exmlp_1/a.pdf
/exmlp_1/b.pdf
/exmlp_1/c.pdf
```