.class public final Lcom/google/android/gms/tasks/zzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public zzb:Ljava/lang/Object;

.field public zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 2
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;-><init>(II)V

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/tasks/zzr;-><init>(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    new-instance p1, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-direct {p1, p0, p2, p3}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;-><init>(Lcom/google/android/gms/tasks/zzr;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Z)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Abstract classes can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: "

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
    .locals 5

    .line 1
    const-string v0, "createCodec:"

    iget-object v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    iget-object v3, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v4, Lcom/google/common/base/Supplier;

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/HandlerThread;

    iget-boolean p0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    invoke-direct {v1, v0, v3, v4, p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    iget-object p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v2, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    invoke-static {v1, p0, v2, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->access$100(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    move-object v0, v2

    :goto_0
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->release()V

    :cond_1
    :goto_1
    throw p0
.end method

.method public final bridge synthetic createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzr;->createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    const-string v2, "$a"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$b"

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "c1"

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "c2"

    invoke-static {p2, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p2

    instance-of v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v2, :cond_2

    instance-of v2, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lkotlinx/coroutines/CoroutineId$Key;->INSTANCE$1:Lkotlinx/coroutines/CoroutineId$Key;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$overridingUtil$1$1;

    invoke-direct {v3, v1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorEquivalenceForOverrides$areCallableDescriptorsEquivalent$overridingUtil$1$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)V

    invoke-virtual {v2, p1, p2, v0, v3}, Lkotlinx/coroutines/CoroutineId$Key;->areTypeParametersEquivalent(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ZLkotlin/jvm/functions/Function2;)Z

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
    .locals 9

    iget-object v0, p1, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-class v1, Ljava/util/EnumMap;

    if-ne p1, v1, :cond_1

    new-instance v1, Lcom/google/common/base/Joiner;

    invoke-direct {v1, v0, v2}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ExceptionsKt;->getFilterResult(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    const/4 v4, 0x0

    const/16 v5, 0xf

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v6, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmk;

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v1, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v3

    goto :goto_1

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed making constructor \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_4

    new-instance v1, Lkotlin/DeepRecursiveFunction;

    invoke-direct {v1, v6, v2}, Lkotlin/DeepRecursiveFunction;-><init>(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_4
    new-instance v2, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v2, v1, v5}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(Ljava/lang/Object;I)V

    move-object v1, v2

    goto :goto_3

    :catch_1
    :goto_2
    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/16 v2, 0x1a

    if-eqz v1, :cond_9

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v1, 0x19

    if-eqz v0, :cond_6

    new-instance v3, Lkotlin/UByte$Companion;

    invoke-direct {v3, v1}, Lkotlin/UByte$Companion;-><init>(I)V

    goto/16 :goto_5

    :cond_6
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroidx/work/InputMergerFactory$1;

    invoke-direct {v0, v1, v3}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    :goto_4
    move-object v3, v0

    goto/16 :goto_5

    :cond_7
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v3, Lcom/adobe/xmp/XMPMetaFactory$1;

    invoke-direct {v3, v1}, Lcom/adobe/xmp/XMPMetaFactory$1;-><init>(I)V

    goto :goto_5

    :cond_8
    new-instance v0, L_COROUTINE/ArtificialStackFrames;

    invoke-direct {v0, v2, v3}, L_COROUTINE/ArtificialStackFrames;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v3, Lkotlin/UByte$Companion;

    invoke-direct {v3, v2}, Lkotlin/UByte$Companion;-><init>(I)V

    goto :goto_5

    :cond_a
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Landroidx/work/InputMergerFactory$1;

    invoke-direct {v0, v2, v3}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    :cond_b
    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v3, Lcom/adobe/xmp/XMPMetaFactory$1;

    invoke-direct {v3, v2}, Lcom/adobe/xmp/XMPMetaFactory$1;-><init>(I)V

    goto :goto_5

    :cond_c
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    const/16 v2, 0x1b

    if-eqz v1, :cond_d

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v4

    new-instance v1, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v1, v0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    const-class v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, L_COROUTINE/ArtificialStackFrames;

    invoke-direct {v0, v2, v3}, L_COROUTINE/ArtificialStackFrames;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    :cond_d
    new-instance v3, Lkotlin/UByte$Companion;

    invoke-direct {v3, v2}, Lkotlin/UByte$Companion;-><init>(I)V

    :cond_e
    :goto_5
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    invoke-static {p1}, Lcom/google/android/gms/tasks/zzr;->checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance p1, Landroidx/work/impl/StartStopTokens;

    const/16 v1, 0xb

    invoke-direct {p1, p0, v0, v1}, Landroidx/work/impl/StartStopTokens;-><init>(Ljava/lang/Object;Ljava/lang/Comparable;I)V

    return-object p1

    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz v0, :cond_11

    new-instance v0, Lcom/motorola/camera/device/CameraService;

    invoke-direct {v0, p0, p1, v4}, Lcom/motorola/camera/device/CameraService;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create instance of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, p0, p1, v5}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_6
    return-object v0
.end method

.method public final perform(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setEnabled(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tasks/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/tasks/zzh;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzb(Lcom/google/android/gms/tasks/zzw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/lang/Object;

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/zzq;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    monitor-exit v1

    return-void

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzh;->zzd(Lcom/google/android/gms/tasks/zzw;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
