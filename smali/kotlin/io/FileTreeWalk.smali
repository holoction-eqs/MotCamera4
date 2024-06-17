.class public final Lkotlin/io/FileTreeWalk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final direction:I

.field public final maxDepth:I

.field public final start:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/FileTreeWalk;->start:Ljava/io/File;

    iput p2, p0, Lkotlin/io/FileTreeWalk;->direction:I

    const p1, 0x7fffffff

    iput p1, p0, Lkotlin/io/FileTreeWalk;->maxDepth:I

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    invoke-direct {v0, p0}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;-><init>(Lkotlin/io/FileTreeWalk;)V

    return-object v0
.end method
