.class public Lcom/motorola/camera/fsm/ChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;


# instance fields
.field public final synthetic $r8$classId:I

.field public mFsmContext:Ljava/lang/Object;

.field public mState:Ljava/lang/Object;

.field public mType:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, p2, :cond_0

    new-instance v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    new-instance p1, Landroid/util/Range;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast p0, [Z

    aput-boolean v2, p0, v2

    aput-boolean v1, p0, v1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v3, v4, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    new-instance p2, Landroid/util/Range;

    const/16 v0, 0x163

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x168

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p2, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast p0, [Z

    aput-boolean v2, p0, v2

    aput-boolean v2, p0, v1

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/zzpa;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/cct/CCTDestination;)Landroidx/core/view/MenuHostHelper;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    .line 6
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    const-string v1, "json"

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzps;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzps;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzps;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzps;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Format$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashSet;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;-><init>(Lcom/motorola/camera/fsm/ChangeEvent;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 12
    const/16 p1, 0x9

    iput p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    invoke-direct {p0}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/ranges/IntRange;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    const-string v0, "argumentRange"

    .line 14
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;Ljava/util/List;Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    const-string v0, "classifierDescriptor"

    .line 15
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addState(Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V
    .locals 3

    invoke-interface {p1}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/fsm/ChangeEvent;)V

    :goto_0
    return-void
.end method

.method public final contains(I)Z
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    check-cast v0, [Z

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v1, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    aput-boolean v1, v0, v2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Z

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-nez v1, :cond_1

    check-cast v0, [Z

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    aput-boolean v1, v0, v3

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    check-cast p1, [Z

    aput-boolean v2, p1, v2

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, [Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_3

    check-cast p0, [Z

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public final getContext()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    return-object p0
.end method

.method public final isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;->ENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEntering(Ljava/util/Collection;)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;->ENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;->EXITING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isExiting(Ljava/util/Collection;)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;->EXITING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isReentering(Lcom/motorola/camera/fsm/camera/StateKey;)Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/ChangeEvent$Type;->REENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final processMediaVolumes()V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getMediaVolumes()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, v0}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/storage/MediaVolume;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->sendStorageChangedEvent(Lcom/motorola/camera/storage/MediaVolume;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/storage/MediaVolume;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->sendStorageChangedEvent(Lcom/motorola/camera/storage/MediaVolume;Z)V

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    return-void
.end method

.method public final sendStorageChangedEvent(Lcom/motorola/camera/storage/MediaVolume;Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "PREVIOUS_VALUE"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    const-string v1, "mediaVolume"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const-string v2, "LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SDCARD_MOUNTED"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "MEDIA_VOLUME"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->STORAGE_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mAtlasDpi:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAtlasMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/StartStopTokens;

    const-string v2, "is null"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAtlas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast p0, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast p0, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s, %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeEvent{state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {v1}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/appupdate/zzc;

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzk;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzk;->zza:Lcom/google/android/play/core/appupdate/zzi;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzi;->zza:Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v2, Lcom/google/android/play/core/appupdate/zzg;

    check-cast v0, Lcom/google/android/play/core/appupdate/zzr;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/play/core/appupdate/zzg;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/play/core/appupdate/zzc;Landroid/content/Context;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
