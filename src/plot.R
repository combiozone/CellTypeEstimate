# Hua Sun


library(Seurat)
library(ggplot2)
library(ggpubr)
library(RColorBrewer)




CustomizedPlotUMAP <- function(obj=NULL, title='', reduction='umap', group_by='cell_type2', axislab='UMAP', label=FALSE, outdir='.')
{
    p <- DimPlot(obj, reduction=reduction, group.by=group_by, label.size = 3, label=label, pt.size=0.05, repel=TRUE) 

    # theme_void() + 
    p <- p + ggtitle(title) + labs(x =paste0(axislab, " 1"), y =paste0(axislab, " 2")) +
            theme_bw() +
            theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
                    axis.text.x = element_blank(), axis.text.y = element_blank(), axis.ticks = element_blank()) +
            theme(plot.title = element_text(hjust=0.5, size=11),
                axis.title=element_text(size=9),
                legend.text=element_text(size=7),
                legend.key.size = unit(0.6, 'mm')
            )

    ggsave(paste0(outdir, '/cteUMAP.', group_by, '.', reduction, '.pdf'), width = 6, height = 4.5)
}





