data <- mtcars

head(data)

rowCount <- nrow(data)
nrowCount <- nrow(na.omit(data))

# print(paste("row count(includes na column): "), rowCount)
# print(paste("row count(doesn't includes na column): "), nrowCount)


print(paste("row count: ", rowCount))
print(paste("row count(include na column): ",nrowCount))