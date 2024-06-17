.class public final Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field public final keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

.field public final packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field public final typeSpecChunk:Landroidx/media3/common/util/NetworkTypeObserver;

.field public final typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    const-string v0, "?1"

    const-string v1, "?2"

    const-string v2, "?3"

    const-string v3, "?4"

    const-string v4, "?5"

    const-string v5, "color"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    iget-object v0, v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->name:Ljava/lang/String;

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    new-instance p1, Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-direct {p1, p2}, Landroidx/media3/common/util/NetworkTypeObserver;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Landroidx/media3/common/util/NetworkTypeObserver;

    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    const/16 p2, 0x120

    invoke-virtual {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->getChunkSize()I

    move-result v0

    const/16 v1, 0x200

    invoke-direct {p1, v1, p2, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    return-void
.end method


# virtual methods
.method public final getChunkSize()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    iget v0, v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    add-int/lit16 v0, v0, 0x120

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    iget v1, v1, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Landroidx/media3/common/util/NetworkTypeObserver;

    iget v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    iget-object p0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/GlProgram;

    iget-object v2, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x54

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast p0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x10

    add-int/2addr p0, v2

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method
