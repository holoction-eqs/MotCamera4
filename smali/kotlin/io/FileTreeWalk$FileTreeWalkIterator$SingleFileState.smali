.class public final Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;
.super Lkotlin/io/FileTreeWalk$WalkState;
.source "SourceFile"


# instance fields
.field public visited:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "rootFile"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/io/FileTreeWalk$WalkState;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final step()Ljava/io/File;
    .locals 1

    iget-boolean v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;->visited:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;->visited:Z

    iget-object p0, p0, Lkotlin/io/FileTreeWalk$WalkState;->root:Ljava/io/File;

    return-object p0
.end method
