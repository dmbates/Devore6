require("tools")

getVarnamesFromRdFile <- function(file) {
    ## NOTE: no sanity checking for the time being ...

    lines <- readLines(file)
    ## Run through the Rd preprocessor
    lines <- tools:::Rdpp(lines)
    ## Strip Rd comments
    lines <- tools:::.stripRdComments(lines)
    ## Paste together
    txt <- paste(lines, collapse = "\n")
    ## Get the \format section.
    txt <- tools:::getRdSection(txt, "format")
    ## Suppose this worked ...
    ## Get \describe inside \format
    txt <- as.character(sapply(txt, tools:::getRdSection, "describe"))
    ## Suppose this worked ...
    ## Get the \items inside \describe
    txt <- as.character(sapply(txt, tools:::getRdSection, "item"))
    txt
}

dir = "/a7/bates/src/Rlibs/Devore6"

dataDir = file.path(dir, "data")
for (fn in list.files(path = dataDir, pattern = '*\.txt$')) {
    assign(gsub('\.txt$', '', fn),
           read.table(file.path(dataDir, fn), header = TRUE))
}
for (fn in list.files(path = dataDir, pattern = '*\.rda$')) {
    load(file.path(dataDir, fn))
}

vn = list()
docDir = file.path(dir, "man")
for (fn in list.files(path = docDir, pattern = '*\.Rd$')) {
    vn[[gsub('\.Rd$', '', fn)]] =
        getVarnamesFromRdFile(file.path(docDir, fn))
}

for (dsn in objects(pattern = "ex[0-9][0-9]\.[0-9][0-9]")) {
    onms = names(get(dsn))
    if (!(dsn %in% names(vn))) {
        print(paste(dsn, "is not documented"))
    } else {
        dnms = vn[[dsn]]
        if (!identical(all.equal(onms, dnms), TRUE)) {
            cat(paste(dsn, "\n"))
            print(onms)
            print(dnms)
        }
    }
}

for (dsn in objects(pattern = "xmp[0-9][0-9]\.[0-9][0-9]")) {
    onms = names(get(dsn))
    if (!(dsn %in% names(vn))) {
        print(paste(dsn, "is not documented"))
    } else {
        dnms = vn[[dsn]]
        if (!identical(all.equal(onms, dnms), TRUE)) {
            cat(paste(dsn, "\n"))
            print(onms)
            print(dnms)
        }
    }
}

nvn = names(vn)
nvn[!nvn %in% objects()]

q("no")
