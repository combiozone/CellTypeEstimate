


Cell Type Estimate For Seurat Object (CTE4SO)
=======================
```
Cell type annotation tool for single cell data

Author and Maintainer: Hua Sun

Version: v0.3.1
```

Description
----------------------
CTE4SO is a cell type annotation tool adapted from ScType (Ianevski et al., Nat Commun 2022). It was developed for 10x Multiome projects and designed to facilitate cell type annotation of brain tissue datasets. 
CTE4SO is designed to be simple, convenient, and extensible. It can be used directly with Seurat 4/5 objects for cell type annotation of scRNA-seq, snRNA-seq, and snMultiome datasets. The current version includes a limited set of brain cell type markers and will be updated as needed. 


Notice
----------------------
The cell type markers were manually curated from published studies, and the source of each marker set is provided in the marker table.
Most markers were collected from studies of normally developing brain tissues, with a few marker sets derived from published ependymoma tumor datasets. Tumor-derived marker sets are labeled with “-Like” and annotated in the Region column as originating from the corresponding tumor type.


Install R packages
----------------------
```
R >= 4.2.1
Seurat 4/5
dplyr
HGNChelper
readxl
dplyr
this.path
GetoptLong
ggplot2
```


Usage
----------------------

### Parameter
```
--tissue    'Brain'                    # Tissue name. Default: 'Brain'
--db        'hs.brain'                 # Human brain cell type annotation
            'mm.brain.v2'              # Mouse brain cell type annotation
            'sctype.beta'              # Beta marker set for cell type annotation
            ...

--rds       ''                         # Seurat object file (.rds)
--assay     'SCT'                      # Seurat assay type. SCT(Default)/RNA/...

--plot                                 # Plot UMAP
--title      ''                        # Title in plot. Default:''
--reduction  'umap'                    # Reduction in plot. Default:'umap'
--groupby    'cell_type2'              # Group by in plot. Default:'seurat_clusters,cell_type,cell_type2'

--save                                 # save annotated rds
--outdir    out_celltype (default)     # output directory
```


* Test
```
Rscript cte4so.R --rds scrna.rds --db hs.brain --assay SCT --outdir out_celltype
```
> output: cluster_cellType.xls, metaData.cellType.xls

```
Rscript cte4so.R --rds scrna.rds --db hs.brain --assay SCT --outdir out_celltype --plot
```
> output: cluster_cellType.xls, metaData.cellType.xls, ...umap.pdf



* Save cell type to seurat object
```
Rscript cte4so.R --rds scrna.rds --db hs.brain --assay SCT --outdir out_celltype --save
```
> output: cluster_cellType.xls, metaData.cellType.xls, sc_celltype_anno.rds

<br/>

Associated publication
----------------------
This tool and the brain cell type marker set were used in the following study:

Kardian, A, Sun, H. et al. Dominant clones leverage developmental epigenomic states to drive ependymoma. Nature 652, 1027–1037 (2026). https://doi.org/10.1038/s41586-026-10270-8

Preprint version:
Kardian, A., Sun, H. et al. Dominant Malignant Clones Leverage Lineage Restricted Epigenomic Programs to Drive Ependymoma Development. bioRxiv (2024). https://doi.org/10.1101/2024.08.12.607603



Contact
----------------------
Hua Sun, hua.sun@stjude.org ; Stephen Mack (PI) stephen.mack@stjude.org





