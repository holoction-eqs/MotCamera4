.class public final Lcom/airbnb/lottie/model/MutablePair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public first:Ljava/lang/Object;

.field public second:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    iput-object p2, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    iput-object p3, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    new-instance v0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;I)V
    .locals 1

    iput p2, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    new-instance p2, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void

    :cond_0
    const-string p2, "database"

    .line 7
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    const-string p2, "newSetFromMap(IdentityHashMap())"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;)V
    .locals 1

    .line 8
    sget-object p1, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    const/16 v0, 0xb

    .line 9
    iput v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    .line 11
    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/model/MutablePair;I)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V
    .locals 0

    .line 12
    const/16 p2, 0x10

    iput p2, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/MutablePair;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    .line 13
    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;I)V
    .locals 0

    .line 16
    const/16 p2, 0x11

    iput p2, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/MutablePair;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;)V
    .locals 2

    .line 18
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;->EMPTY:Lkotlin/time/Duration$Companion;

    const/16 v1, 0x14

    .line 19
    iput v1, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    iput-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    iput-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    return-void
.end method

.method public final construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/gson/JsonIOException;

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v2, [Landroidx/media3/extractor/TrackOutput;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v2, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    iget-object v4, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "application/cea-608"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid closed caption MIME type provided: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    iget-object v5, v3, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v5

    :goto_3
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iput-object v4, v6, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->selectionFlags:I

    iput v4, v6, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    iget-object v4, v3, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iput-object v4, v6, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->accessibilityChannel:I

    iput v4, v6, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    iget-object v3, v3, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iput-object v3, v6, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance v3, Landroidx/media3/common/Format;

    invoke-direct {v3, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v2, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget-object v3, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v3, [Landroidx/media3/extractor/TrackOutput;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    instance-of v0, p1, Landroidx/core/util/Pair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    check-cast p1, Landroidx/core/util/Pair;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eq p1, p0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move p0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v2

    :goto_2
    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getDependentWorkIds(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public final getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast p0, L_COROUTINE/ArtificialStackFrames;

    invoke-virtual {p0, p1}, L_COROUTINE/ArtificialStackFrames;->getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final hasCompletedAllPrerequisites(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    move p1, v1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int p0, v0, v1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xe

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast p0, L_COROUTINE/ArtificialStackFrames;

    invoke-virtual {p0, v1}, L_COROUTINE/ArtificialStackFrames;->setEnabled(Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 13

    iget-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/FlagSet$Builder;

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;

    iget v1, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->sensor:I

    iget v2, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->display:I

    iget p0, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->errorDescription:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x7

    invoke-virtual {p2, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {p2, v4}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v4

    iget-object v5, v0, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v6, v3, Landroidx/core/graphics/Insets;->top:I

    iput v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I

    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    iget-boolean v10, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z

    if-eqz v10, :cond_0

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v7

    iput v7, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I

    add-int/2addr v7, p0

    :cond_0
    iget-boolean p0, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z

    iget v11, v3, Landroidx/core/graphics/Insets;->left:I

    if-eqz p0, :cond_2

    if-eqz v6, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    add-int v8, p0, v11

    :cond_2
    iget-boolean p0, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z

    iget v12, v3, Landroidx/core/graphics/Insets;->right:I

    if-eqz p0, :cond_4

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    add-int v9, v1, v12

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v1, v11, :cond_5

    iput v11, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v1, v2

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-boolean v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z

    if-eqz v6, :cond_6

    iget v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v6, v12, :cond_6

    iput v12, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v1, v2

    :cond_6
    iget-boolean v6, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v3, Landroidx/core/graphics/Insets;->top:I

    if-eq v6, v3, :cond_7

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1, v8, p0, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p0, v0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    if-eqz p0, :cond_9

    iget p1, v4, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I

    :cond_9
    if-nez v10, :cond_a

    if-eqz p0, :cond_b

    :cond_a
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight()V

    :cond_b
    return-object p2
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast p0, L_COROUTINE/ArtificialStackFrames;

    invoke-virtual {p0, p1, p2}, L_COROUTINE/ArtificialStackFrames;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final resolveClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 5

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->klass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-direct {v4, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/model/MutablePair;->resolveClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_JAVA_LOADER:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v3

    :goto_2
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz p1, :cond_3

    move-object v3, p0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    :cond_3
    return-object v3

    :cond_4
    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    const-string v2, "fqName.parent()"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;->getPackageFragments(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;->scope:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/JvmPackageScope;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/JvmPackageScope;->javaScope:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->findClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v3

    :cond_5
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/model/MutablePair;->$r8$classId:I

    const-string/jumbo v1, "}"

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bounds{lower="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " upper="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/core/graphics/Insets;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Pair{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zab(Landroid/content/Context;Lcom/google/android/gms/common/internal/GmsClient;)I
    .locals 5

    invoke-static {p1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/google/android/gms/common/api/Api$Client;->getMinApkVersion()I

    move-result p2

    iget-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-le v3, p2, :cond_1

    iget-object v4, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    move v0, p1

    :cond_3
    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    return v0
.end method
