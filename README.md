


Cell Type Estimate For Seurat Object (CTE4SO)
=======================
```
Cell type annotation tool for single cell data

Developer: Hua Sun

Version: v0.3.1
```

Description
----------------------
The CTE4SO is a cell type annotation tool developed based on ScType (Ianevski et al., Nat Commun 2022). It was built for 10xMultiome project and specifically solve brain tissue annotation. Its characteristics are simplicity, convenience, ease of use and strong scalability. It is suitable for directly using Seurat4/5 objects for cell type annotation of scRNA/snRNA/snMultiome data. Currently contains a limited set of brain markers. It will continue to be upgraded as needed in the future.

* [ Notice ]

    Most cell type markers were collected from normally developing brains, with a few marker sets coming from ependymomas (tumors). If a marker was collected from tumor data, it will be labeled "-Like" and annotated in the "Region" column as coming from that tumor type. This is because these marker sets were created for analysis of healthy brains and ependymoma brain tumors. (2024-10-04)



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
--db        'hs.brain'                 # Normal/Tumor data annotation
            'mm.brain'                 # Normal/Tumor data annotation
--rds       ''                         # seurat object file (.rds)
--assay     'SCT'                      # Seurat assay type. RNA/SCT(Default)

--plot                                 # Plot UMAP
--title      ''                        # Title in plot. Default:''
--reduction  'umap'                    # Reduction in plot. Default:'umap'
--groupby    'cell_type2'              # Group by in plot. Default:'seurat_clusters,cell_type,cell_type2'

--save                                 # save annotated rds or not
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





Cite
----------------------
If you use this tool or the cell type marker set in your research/analysis, please cite `github.com/combiozone/CellTypeEstimate`





