.class public final Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;
.super Lkotlin/collections/AbstractIterator;
.source "SourceFile"


# instance fields
.field public final state:Ljava/util/ArrayDeque;

.field public final synthetic this$0:Lkotlin/io/FileTreeWalk;


# direct methods
.method public constructor <init>(Lkotlin/io/FileTreeWalk;)V
    .locals 2

    iput-object p1, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    iget-object v1, p1, Lkotlin/io/FileTreeWalk;->start:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iget-object p1, p1, Lkotlin/io/FileTreeWalk;->start:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->directoryState(Ljava/io/File;)Lkotlin/io/FileTreeWalk$DirectoryState;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;

    invoke-direct {p0, p1}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    iput p1, p0, Lkotlin/collections/AbstractIterator;->state:I

    :goto_1
    return-void
.end method


# virtual methods
.method public final computeNext()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->state:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/io/FileTreeWalk$WalkState;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lkotlin/io/FileTreeWalk$WalkState;->step()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lkotlin/io/FileTreeWalk$WalkState;->root:Ljava/io/File;

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget-object v3, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    iget v3, v3, Lkotlin/io/FileTreeWalk;->maxDepth:I

    if-lt v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->directoryState(Ljava/io/File;)Lkotlin/io/FileTreeWalk$DirectoryState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_4

    iput-object v0, p0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    goto :goto_3

    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    :goto_3
    return-void
.end method

.method public final directoryState(Ljava/io/File;)Lkotlin/io/FileTreeWalk$DirectoryState;
    .locals 2

    iget-object v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;->this$0:Lkotlin/io/FileTreeWalk;

    iget v0, v0, Lkotlin/io/FileTreeWalk;->direction:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;

    invoke-direct {v0, p0, p1}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState;-><init>(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0

    :cond_1
    new-instance v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;

    invoke-direct {v0, p0, p1}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;-><init>(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V

    :goto_0
    return-object v0
.end method
