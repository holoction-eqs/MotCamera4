.class public final Landroidx/media3/common/util/NetworkTypeObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final listeners:Ljava/lang/Object;

.field public final mainHandler:Ljava/lang/Object;

.field public networkType:I

.field public final networkTypeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->ALWAYS_ALLOW:L_COROUTINE/ArtificialStackFrames;

    iput-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->mainHandler:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->NO_OP_CALLBACK:Lkotlin/UByte$Companion;

    iput-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;[B)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    iput-object p2, p0, Landroidx/media3/common/util/NetworkTypeObserver;->mainHandler:Ljava/lang/Object;

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->mainHandler:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    iput v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/SecureCamera$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/SecureCamera$1;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    .line 6
    iput-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v2, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->COLOR_RESOURCE_COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    check-cast v2, Ljava/util/List;

    new-instance v4, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    invoke-direct {v4, v0, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;-><init>(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 7
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    invoke-virtual {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->getChunkSize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 8
    iget v0, v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    const/16 v2, 0xc

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    const/4 v1, 0x2

    .line 9
    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->mainHandler:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6

    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->$r8$classId:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 11
    iget-short v0, v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    add-int/lit8 v0, v0, 0x1

    .line 12
    iput v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 13
    iget-short v2, v2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    .line 14
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    if-ge v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    check-cast v2, [I

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    mul-int/lit8 v3, v2, 0x4

    const/16 v4, 0x10

    add-int/2addr v3, v4

    const/16 v5, 0x202

    invoke-direct {v1, v5, v4, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->mainHandler:Ljava/lang/Object;

    new-instance v1, Landroidx/media3/common/util/GlProgram;

    invoke-direct {v1, p1, v0, v2}, Landroidx/media3/common/util/GlProgram;-><init>(Ljava/util/List;Ljava/util/HashSet;I)V

    iput-object v1, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    return-void
.end method

.method public static access$200(ILandroidx/media3/common/util/NetworkTypeObserver;)V
    .locals 3

    iget-object v0, p1, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    if-ne v1, p0, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    iput p0, p1, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;->onNetworkTypeChanged(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;
    .locals 2

    const-class v0, Landroidx/media3/common/util/NetworkTypeObserver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/common/util/NetworkTypeObserver;->staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-direct {v1, p0}, Landroidx/media3/common/util/NetworkTypeObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/media3/common/util/NetworkTypeObserver;->staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;

    :cond_0
    sget-object p0, Landroidx/media3/common/util/NetworkTypeObserver;->staticInstance:Landroidx/media3/common/util/NetworkTypeObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 9

    iget v0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/common/util/NetworkTypeObserver;->mainHandler:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    check-cast v4, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v4, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    iget p0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    check-cast v3, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v3, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    iget-object v2, v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v2, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    iget-object v2, v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    iget v3, v2, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->id:I

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, v2, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v3, v1

    :goto_1
    const/16 v4, 0x80

    if-ge v3, v4, :cond_1

    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-char v4, v2, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->charToByteArray(C)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->charToByteArray(C)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x120

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    iget v4, v3, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    add-int/2addr v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    iget-object v2, v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v2, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/NetworkTypeObserver;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    :cond_2
    return-void

    :goto_3
    check-cast v4, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v4, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    const/4 v0, 0x4

    new-array v4, v0, [B

    sget-byte v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->typeIdColor:B

    aput-byte v5, v4, v1

    const/4 v5, 0x1

    aput-byte v1, v4, v5

    const/4 v6, 0x2

    aput-byte v1, v4, v6

    const/4 v7, 0x3

    aput-byte v1, v4, v7

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    iget p0, p0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    check-cast v3, [I

    array-length p0, v3

    move v4, v1

    :goto_4
    if-ge v4, p0, :cond_3

    aget v8, v3, v4

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    check-cast v2, Landroidx/media3/common/util/GlProgram;

    iget-object p0, v2, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    new-array p0, v0, [B

    sget-byte v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->typeIdColor:B

    aput-byte v3, p0, v1

    aput-byte v1, p0, v5

    aput-byte v1, p0, v6

    aput-byte v1, p0, v7

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    iget p0, v2, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, v2, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast p0, [I

    array-length p0, p0

    mul-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x54

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, v2, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast p0, [B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, v2, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast p0, [I

    array-length v0, p0

    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_4

    aget v4, p0, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    iget-object p0, v2, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast p0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v0, p0

    :goto_6
    if-ge v1, v0, :cond_5

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->shortToByteArray(S)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->shortToByteArray(S)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    iget v4, v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->shortToByteArray(S)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    new-array v3, v6, [B

    fill-array-data v3, :array_0

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    iget v2, v2, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x1ct
    .end array-data
.end method
