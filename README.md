# Ishikawa Diagram Ontology

Repository for the Ishikawa Diagram Ontology and related modules.

| Prefix    | IRI |
| -- | ------- |
| ishi:  | [https://w3id.org/ishikawa-diagram-ontology#](https://w3id.org/ishikawa-diagram-ontology#)  |
| isdi:  | [https://w3id.org/ishikawa-diagram-ontology/ishikawa-diagramming/ishikawa-diagramming#](https://w3id.org/ishikawa-diagram-ontology/ishikawa-diagramming/ishikawa-diagramming#)  |

## Ontology purpose and scope

The Ishikawa ontology addresses the domain of Ishikawa diagrams which are one of the major tools for Root Cause Analysis (RCA) besides FMEA and Fault Tree Analysis.
Ishikawa diagrams are also known as fishbone or cause and effect diagrams (CED).
Ishikawa diagrams result from (iterative) workshops and are commonly stored as images which leads to ambiguous interpretations and a lack of machine-readability.
Thus, the ontology contains the relevant concepts to describe Ishikawa diagrams as visual artifacts, their encoded data model, and the process the diagrams resulted from according to best practices.

The ontology reuses existing ontologies, including the [Web Annotation Ontology](http://www.w3.org/ns/oa#), [PROV-O](https://www.w3.org/TR/prov-o/), and [Procedural Knowledge Ontology](https://w3id.org/pko#).
For designing the ontology, we adopted the [Linked Open Terms (LOT) methodology](https://zenodo.org/records/2539305). 


The intended use of terms is detailed in the [diagram](./ishikawa-diagram-ontology/media/ishikawa-diagram-ontology.png), which uses the [Chowlk notation]( https://chowlk.linkeddata.es/notation):

<p align="left"><img src="./chowlk/ishikawa-diagram-ontology.png" alt="Diagram of Ishikawa diagram ontology" width="800"></p>

## Content of the repository

The RDF files describing the different versions of the ontology and its modules can be found in the folder [ishikawa-diagram-ontology](./ishikawa-diagram-ontology).

The repository was created using the [Cefriel Ontology Template](https://github.com/cefriel/ontology-template).
The ontology documentation and versioning is done using the Widoco tool.