.class public final Landroidx/work/InputMergerFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/CreateWeakListener;
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
.implements Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;
.implements Landroidx/preference/Preference$SummaryProvider;
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Landroidx/media3/extractor/ExtractorOutput;


# static fields
.field public static INSTANCE:Landroidx/work/InputMergerFactory$1;

.field public static sSimpleSummaryProvider:Landroidx/work/InputMergerFactory$1;

.field public static zza:Landroidx/work/InputMergerFactory$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Landroidx/work/InputMergerFactory$1;->$r8$classId:I

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, Landroidx/work/InputMergerFactory$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 1

    iput p1, p0, Landroidx/work/InputMergerFactory$1;->$r8$classId:I

    const/4 p2, 0x0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x2

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    const/16 p1, 0x11

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    const/16 p1, 0x10

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    const/16 p1, 0xf

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    const/16 p1, 0xe

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    :pswitch_4
    const/16 p1, 0xd

    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    :pswitch_5
    const/16 p1, 0xc

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    :pswitch_6
    const/16 p1, 0xb

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    :pswitch_7
    const/16 p1, 0xa

    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    .line 12
    :cond_0
    invoke-direct {p0, v0, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    .line 13
    :cond_1
    invoke-direct {p0, v0, p2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Landroidx/work/InputMergerFactory$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 p1, 0x18

    iput p1, p0, Landroidx/work/InputMergerFactory$1;->$r8$classId:I

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public static createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;
    .locals 5

    if-nez p0, :cond_2

    if-nez p1, :cond_0

    new-instance p0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {p1, p0}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/HashMap;)V

    move-object p0, p1

    :goto_1
    return-object p0

    :cond_2
    const-string p1, "keys"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "values"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v0, v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    new-instance p0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {p0, v1}, Landroidx/lifecycle/SavedStateHandle;-><init>(Ljava/util/HashMap;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid bundle passed as restored state"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getTriggerName$room_runtime_release(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "tableName"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerType"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "`room_table_modification_trigger_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x60

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWrappedDb(Lkotlin/DeepRecursiveFunction;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    .locals 2

    const-string v0, "refHolder"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    invoke-direct {v0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static startSpecification$default(Ljava/lang/Object;I)Landroidx/window/core/ValidSpecification;
    .locals 2

    sget v0, Landroidx/window/core/SpecificationComputer;->$r8$clinit:I

    sget-object v0, Lkotlin/UInt$Companion;->INSTANCE$3:Lkotlin/UInt$Companion;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "verificationMode"

    invoke-static {p1, v1}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    new-instance v1, Landroidx/window/core/ValidSpecification;

    invoke-direct {v1, p0, p1, v0}, Landroidx/window/core/ValidSpecification;-><init>(Ljava/lang/Object;ILandroidx/window/core/Logger;)V

    return-object v1
.end method

.method public static declared-synchronized zza$1()V
    .locals 4

    const-class v0, Landroidx/work/InputMergerFactory$1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/work/InputMergerFactory$1;->zza:Landroidx/work/InputMergerFactory$1;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/work/InputMergerFactory$1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    sput-object v1, Landroidx/work/InputMergerFactory$1;->zza:Landroidx/work/InputMergerFactory$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    const/4 p0, 0x0

    return-object p0
.end method

.method public construct()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/work/InputMergerFactory$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0

    :goto_0
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public create(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;
    .locals 0

    new-instance p0, Lcom/google/gson/FieldAttributes;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/gson/FieldAttributes;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    iget-object p0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast p0, Landroidx/databinding/WeakListener;

    return-object p0
.end method

.method public endTracks()V
    .locals 0

    iget p0, p0, Landroidx/work/InputMergerFactory$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Landroidx/work/InputMergerFactory$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;-><init>(Ljava/lang/Object;I)V

    return-object p0

    :goto_0
    new-instance p0, Lcom/google/android/datatransport/runtime/time/UptimeClock;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/time/UptimeClock;-><init>(I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public getCodecCount()I
    .locals 0

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result p0

    return p0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 0

    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object p0

    return-object p0
.end method

.method public isFeatureRequired(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    const-string p0, "secure-playback"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "video/avc"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f120305

    iget-object p1, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public secureDecodersExplicit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    iget p0, p0, Landroidx/work/InputMergerFactory$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;
    .locals 1

    new-instance p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>(I)V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zza(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const/4 v0, 0x1

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    iget p2, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    goto :goto_0

    :cond_0
    if-lt p2, p1, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    goto :goto_0

    :cond_1
    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    :goto_0
    return-object p0
.end method

.method public timeUsToTargetTime(J)J
    .locals 0

    return-wide p1
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    iget p0, p0, Landroidx/work/InputMergerFactory$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    new-instance p0, Landroidx/media3/extractor/DummyTrackOutput;

    invoke-direct {p0}, Landroidx/media3/extractor/DummyTrackOutput;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method
