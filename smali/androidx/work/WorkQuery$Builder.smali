.class public final Landroidx/work/WorkQuery$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;
.implements Landroidx/media3/exoplayer/source/MediaSourceEventListener;
.implements Landroidx/media3/exoplayer/drm/DrmSessionEventListener;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# instance fields
.field public mIds:Ljava/lang/Object;

.field public mStates:Ljava/lang/Object;

.field public mTags:Ljava/lang/Object;

.field public mUniqueWorkNames:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    new-instance v0, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;-><init>(Landroidx/work/WorkQuery$Builder;I)V

    new-instance v1, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData$DebugUiListener$$ExternalSyntheticLambda0;-><init>(Landroidx/work/WorkQuery$Builder;I)V

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {p1, v2, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(II)V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, p2, v3}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;I)V

    new-instance v1, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v1, v3, p2, v4}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    .line 7
    new-instance v4, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    invoke-direct {v4, v3, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 8
    new-instance v3, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-direct {v3, p1, p2, v2}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;I)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    iput-object v3, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;)V
    .locals 5

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    .line 11
    iget-object v1, p1, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v1, v1, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    .line 12
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/io/Serializable;ILjava/lang/Object;I)V

    .line 13
    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    .line 14
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 15
    iget-object p1, p1, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p1, p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-direct {v0, p1, v3, v4}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 17
    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    new-instance v0, Landroidx/collection/ArrayMap$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/collection/ArrayMap$1;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    new-instance v0, Landroidx/collection/ArrayMap$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Landroidx/collection/ArrayMap$1;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/color/utilities/Hct;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 20
    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V
    .locals 5

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->classProto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 22
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    const-string v0, "classProto.enumEntryList"

    .line 23
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    .line 24
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    .line 25
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 26
    iget v3, v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->name_:I

    .line 27
    invoke-static {v4, v3}, Lkotlin/text/UStringsKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 28
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    .line 29
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 30
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    .line 31
    new-instance v1, Landroidx/lifecycle/Transformations$map$1;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0, p1}, Landroidx/lifecycle/Transformations$map$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 32
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    .line 33
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 34
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    .line 35
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;-><init>(Ljava/lang/Object;I)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-direct {v1, p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 37
    iput-object v1, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Landroidx/work/WorkQuery$Builder;->dfs(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This graph contains cyclic dependencies"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v1, Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    iget-object v2, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast v2, Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;)V

    return-object v3
.end method

.method public final getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;
    .locals 4

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/SupportActionModeWrapper;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Landroidx/appcompat/view/ActionMode;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/appcompat/view/SupportActionModeWrapper;

    iget-object v1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/ActionMode;)V

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getHctsByHue()Ljava/util/List;
    .locals 9

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    :goto_0
    const-wide v3, 0x4076800000000000L    # 360.0

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/material/color/utilities/Hct;

    iget-wide v5, v4, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    check-cast v3, Lcom/google/android/material/color/utilities/Hct;

    iget-wide v7, v3, Lcom/google/android/material/color/utilities/Hct;->tone:D

    move-wide v3, v1

    invoke-static/range {v3 .. v8}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getHctsByTemp()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->getHctsByHue()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getMenuWrapper(Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/Menu;
    .locals 2

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/MenuWrapperICS;

    iget-object v1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D
    .locals 5

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->getTempsByHct()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->getHctsByTemp()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->getHctsByTemp()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->getTempsByHct()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->getHctsByTemp()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->getTempsByHct()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->getTempsByHct()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->getHctsByTemp()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    sub-double/2addr v2, p0

    const-wide/16 p0, 0x0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    return-wide p0

    :cond_0
    div-double/2addr v2, v0

    return-wide v2
.end method

.method public final getSystemIdInfo(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/model/SystemIdInfo;
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    iget-object v2, p1, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget p1, p1, Landroidx/work/impl/model/WorkGenerationalId;->generation:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "work_spec_id"

    invoke-static {p0, p1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v1, "generation"

    invoke-static {p0, v1}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "system_id"

    invoke-static {p0, v2}, L_COROUTINE/_BOUNDARY;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Landroidx/work/impl/model/SystemIdInfo;

    invoke-direct {v2, v4, p1, v1}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public final getTempsByHct()Ljava/util/Map;
    .locals 14

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/work/WorkQuery$Builder;->getHctsByHue()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/Hct;

    iget v3, v2, Lcom/google/android/material/color/utilities/Hct;->argb:I

    invoke-static {v3}, Lcom/google/android/material/color/utilities/ColorUtils;->labFromArgb(I)[D

    move-result-object v3

    const/4 v4, 0x2

    aget-wide v5, v3, v4

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    const-wide v8, 0x4076800000000000L    # 360.0

    rem-double/2addr v5, v8

    const-wide/16 v10, 0x0

    cmpg-double v12, v5, v10

    if-gez v12, :cond_1

    add-double/2addr v5, v8

    :cond_1
    aget-wide v12, v3, v7

    aget-wide v3, v3, v4

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    const-wide v12, 0x3ff11eb851eb851fL    # 1.07

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v12, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v3, v12

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    sub-double/2addr v5, v12

    rem-double/2addr v5, v8

    cmpg-double v7, v5, v10

    if-gez v7, :cond_2

    add-double/2addr v5, v8

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iput-object v1, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    return-object v1
.end method

.method public final insertSystemIdInfo(Landroidx/work/impl/model/SystemIdInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p1
.end method

.method public final maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource;

    iget-object v1, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource;

    iget-object v1, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->getWindowIndexForChildWindowIndex(ILjava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/xmp/impl/ByteBuffer;

    iget v1, v0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0, p2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    new-instance v1, Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v0, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/io/Serializable;ILjava/lang/Object;I)V

    iput-object v1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget v1, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0, p2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    new-instance v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iput-object v1, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;
    .locals 14

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource;

    iget-object v1, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    iget-wide v2, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaStartTimeMs:J

    invoke-virtual {v0, v2, v3, v1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(JLjava/lang/Object;)J

    move-result-wide v10

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource;

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    iget-wide v1, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaEndTimeMs:J

    invoke-virtual {v0, v1, v2, p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(JLjava/lang/Object;)J

    move-result-wide v12

    iget-wide v3, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaStartTimeMs:J

    cmp-long p0, v10, v3

    if-nez p0, :cond_0

    cmp-long p0, v12, v1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget v5, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->dataType:I

    iget v6, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    iget-object v7, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    iget v8, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->trackSelectionReason:I

    iget-object v9, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-object p0
.end method

.method public final onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/work/WorkQuery$Builder;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;

    move-result-object p1

    new-instance v1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    check-cast p2, Landroidx/core/internal/view/SupportMenuItem;

    invoke-direct {v1, p0, p2}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/work/WorkQuery$Builder;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/work/WorkQuery$Builder;->getMenuWrapper(Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/Menu;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/work/WorkQuery$Builder;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p0, p3}, Landroidx/work/WorkQuery$Builder;->maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/adobe/xmp/impl/ByteBuffer;->downstreamFormatChanged(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public final onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    :cond_0
    return-void
.end method

.method public final onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    :cond_0
    return-void
.end method

.method public final onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    :cond_0
    return-void
.end method

.method public final onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    :cond_0
    return-void
.end method

.method public final onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    :cond_0
    return-void
.end method

.method public final onLoadCanceled(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p0, p4}, Landroidx/work/WorkQuery$Builder;->maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lcom/adobe/xmp/impl/ByteBuffer;->loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public final onLoadCompleted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p0, p4}, Landroidx/work/WorkQuery$Builder;->maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lcom/adobe/xmp/impl/ByteBuffer;->loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public final onLoadError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p0, p4}, Landroidx/work/WorkQuery$Builder;->maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;

    move-result-object p0

    invoke-virtual {p1, p3, p0, p5, p6}, Lcom/adobe/xmp/impl/ByteBuffer;->loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery$Builder;->maybeUpdateEventDispatcher(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast p1, Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p0, p4}, Landroidx/work/WorkQuery$Builder;->maybeUpdateMediaLoadData(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lcom/adobe/xmp/impl/ByteBuffer;->loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    :cond_0
    return-void
.end method

.method public final onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/work/WorkQuery$Builder;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/work/WorkQuery$Builder;->getMenuWrapper(Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/Menu;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method
