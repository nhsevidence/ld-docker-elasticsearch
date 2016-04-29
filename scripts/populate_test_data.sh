#delete the current index
curl -XDELETE 'http://localhost:9200/kb?pretty'

#post the mappings
curl -XPOST 'http://localhost:9200/kb?pretty' -d '
{
  "settings" : {
    "index" : {
      "number_of_replicas" : "1",
      "number_of_shards" : "5"
    }
  },
  "mappings" : {
      "qs" : {
        "properties" : {
          "@context" : {
            "type" : "string",
            "index" : "not_analyzed"
          },
          "@id" : {
            "type" : "string",
            "index" : "not_analyzed"
          },
          "@type" : {
            "type" : "string",
            "index" : "not_analyzed"
          },
          "_type" : {
            "type" : "string",
            "index" : "not_analyzed"
          },
          "dcterms:abstract" : {
            "type" : "string",
            "index" : "not_analyzed"
          },
          "http://purl.org/dc/terms/title" : {
            "type" : "string",
            "index" : "not_analyzed"
          },
          "prov:specializationOf" : {
            "type" : "string",
            "index" : "not_analyzed"
          },
          "qualitystandard:serviceArea" : {
            "type" : "string",
            "index" : "not_analyzed"
          },
          "qualitystandard:setting" : {
            "type" : "string",
            "index" : "not_analyzed"
          },
          "qualitystandard:targetPopulation" : {
            "type" : "string",
            "index" : "not_analyzed"
          }
        }
      }
    }
  }
}
'

curl -XPOST 'http://localhost:9200/kb/qs/qs1_st1?pretty' -d '
{
  "@id": "http://ld.nice.org.uk/prov/entity#98ead3d:qualitystandards/qs18/st1/Statement.md",
  "@type": [
    "prov:Entity",
    "setting:NamedIndividual"
  ],
  "qualitystandard:serviceArea": "http://ld.nice.org.uk/ns/qualitystandard/servicearea#Primary care",
  "qualitystandard:setting": "http://ld.nice.org.uk/ns/qualitystandard/setting#Community",
  "qualitystandard:targetPopulation": [
    "http://ld.nice.org.uk/ns/qualitystandard/agegroup#Adults",
    "http://ld.nice.org.uk/ns/qualitystandard/conditiondisease#Ovarian cancer"
  ],
  "dcterms:abstract": "Women aged 50 years or over reporting one or more symptoms occurring\npersistently or frequently that suggest ovarian cancer are offered a\nCA125 test.",
  "http://purl.org/dc/terms/title": "Quality statement 1: Symptoms and CA125",
  "prov:specializationOf": "resource:FE95BF71CE72BCB37C4E2E568E5B1F8187D8B087F1CC4459DC438DCAA07BE513",
  "@context": [
    "http://192.168.99.100/ns/qualitystandard.jsonld",
    "http://192.168.99.100/ns/qualitystandard/agegroup.jsonld",
    "http://192.168.99.100/ns/qualitystandard/conditiondisease.jsonld",
    "http://192.168.99.100/ns/qualitystandard/setting.jsonld",
    "http://192.168.99.100/ns/qualitystandard/servicearea.jsonld",
    "http://192.168.99.100/ns/prov.jsonld",
    "http://192.168.99.100/ns/owl.jsonld",
    "http://192.168.99.100/ns/dcterms.jsonld"
  ],
  "_type": [
    "prov:Entity",
    "setting:NamedIndividual"
  ]
}
'

curl -XPOST 'http://localhost:9200/kb/qs/qs1_st2?pretty' -d '
{
  "@id": "http://ld.nice.org.uk/prov/entity#98ead3d:qualitystandards/qs7/st2/Statement.md",
  "@type": [
    "prov:Entity",
    "setting:NamedIndividual"
  ],
  "qualitystandard:serviceArea": "http://ld.nice.org.uk/ns/qualitystandard/servicearea#Primary care",
  "qualitystandard:setting": "http://ld.nice.org.uk/ns/qualitystandard/setting#Hospice",
  "qualitystandard:targetPopulation": [
    "http://ld.nice.org.uk/ns/qualitystandard/agegroup#Adults",
    "http://ld.nice.org.uk/ns/qualitystandard/conditiondisease#Ovarian cancer"
  ],
  "dcterms:abstract": "Women aged 50 years or over reporting one or more symptoms occurring\npersistently or frequently that suggest ovarian cancer are offered a\nCA125 test.",
  "http://purl.org/dc/terms/title": "Quality statement 2: Symptoms and CA125",
  "prov:specializationOf": "resource:FE95BF71CE72BCB37C4E2E568E5B1F8187D8B087F1CC4459DC438DCAA07BE513",
  "@context": [
    "http://192.168.99.100/ns/qualitystandard.jsonld",
    "http://192.168.99.100/ns/qualitystandard/agegroup.jsonld",
    "http://192.168.99.100/ns/qualitystandard/conditiondisease.jsonld",
    "http://192.168.99.100/ns/qualitystandard/setting.jsonld",
    "http://192.168.99.100/ns/qualitystandard/servicearea.jsonld",
    "http://192.168.99.100/ns/prov.jsonld",
    "http://192.168.99.100/ns/owl.jsonld",
    "http://192.168.99.100/ns/dcterms.jsonld"
  ],
  "_type": [
    "prov:Entity",
    "setting:NamedIndividual"
  ]
}
'

curl -XPOST 'http://localhost:9200/kb/qs/qs1_st3?pretty' -d '
{
  "@id": "http://ld.nice.org.uk/prov/entity#98ead3d:qualitystandards/qs8/st3/Statement.md",
  "@type": [
    "prov:Entity",
    "setting:NamedIndividual"
  ],
  "qualitystandard:serviceArea": "http://ld.nice.org.uk/ns/qualitystandard/servicearea#Primary care",
  "qualitystandard:setting": "http://ld.nice.org.uk/ns/qualitystandard/setting#Hospice",
  "qualitystandard:targetPopulation": [
    "http://ld.nice.org.uk/ns/qualitystandard/agegroup#Adults",
    "http://ld.nice.org.uk/ns/qualitystandard/conditiondisease#Ovarian cancer"
  ],
  "dcterms:abstract": "Pirates aged 50 years or over reporting one or more symptoms occurring\npersistently or frequently that suggest ovarian cancer are offered a\nCA125 test.",
  "http://purl.org/dc/terms/title": "Quality statement 3: Symptoms and CA125",
  "prov:specializationOf": "resource:FE95BF71CE72BCB37C4E2E568E5B1F8187D8B087F1CC4459DC438DCAA07BE513",
  "@context": [
    "http://192.168.99.100/ns/qualitystandard.jsonld",
    "http://192.168.99.100/ns/qualitystandard/agegroup.jsonld",
    "http://192.168.99.100/ns/qualitystandard/conditiondisease.jsonld",
    "http://192.168.99.100/ns/qualitystandard/setting.jsonld",
    "http://192.168.99.100/ns/qualitystandard/servicearea.jsonld",
    "http://192.168.99.100/ns/prov.jsonld",
    "http://192.168.99.100/ns/owl.jsonld",
    "http://192.168.99.100/ns/dcterms.jsonld"
  ],
  "_type": [
    "prov:Entity",
    "setting:NamedIndividual"
  ]
}
'
