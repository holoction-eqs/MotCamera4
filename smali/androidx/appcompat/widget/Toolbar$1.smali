.class public Landroidx/appcompat/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;
.implements Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field public this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/16 v0, 0x10

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Ljava/util/HashSet;)V

    return-void

    .line 2
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, v0, [F

    .line 3
    fill-array-data p1, :array_0

    const/4 v2, 0x5

    new-array v3, v2, [[F

    iput-object v3, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    :goto_0
    if-ge v1, v2, :cond_0

    int-to-float v3, v1

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v3

    const/16 v3, 0xf

    aput v4, p1, v3

    const/16 v3, 0xb

    aput v4, p1, v3

    const/4 v3, 0x7

    aput v4, p1, v3

    const/4 v3, 0x3

    aput v4, p1, v3

    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v3, [[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/EnumMap;

    const-class v2, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-direct {p1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->values()[Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    move-result-object p1

    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    new-array v5, v0, [F

    invoke-static {v5, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v6, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/EnumMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 5
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    sget-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->Companion:Lkotlin/UInt$Companion;

    .line 6
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->INSTANCE:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    if-nez v1, :cond_1

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->INSTANCE:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    const-string v2, "fileData_table.db"

    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 11
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;

    .line 12
    sput-object p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->INSTANCE:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    .line 13
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase;->fileDataDao()Landroidx/appcompat/widget/TooltipPopup;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    .line 15
    const-string v0, "workDatabase"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 16
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    const-string v2, "Invalid EnumSet type: "

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/JsonIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/gson/JsonIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final drawDropShadow(Lcom/motorola/camera/ui/widgets/gl/Shader;[FFF)V
    .locals 7

    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p2, v0, p3, p4, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {p1, v3, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v4, [[F

    aget-object v4, v4, v1

    const/4 v5, 0x4

    const/16 v6, 0x10

    invoke-virtual {v3, v5, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    invoke-static {v2, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final endMasterElement(I)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    const-wide/16 v3, 0x0

    const/16 v5, 0xa0

    const-string v6, "A_OPUS"

    if-eq v1, v5, :cond_7e

    const/16 v5, 0xae

    const/4 v7, -0x1

    if-eq v1, v5, :cond_11

    const/16 v5, 0x4dbb

    const v6, 0x1c53bb6b

    if-eq v1, v5, :cond_f

    const/16 v5, 0x6240

    if-eq v1, v5, :cond_d

    const/16 v5, 0x6d80

    if-eq v1, v5, :cond_b

    const v5, 0x1549a966

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v5, :cond_9

    const v5, 0x1654ae6b

    if-eq v1, v5, :cond_7

    if-eq v1, v6, :cond_0

    goto/16 :goto_37

    :cond_0
    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/adobe/xmp/impl/ParseState;

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/adobe/xmp/impl/ParseState;

    iget-wide v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide/16 v11, -0x1

    cmp-long v6, v9, v11

    if-eqz v6, :cond_5

    iget-wide v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    cmp-long v6, v9, v7

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    iget v6, v2, Lcom/adobe/xmp/impl/ParseState;->pos:I

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    iget v7, v5, Lcom/adobe/xmp/impl/ParseState;->pos:I

    if-eq v7, v6, :cond_1

    goto/16 :goto_2

    :cond_1
    new-array v7, v6, [I

    new-array v8, v6, [J

    new-array v9, v6, [J

    new-array v10, v6, [J

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v6, :cond_2

    invoke-virtual {v2, v11}, Lcom/adobe/xmp/impl/ParseState;->get(I)J

    move-result-wide v12

    aput-wide v12, v10, v11

    iget-wide v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    invoke-virtual {v5, v11}, Lcom/adobe/xmp/impl/ParseState;->get(I)J

    move-result-wide v14

    add-long/2addr v14, v12

    aput-wide v14, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v5, v6, -0x1

    if-ge v2, v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget-wide v11, v8, v5

    aget-wide v13, v8, v2

    sub-long/2addr v11, v13

    long-to-int v11, v11

    aput v11, v7, v2

    aget-wide v11, v10, v5

    aget-wide v13, v10, v2

    sub-long/2addr v11, v13

    aput-wide v11, v9, v2

    move v2, v5

    goto :goto_1

    :cond_3
    iget-wide v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v11, v13

    aget-wide v13, v8, v5

    sub-long/2addr v11, v13

    long-to-int v2, v11

    aput v2, v7, v5

    iget-wide v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    aget-wide v13, v10, v5

    sub-long/2addr v11, v13

    aput-wide v11, v9, v5

    cmp-long v2, v11, v3

    if-gtz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Discarding last cue point with unexpected duration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MatroskaExtractor"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    invoke-static {v9, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    invoke-static {v10, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    :cond_4
    new-instance v2, Landroidx/media3/extractor/ChunkIndex;

    invoke-direct {v2, v7, v8, v9, v10}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v2, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v2, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_3
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/adobe/xmp/impl/ParseState;

    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/adobe/xmp/impl/ParseState;

    goto/16 :goto_37

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_37

    :cond_8
    const-string v0, "No valid tracks were found"

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9
    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_a

    const-wide/32 v1, 0xf4240

    iput-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    :cond_a
    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_84

    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto/16 :goto_37

    :cond_b
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_84

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez v0, :cond_c

    goto/16 :goto_37

    :cond_c
    const-string v0, "Combining encryption and compression is not supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_84

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    if-eqz v1, :cond_e

    new-instance v2, Landroidx/media3/common/DrmInitData;

    new-instance v3, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v4, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, v1, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    const-string v5, "video/webm"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v1}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    filled-new-array {v3}, [Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v6, v3, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media3/common/DrmInitData;

    goto/16 :goto_37

    :cond_e
    const/4 v0, 0x0

    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_f
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    if-eq v1, v7, :cond_10

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_10

    if-ne v1, v6, :cond_84

    iput-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto/16 :goto_37

    :cond_10
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_11
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    if-eqz v3, :cond_7d

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "S_HDMV/PGS"

    const-string v7, "V_VP9"

    const-string v8, "V_VP8"

    const-string v9, "V_AV1"

    const-string v10, "A_DTS"

    const-string v11, "A_AC3"

    const-string v13, "A_AAC"

    const-string v14, "A_DTS/LOSSLESS"

    const-string v15, "S_VOBSUB"

    const-string v12, "V_MPEG4/ISO/AVC"

    move-object/from16 v16, v2

    const-string v2, "V_MPEG4/ISO/ASP"

    move-object/from16 p1, v1

    const-string v1, "S_DVBSUB"

    move-object/from16 v17, v0

    const-string v0, "V_MS/VFW/FOURCC"

    move-object/from16 v18, v0

    const-string v0, "A_MPEG/L3"

    move-object/from16 v19, v0

    const-string v0, "A_MPEG/L2"

    move-object/from16 v20, v0

    const-string v0, "A_VORBIS"

    move-object/from16 v21, v0

    const-string v0, "A_TRUEHD"

    move-object/from16 v22, v0

    const-string v0, "A_MS/ACM"

    move-object/from16 v23, v0

    const-string v0, "V_MPEG4/ISO/SP"

    move-object/from16 v24, v0

    const-string v0, "V_MPEG4/ISO/AP"

    sparse-switch v4, :sswitch_data_0

    :goto_4
    goto/16 :goto_9

    :sswitch_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_4

    :cond_12
    const/16 v3, 0x20

    :goto_5
    move-object/from16 v4, v19

    goto/16 :goto_8

    :sswitch_1
    const-string v4, "A_FLAC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_4

    :cond_13
    const/16 v3, 0x1f

    goto/16 :goto_6

    :sswitch_2
    const-string v4, "A_EAC3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_4

    :cond_14
    const/16 v3, 0x1e

    goto/16 :goto_6

    :sswitch_3
    const-string v4, "V_MPEG2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_4

    :cond_15
    const/16 v3, 0x1d

    goto/16 :goto_6

    :sswitch_4
    const-string v4, "S_TEXT/UTF8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_4

    :cond_16
    const/16 v3, 0x1c

    goto/16 :goto_6

    :sswitch_5
    const-string v4, "S_TEXT/WEBVTT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_4

    :cond_17
    const/16 v3, 0x1b

    goto/16 :goto_6

    :sswitch_6
    const-string v4, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_4

    :cond_18
    const/16 v3, 0x1a

    goto/16 :goto_6

    :sswitch_7
    const-string v4, "S_TEXT/ASS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_4

    :cond_19
    const/16 v3, 0x19

    goto/16 :goto_a

    :sswitch_8
    const-string v4, "A_PCM/INT/LIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_4

    :cond_1a
    const/16 v3, 0x18

    goto/16 :goto_a

    :sswitch_9
    const-string v4, "A_PCM/INT/BIG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_4

    :cond_1b
    const/16 v3, 0x17

    goto/16 :goto_6

    :sswitch_a
    const-string v4, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_4

    :cond_1c
    const/16 v3, 0x16

    goto/16 :goto_6

    :sswitch_b
    const-string v4, "A_DTS/EXPRESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_4

    :cond_1d
    const/16 v3, 0x15

    goto/16 :goto_6

    :sswitch_c
    const-string v4, "V_THEORA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v4, v18

    const/16 v3, 0x14

    goto/16 :goto_7

    :sswitch_d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_4

    :cond_1f
    const/16 v3, 0x13

    goto/16 :goto_6

    :sswitch_e
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_4

    :cond_20
    const/16 v3, 0x12

    goto/16 :goto_6

    :sswitch_f
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_4

    :cond_21
    const/16 v3, 0x11

    goto :goto_6

    :sswitch_10
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_4

    :cond_22
    const/16 v3, 0x10

    goto :goto_6

    :sswitch_11
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_4

    :cond_23
    const/16 v3, 0xf

    goto/16 :goto_a

    :sswitch_12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_4

    :cond_24
    const/16 v3, 0xe

    goto :goto_6

    :sswitch_13
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_4

    :cond_25
    const/16 v3, 0xd

    goto :goto_6

    :sswitch_14
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_4

    :cond_26
    const/16 v3, 0xc

    goto :goto_6

    :sswitch_15
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_4

    :cond_27
    const/16 v3, 0xb

    goto :goto_6

    :sswitch_16
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_4

    :cond_28
    const/16 v3, 0xa

    goto :goto_6

    :sswitch_17
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_4

    :cond_29
    const/16 v3, 0x9

    :goto_6
    move-object/from16 v4, v18

    goto :goto_7

    :sswitch_18
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_4

    :cond_2a
    const/16 v3, 0x8

    goto/16 :goto_a

    :sswitch_19
    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    move-object/from16 v18, v4

    goto :goto_9

    :cond_2b
    const/4 v3, 0x7

    :goto_7
    move-object/from16 v18, v4

    goto/16 :goto_5

    :sswitch_1a
    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    move-object/from16 v19, v4

    goto :goto_9

    :cond_2c
    const/4 v3, 0x6

    :goto_8
    move-object/from16 v19, v4

    goto :goto_a

    :sswitch_1b
    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    move-object/from16 v20, v4

    goto :goto_9

    :cond_2d
    const/4 v3, 0x5

    move-object/from16 v20, v4

    goto :goto_a

    :sswitch_1c
    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move-object/from16 v21, v4

    goto :goto_9

    :cond_2e
    const/4 v3, 0x4

    move-object/from16 v21, v4

    goto :goto_a

    :sswitch_1d
    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    move-object/from16 v22, v4

    goto :goto_9

    :cond_2f
    const/4 v3, 0x3

    move-object/from16 v22, v4

    goto :goto_a

    :sswitch_1e
    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    move-object/from16 v23, v4

    :goto_9
    move-object/from16 v4, v24

    goto :goto_b

    :cond_30
    const/4 v3, 0x2

    move-object/from16 v23, v4

    :goto_a
    move-object/from16 v4, v24

    goto :goto_c

    :sswitch_1f
    move-object/from16 v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_b

    :cond_31
    const/4 v3, 0x1

    goto :goto_c

    :sswitch_20
    move-object/from16 v4, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_b

    :cond_32
    const/4 v3, 0x0

    goto :goto_c

    :goto_b
    const/4 v3, -0x1

    :goto_c
    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_d

    :pswitch_0
    const/4 v3, 0x1

    :goto_d
    if-eqz v3, :cond_7c

    move-object/from16 v3, v17

    move-object/from16 v17, v0

    iget-object v0, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    move-object/from16 v24, v3

    move-object/from16 v3, p1

    move-object/from16 p1, v0

    iget v0, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    move/from16 v25, v0

    iget-object v0, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v26

    move-object/from16 v27, v3

    const/16 v3, 0x10

    sparse-switch v26, :sswitch_data_1

    goto/16 :goto_e

    :sswitch_21
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_e

    :cond_33
    const/16 v12, 0x20

    goto/16 :goto_f

    :sswitch_22
    const-string v1, "A_FLAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_e

    :cond_34
    const/16 v12, 0x1f

    goto/16 :goto_f

    :sswitch_23
    const-string v1, "A_EAC3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_e

    :cond_35
    const/16 v12, 0x1e

    goto/16 :goto_f

    :sswitch_24
    const-string v1, "V_MPEG2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_e

    :cond_36
    const/16 v12, 0x1d

    goto/16 :goto_f

    :sswitch_25
    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_e

    :cond_37
    const/16 v12, 0x1c

    goto/16 :goto_f

    :sswitch_26
    const-string v1, "S_TEXT/WEBVTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_e

    :cond_38
    const/16 v12, 0x1b

    goto/16 :goto_f

    :sswitch_27
    const-string v1, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_e

    :cond_39
    const/16 v12, 0x1a

    goto/16 :goto_f

    :sswitch_28
    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_e

    :cond_3a
    const/16 v12, 0x19

    goto/16 :goto_f

    :sswitch_29
    const-string v1, "A_PCM/INT/LIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_e

    :cond_3b
    const/16 v12, 0x18

    goto/16 :goto_f

    :sswitch_2a
    const-string v1, "A_PCM/INT/BIG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_e

    :cond_3c
    const/16 v12, 0x17

    goto/16 :goto_f

    :sswitch_2b
    const-string v1, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_e

    :cond_3d
    const/16 v12, 0x16

    goto/16 :goto_f

    :sswitch_2c
    const-string v1, "A_DTS/EXPRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_e

    :cond_3e
    const/16 v12, 0x15

    goto/16 :goto_f

    :sswitch_2d
    const-string v1, "V_THEORA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_e

    :cond_3f
    const/16 v12, 0x14

    goto/16 :goto_f

    :sswitch_2e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_e

    :cond_40
    const/16 v12, 0x13

    goto/16 :goto_f

    :sswitch_2f
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_e

    :cond_41
    const/16 v12, 0x12

    goto/16 :goto_f

    :sswitch_30
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_e

    :cond_42
    const/16 v12, 0x11

    goto/16 :goto_f

    :sswitch_31
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_e

    :cond_43
    move v12, v3

    goto/16 :goto_f

    :sswitch_32
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_e

    :cond_44
    const/16 v12, 0xf

    goto/16 :goto_f

    :sswitch_33
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_e

    :cond_45
    const/16 v12, 0xe

    goto/16 :goto_f

    :sswitch_34
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_e

    :cond_46
    const/16 v12, 0xd

    goto/16 :goto_f

    :sswitch_35
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_e

    :cond_47
    const/16 v12, 0xc

    goto/16 :goto_f

    :sswitch_36
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_e

    :cond_48
    const/16 v12, 0xb

    goto/16 :goto_f

    :sswitch_37
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_e

    :cond_49
    const/16 v12, 0xa

    goto/16 :goto_f

    :sswitch_38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_e

    :cond_4a
    const/16 v12, 0x9

    goto/16 :goto_f

    :sswitch_39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_e

    :cond_4b
    const/16 v12, 0x8

    goto/16 :goto_f

    :sswitch_3a
    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_e

    :cond_4c
    const/4 v12, 0x7

    goto :goto_f

    :sswitch_3b
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_e

    :cond_4d
    const/4 v12, 0x6

    goto :goto_f

    :sswitch_3c
    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_e

    :cond_4e
    const/4 v12, 0x5

    goto :goto_f

    :sswitch_3d
    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_e

    :cond_4f
    const/4 v12, 0x4

    goto :goto_f

    :sswitch_3e
    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_e

    :cond_50
    const/4 v12, 0x3

    goto :goto_f

    :sswitch_3f
    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_e

    :cond_51
    const/4 v12, 0x2

    goto :goto_f

    :sswitch_40
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_e

    :cond_52
    const/4 v12, 0x1

    goto :goto_f

    :sswitch_41
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_e

    :cond_53
    const/4 v12, 0x0

    goto :goto_f

    :goto_e
    const/4 v12, -0x1

    :goto_f
    const-string v0, "video/x-unknown"

    const-string v1, "MatroskaExtractor"

    packed-switch v12, :pswitch_data_1

    const-string v0, "Unrecognized codec identifier."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v2, v27

    iget-object v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v3, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v3, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "audio/opus"

    const/16 v3, 0x1680

    const/4 v4, 0x3

    goto/16 :goto_1b

    :pswitch_2
    move-object/from16 v2, v27

    iget-object v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "audio/flac"

    goto/16 :goto_17

    :pswitch_3
    move-object/from16 v2, v27

    const-string v0, "audio/eac3"

    goto/16 :goto_12

    :pswitch_4
    move-object/from16 v2, v27

    const-string v0, "video/mpeg2"

    goto/16 :goto_12

    :pswitch_5
    move-object/from16 v2, v27

    const-string v0, "application/x-subrip"

    goto/16 :goto_12

    :pswitch_6
    move-object/from16 v2, v27

    const-string v0, "text/vtt"

    goto/16 :goto_12

    :pswitch_7
    move-object/from16 v2, v27

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v0}, Landroidx/media3/extractor/AvcConfig;->parse$1(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v0

    iget v1, v0, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    const-string v1, "video/hevc"

    goto/16 :goto_13

    :pswitch_8
    move-object/from16 v2, v27

    iget-object v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    sget-object v3, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lkotlin/io/ExceptionsKt;->checkElementsNotNull(I[Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    const-string v1, "text/x-ssa"

    goto/16 :goto_17

    :pswitch_9
    move-object/from16 v2, v27

    iget v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v0

    if-nez v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported little endian PCM bit depth: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :pswitch_a
    move-object/from16 v2, v27

    iget v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_54

    const/4 v0, 0x3

    goto :goto_10

    :cond_54
    if-ne v0, v3, :cond_55

    const/high16 v0, 0x10000000

    goto :goto_10

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported big endian PCM bit depth: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :pswitch_b
    move-object/from16 v2, v27

    iget v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v3, 0x20

    if-ne v0, v3, :cond_57

    const/4 v0, 0x4

    :cond_56
    :goto_10
    const/4 v1, 0x1

    const/4 v3, 0x3

    goto/16 :goto_21

    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported floating point PCM bit depth: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_11
    const/4 v3, 0x1

    const/4 v4, 0x3

    goto/16 :goto_20

    :pswitch_c
    move-object/from16 v2, v27

    goto :goto_12

    :pswitch_d
    move-object/from16 v2, v27

    const-string v0, "application/pgs"

    goto :goto_12

    :pswitch_e
    move-object/from16 v2, v27

    const-string v0, "video/x-vnd.on2.vp9"

    goto :goto_12

    :pswitch_f
    move-object/from16 v2, v27

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_12

    :pswitch_10
    move-object/from16 v2, v27

    const-string v0, "video/av01"

    goto :goto_12

    :pswitch_11
    move-object/from16 v2, v27

    const-string v0, "audio/vnd.dts"

    goto :goto_12

    :pswitch_12
    move-object/from16 v2, v27

    const-string v0, "audio/ac3"

    goto :goto_12

    :pswitch_13
    move-object/from16 v2, v27

    iget-object v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v1}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v1

    iget v3, v1, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput v3, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    iget v3, v1, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iput v3, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    const-string v3, "audio/mp4a-latm"

    iget-object v1, v1, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x3

    goto/16 :goto_27

    :pswitch_14
    move-object/from16 v2, v27

    const-string v0, "audio/vnd.dts.hd"

    :goto_12
    const/4 v1, 0x3

    goto/16 :goto_1d

    :pswitch_15
    move-object/from16 v2, v27

    iget-object v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    const-string v1, "application/vobsub"

    goto/16 :goto_17

    :pswitch_16
    move-object/from16 v2, v27

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v0}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v0

    iget v1, v0, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    const-string v1, "video/avc"

    :goto_13
    iget-object v3, v0, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    iget-object v0, v0, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x3

    goto/16 :goto_22

    :pswitch_17
    move-object/from16 v2, v27

    const/4 v0, 0x4

    new-array v1, v0, [B

    iget-object v3, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    const-string v1, "application/dvbsubs"

    goto/16 :goto_17

    :pswitch_18
    move-object/from16 v2, v27

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    :try_start_0
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    const-wide/32 v7, 0x58564944

    cmp-long v3, v5, v7

    if-nez v3, :cond_58

    new-instance v0, Landroid/util/Pair;

    const-string v1, "video/divx"
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_16

    :cond_58
    const-wide/32 v7, 0x33363248

    cmp-long v3, v5, v7

    if-nez v3, :cond_59

    :try_start_2
    new-instance v0, Landroid/util/Pair;

    const-string v1, "video/3gpp"
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    :try_start_3
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_16

    :cond_59
    const-wide/32 v7, 0x31435657

    cmp-long v3, v5, v7

    if-nez v3, :cond_5c

    :try_start_4
    iget v0, v4, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v0, v0, 0x14

    iget-object v1, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :goto_14
    array-length v3, v1

    add-int/lit8 v3, v3, -0x4

    if-ge v0, v3, :cond_5b

    aget-byte v3, v1, v0

    if-nez v3, :cond_5a

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    if-nez v3, :cond_5a

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5a

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_5a

    array-length v3, v1

    invoke-static {v1, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    const-string v3, "video/wvc1"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_15

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_5b
    const-string v0, "Failed to find FourCC VC1 initialization data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5c
    const-string v3, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v1, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_15
    move-object v0, v1

    :goto_16
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :goto_17
    const/4 v3, 0x1

    const/4 v4, 0x3

    move v5, v4

    move v4, v3

    move-object v3, v1

    goto/16 :goto_26

    :catch_0
    const/4 v3, 0x0

    :catch_1
    const-string v0, "Error parsing FourCC private data"

    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_19
    move-object/from16 v2, v27

    const-string v0, "audio/mpeg"

    goto :goto_18

    :pswitch_1a
    move-object/from16 v2, v27

    const-string v0, "audio/mpeg-L2"

    :goto_18
    const/16 v1, 0x1000

    const/4 v3, 0x0

    const/4 v4, 0x3

    goto :goto_1c

    :pswitch_1b
    move-object/from16 v2, v27

    iget-object v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "Error parsing vorbis codec private"

    const/4 v3, 0x0

    :try_start_5
    aget-byte v3, v0, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_62

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_19
    aget-byte v5, v0, v3

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_5d

    add-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_1a
    aget-byte v7, v0, v3

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_5e

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_5e
    const/4 v6, 0x1

    add-int/2addr v3, v6

    add-int/2addr v5, v7

    aget-byte v7, v0, v3

    if-ne v7, v6, :cond_61

    new-array v6, v4, [B

    const/4 v7, 0x0

    invoke-static {v0, v3, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    aget-byte v4, v0, v3

    const/4 v7, 0x3

    if-ne v4, v7, :cond_60

    add-int/2addr v3, v5

    aget-byte v4, v0, v3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5f

    array-length v4, v0

    sub-int/2addr v4, v3

    new-array v4, v4, [B

    array-length v5, v0

    sub-int/2addr v5, v3

    const/4 v8, 0x0

    invoke-static {v0, v3, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    const-string v1, "audio/vorbis"

    const/16 v3, 0x2000

    move v4, v7

    :goto_1b
    move/from16 v28, v3

    move-object v3, v0

    move-object v0, v1

    move/from16 v1, v28

    :goto_1c
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_28

    :cond_5f
    const/4 v0, 0x0

    :try_start_6
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_60
    const/4 v0, 0x0

    :try_start_7
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_61
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_62
    const/4 v0, 0x0

    :try_start_8
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v2

    throw v2
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_2
    const/4 v0, 0x0

    :catch_3
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1c
    move-object/from16 v2, v27

    const/4 v1, 0x3

    new-instance v0, Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-direct {v0}, Landroidx/media3/extractor/TrueHdSampleRechunker;-><init>()V

    iput-object v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    const-string v0, "audio/true-hd"

    :goto_1d
    const/4 v3, 0x1

    goto/16 :goto_24

    :pswitch_1d
    move-object/from16 v2, v27

    const/4 v3, 0x3

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    :try_start_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_63

    goto :goto_1e

    :cond_63
    const v6, 0xfffe

    if-ne v4, v6, :cond_64

    const/16 v4, 0x18

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    sget-object v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_64

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_4

    cmp-long v0, v6, v8

    if-nez v0, :cond_64

    :goto_1e
    move v0, v5

    goto :goto_1f

    :cond_64
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_66

    iget v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v0

    if-nez v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported PCM bit depth: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v3

    move v3, v5

    :goto_20
    iget v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const-string v6, ". Setting mimeType to audio/x-unknown"

    invoke-static {v0, v5, v6}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v5, v3

    move v3, v4

    goto :goto_23

    :cond_65
    move v1, v5

    :goto_21
    const-string v4, "audio/raw"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v28, v4

    move v4, v0

    move-object v0, v6

    move v6, v3

    move-object v3, v5

    move v5, v1

    move-object/from16 v1, v28

    :goto_22
    const/4 v7, -0x1

    goto :goto_29

    :cond_66
    const-string v0, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    :goto_23
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio/x-unknown"

    move v1, v3

    move v3, v5

    :goto_24
    const/4 v4, 0x0

    move v5, v1

    move/from16 v28, v3

    move-object v3, v0

    move-object v0, v4

    move/from16 v4, v28

    goto :goto_26

    :catch_4
    const-string v0, "Error parsing MS/ACM codec private"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1e
    move-object/from16 v2, v27

    const/4 v0, 0x1

    const/4 v1, 0x3

    iget-object v3, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v3, :cond_67

    const/4 v3, 0x0

    goto :goto_25

    :cond_67
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_25
    const-string v4, "video/mp4v-es"

    move v5, v1

    move-object/from16 v28, v4

    move v4, v0

    move-object v0, v3

    move-object/from16 v3, v28

    :goto_26
    const/4 v1, 0x0

    :goto_27
    const/4 v6, -0x1

    move-object/from16 v28, v3

    move-object v3, v0

    move-object/from16 v0, v28

    move/from16 v29, v6

    move-object v6, v1

    move/from16 v1, v29

    move/from16 v30, v5

    move v5, v4

    move/from16 v4, v30

    :goto_28
    const/4 v7, -0x1

    move/from16 v28, v1

    move-object v1, v0

    move-object v0, v6

    move v6, v4

    move v4, v7

    move/from16 v7, v28

    :goto_29
    iget-object v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    if-eqz v8, :cond_68

    new-instance v8, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v9, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    invoke-direct {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v8}, Landroidx/media3/extractor/AacUtil$Config;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v8

    if-eqz v8, :cond_68

    iget-object v0, v8, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    :cond_68
    iget-boolean v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    or-int/lit8 v8, v8, 0x0

    iget-boolean v9, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v9, :cond_69

    const/4 v9, 0x2

    goto :goto_2a

    :cond_69
    const/4 v9, 0x0

    :goto_2a
    or-int/2addr v8, v9

    new-instance v9, Landroidx/media3/common/Format$Builder;

    invoke-direct {v9}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6a

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    iput v6, v9, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    iput v6, v9, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput v4, v9, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    goto/16 :goto_33

    :cond_6a
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    iget v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v4, :cond_6d

    iget v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6b

    iget v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    :cond_6b
    iput v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    iget v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v4, v5, :cond_6c

    iget v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    :cond_6c
    iput v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_2b

    :cond_6d
    const/4 v5, -0x1

    :goto_2b
    iget v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v4, v5, :cond_6e

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v6, v5, :cond_6e

    iget v10, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int/2addr v10, v4

    int-to-float v4, v10

    iget v10, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int/2addr v10, v6

    int-to-float v6, v10

    div-float/2addr v4, v6

    goto :goto_2c

    :cond_6e
    const/high16 v4, -0x40800000    # -1.0f

    :goto_2c
    iget-boolean v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v6, :cond_71

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_70

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_70

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_70

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_70

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_70

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_70

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_70

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_70

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_70

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_6f

    goto/16 :goto_2d

    :cond_6f
    const/16 v6, 0x19

    new-array v6, v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v12, 0x47435000    # 50000.0f

    mul-float/2addr v11, v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_2e

    :cond_70
    :goto_2d
    const/4 v6, 0x0

    :goto_2e
    new-instance v10, Landroidx/media3/common/ColorInfo;

    iget v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v12, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v13, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v10, v11, v6, v12, v13}, Landroidx/media3/common/ColorInfo;-><init>(I[BII)V

    goto :goto_2f

    :cond_71
    const/4 v10, 0x0

    :goto_2f
    iget-object v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v6, :cond_72

    sget-object v11, Landroidx/media3/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_72
    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v6, :cond_77

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    const/4 v11, 0x0

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_77

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_77

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_73

    const/4 v5, 0x0

    goto :goto_31

    :cond_73
    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_74

    const/16 v5, 0x5a

    goto :goto_31

    :cond_74
    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, -0x3ccc0000    # -180.0f

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_76

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, 0x43340000    # 180.0f

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_75

    goto :goto_30

    :cond_75
    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v11, -0x3d4c0000    # -90.0f

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_77

    const/16 v5, 0x10e

    goto :goto_31

    :cond_76
    :goto_30
    const/16 v5, 0xb4

    :cond_77
    :goto_31
    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    iput v6, v9, Landroidx/media3/common/Format$Builder;->width:I

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    iput v6, v9, Landroidx/media3/common/Format$Builder;->height:I

    iput v4, v9, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    iput v5, v9, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iput-object v4, v9, Landroidx/media3/common/Format$Builder;->projectionData:[B

    iget v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    iput v4, v9, Landroidx/media3/common/Format$Builder;->stereoMode:I

    iput-object v10, v9, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    const/4 v5, 0x2

    goto :goto_33

    :cond_78
    const-string v4, "application/x-subrip"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "text/x-ssa"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "text/vtt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "application/vobsub"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "application/pgs"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "application/dvbsubs"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    goto :goto_32

    :cond_79
    const-string v0, "Unexpected MIME type."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_7a
    :goto_32
    move v5, v6

    :goto_33
    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v4, :cond_7b

    sget-object v6, Landroidx/media3/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    iput-object v4, v9, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    :cond_7b
    move/from16 v4, v25

    invoke-virtual {v9, v4}, Landroidx/media3/common/Format$Builder;->setId(I)V

    iput-object v1, v9, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v7, v9, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iget-object v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iput-object v1, v9, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iput v8, v9, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    iput-object v3, v9, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iput-object v0, v9, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget-object v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v0, v9, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-virtual {v9}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iget v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v3, p1

    invoke-interface {v3, v1, v5}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget v0, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v1, v16

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_34

    :cond_7c
    move-object/from16 v24, v17

    :goto_34
    const/4 v0, 0x0

    move-object/from16 v1, v24

    iput-object v0, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    goto/16 :goto_37

    :cond_7d
    const/4 v0, 0x0

    const-string v1, "CodecId is missing in TrackEntry element"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_7e
    move-object v1, v2

    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_7f

    goto/16 :goto_37

    :cond_7f
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v1, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_80

    iget-object v1, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    :cond_80
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_35
    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v2, v3, :cond_81

    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v3, v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_81
    const/4 v2, 0x0

    move v9, v2

    :goto_36
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v9, v2, :cond_83

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v4, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v4, v9

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long v3, v2, v4

    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    if-nez v9, :cond_82

    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    if-nez v5, :cond_82

    or-int/lit8 v2, v2, 0x1

    :cond_82
    move v5, v2

    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v6, v2, v9

    sub-int v10, v1, v6

    move-object v1, v0

    move-object v2, v8

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    add-int/lit8 v9, v9, 0x1

    move v1, v10

    goto :goto_36

    :cond_83
    const/4 v1, 0x0

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    :cond_84
    :goto_37
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_41
        -0x7ce7f3b0 -> :sswitch_40
        -0x76567dc0 -> :sswitch_3f
        -0x6a615338 -> :sswitch_3e
        -0x672350af -> :sswitch_3d
        -0x585f4fce -> :sswitch_3c
        -0x585f4fcd -> :sswitch_3b
        -0x51dc40b2 -> :sswitch_3a
        -0x37a9c464 -> :sswitch_39
        -0x2016c535 -> :sswitch_38
        -0x2016c4e5 -> :sswitch_37
        -0x19552dbd -> :sswitch_36
        -0x1538b2ba -> :sswitch_35
        0x3c02325 -> :sswitch_34
        0x3c02353 -> :sswitch_33
        0x3c030c5 -> :sswitch_32
        0x4e81333 -> :sswitch_31
        0x4e86155 -> :sswitch_30
        0x4e86156 -> :sswitch_2f
        0x5e8da3e -> :sswitch_2e
        0x1a8350d6 -> :sswitch_2d
        0x2056f406 -> :sswitch_2c
        0x25e26ee2 -> :sswitch_2b
        0x2b45174d -> :sswitch_2a
        0x2b453ce4 -> :sswitch_29
        0x2c0618eb -> :sswitch_28
        0x32fdf009 -> :sswitch_27
        0x3e4ca2d8 -> :sswitch_26
        0x54c61e47 -> :sswitch_25
        0x6bd6c624 -> :sswitch_24
        0x7446132a -> :sswitch_23
        0x7446b0a6 -> :sswitch_22
        0x744ad97d -> :sswitch_21
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1e
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public final insert(Lcom/motorola/camera/background/provider/filedatacontract/FileData;JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p5, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;

    iget v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;

    invoke-direct {v0, p0, p5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;-><init>(Landroidx/appcompat/widget/Toolbar$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p2, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->J$0:J

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-wide p2, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    sget-object p5, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz p4, :cond_5

    new-instance p4, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;

    invoke-direct {p4, p0, p1, v5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$2;-><init>(Landroidx/appcompat/widget/Toolbar$1;Lcom/motorola/camera/background/provider/filedatacontract/FileData;Lkotlin/coroutines/Continuation;)V

    invoke-static {p5, v2, p4, v4}, Lkotlinx/coroutines/DelayKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p0

    iput-wide p2, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->J$0:J

    iput v3, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$1;->label:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p5, Ljava/lang/Long;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_4
    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    :cond_5
    new-instance p4, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$3;

    invoke-direct {p4, p0, p1, v5}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$insert$3;-><init>(Landroidx/appcompat/widget/Toolbar$1;Lcom/motorola/camera/background/provider/filedatacontract/FileData;Lkotlin/coroutines/Continuation;)V

    invoke-static {p5, v2, p4, v4}, Lkotlinx/coroutines/DelayKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    return-object p0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzk;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzk;->zza:Lcom/google/android/play/core/appupdate/zzi;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzi;->zza:Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/play/core/appupdate/zzt;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/zzt;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
