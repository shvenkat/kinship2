\name{NEWS}
\title{NEWS file for the kinship2 package}
\section{Changes in version 1.5.4}{
  \itemize{
    \item bug introduced in kinship.pedigree in making other updates in
    version 1.5.0: if(duplicated(id)) set back to be if(duplicated(id$id))
    \item vignette added to vignettes directory, no more need for
    inst/doc dir in source version    
  }  
}
\section{Changes in version 1.5.0}{
  \itemize{
    \item kinship function allows chrtype="X" for X chromosome kinship 
    matrices, will have NA for any relationships that include a subject
    with sex code 3 or 4
    \item add test script for X-chromosome kinship matrix, with and
    without unknown sex codes
    \item plot.pedigree: fixed indexing bug in dog pedigree for sire in
    multiple generations
    \item pedigree.shrink and pedigree.trim now properly update indices
    in relation matrix after subjects are removed
  }
}

\section{Changes in version 1.3.8}{
\itemize{
     \item When subscripting a pedigreeList object, the relationship
     matrix was not properly computed.
 }}
 
\section{Changes in version 1.3.7}{
  \itemize{
    \item Add monzygotic twins computation to the kinship matrix

    \item Add a test for the new monozygote kinship code

    \item Add the ibdMatrix function
}}
\section{Changes in version 1.3.5}{
  \itemize{
    \item Add the ibdMatrix routine, a replacement for bdsmatrix.ibd.
    
    \item The dimnames of a kinship matrix were in the wrong order if
    a. it was created from a pedigreeList and b. the original data set
    that created the pedigreeList was not sorted by family blocks
    (all of one family, then all of the next, ...).  Pointed out by 
    Claus Thorn Ekstrom.
}}

\section{Changes in version 1.3.4}{
  \itemize{
    \item The dimnames on kinship matrices had both row and column names 
    some instances, only column names in others.   Changed to always 
    return both.
    }
}
		

\section{Changes in version 1.3.3}{
  \itemize{
    \item Per a query from Alex Cunningham, checked the return list of
    x,y values from plot.pedigree.  Indeed, they were not in a useful
    order (to the user).  Updated them to be in the same order as the
    input data, and added more information to the help page.
    
    \item Took some families out of minnbreast that did not belong

    \item Compress example data files
  }
}
\section{Changes in version 1.3.0}{
  \itemize{
    \item Added a Minnesota Breast Cancer dataset
    
    \item Add missid as a code for the parents of founder subjects if the code 
    is not one of the defaults (0 or NA for numeric ids, "" or NA for 
    character)
    
    \item Fixed some findex/mindex problems in findUnavailable and 
    excludeUnavailFounders, both used within pedigree.shrink.
    
    \item Updated plot.pedigree.shrink to plot available subjects as red, and 
    included a simple legend to indicate availability coloring. A new 
    parameter, xlegend, can now control the placing of the legend.
    
    \item Fixed a minor indexing bug in "[.pedigree"
    
    \item Fixed typing and grammatical problems in error messages in pedigree()
    
    \item Fixed row/column names in kinship function (Shannon/Terry, please 
    give more details)
    
    \item Allow pedigree.trim to trim all subjects and return an empty pedigree 
    object
    
    \item pedigree.legend to show which portions of a subject's plot
    symbol indicate which affection status
    
    \item aligning of pedigrees now more robust to handle subjects in
    multiple marriages
  }
}
\section{Release Notes for kinship2, version 1.2.1}{
  \itemize{
    
    \item Summary: kinship2 is a branch from the original kinship package with 
    some key updates for the pedigree and kinship functions, with some additional
    functions that work with the pedigree object.
    
    \item pedigree and pedigreeList objects implemented with S3 methods 
    print and "[,"
    \item pedigree plotting routine re-written, now more robust
    \item kinship matrices now implemented with Matrix package classes
    \item utilities to trim the pedigree object with various criteria
  }
}
