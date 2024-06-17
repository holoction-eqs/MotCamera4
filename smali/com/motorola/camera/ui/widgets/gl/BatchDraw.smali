.class public final Lcom/motorola/camera/ui/widgets/gl/BatchDraw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mDrawList:Ljava/lang/Object;

.field public mFilteredBatch:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array v0, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    new-array p1, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {p1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    new-instance p1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {p1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iput v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iput p1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget p1, p2, Lcom/motorola/camera/PreviewSize;->width:I

    iput p1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    iput p1, p0, Lcom/motorola/camera/PreviewSize;->height:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized batchDraw([F[F)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, v0

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    if-eqz v6, :cond_1

    iget-boolean v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPreDraw()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast v7, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-lez v5, :cond_4

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    :goto_1
    if-ge v2, v5, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast v3, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onPostDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized clearDrawList()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v2, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast v2, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getDrawList()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDrawList(Ljava/util/ArrayList;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    array-length p1, p1

    new-array p1, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreviewHolder{mViewSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
