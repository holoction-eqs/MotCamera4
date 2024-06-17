.class public final Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;
.super Lkotlin/io/FileTreeWalk$DirectoryState;
.source "SourceFile"


# instance fields
.field public fileIndex:I

.field public fileList:[Ljava/io/File;

.field public rootVisited:Z

.field public final synthetic this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;


# direct methods
.method public constructor <init>(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V
    .locals 1

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    invoke-direct {p0, p2}, Lkotlin/io/FileTreeWalk$DirectoryState;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final step()Ljava/io/File;
    .locals 5

    iget-boolean v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->rootVisited:Z

    iget-object v1, p0, Lkotlin/io/FileTreeWalk$WalkState;->root:Ljava/io/File;

    iget-object v2, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->this$0:Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    if-nez v0, :cond_0

    iget-object v0, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->rootVisited:Z

    return-object v1

    :cond_0
    iget-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget v4, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge v4, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v3

    :cond_2
    :goto_0
    iget-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-nez v0, :cond_3

    iget-object v0, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    iget-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, v0

    if-nez v0, :cond_5

    :cond_4
    iget-object p0, v2, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v3

    :cond_5
    iget-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileList:[Ljava/io/File;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;->fileIndex:I

    aget-object p0, v0, v1

    return-object p0
.end method
