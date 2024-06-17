.class public Lcom/google/common/base/Joiner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;
.implements Landroidx/appcompat/widget/MenuItemHoverListener;
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;
.implements Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public separator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/google/common/base/Joiner;->$r8$classId:I

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;

    invoke-direct {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;-><init>(Lcom/google/common/base/Joiner;)V

    iput-object p1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/PowerManager;)V
    .locals 1

    .line 4
    const/16 v0, 0x15

    iput v0, p0, Lcom/google/common/base/Joiner;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/google/common/base/Joiner;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "textView cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/base/Joiner;->$r8$classId:I

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/GestureRecognizer;)V
    .locals 1

    .line 8
    const/16 v0, 0x16

    iput v0, p0, Lcom/google/common/base/Joiner;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 9
    sget-object p1, Lkotlin/UInt$Companion;->INSTANCE$11:Lkotlin/UInt$Companion;

    const/16 v0, 0x19

    .line 10
    iput v0, p0, Lcom/google/common/base/Joiner;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p2, p0, Lcom/google/common/base/Joiner;->$r8$classId:I

    iput-object p1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/base/Joiner;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    iget-object v1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Landroidx/media3/common/Format$1;

    .line 15
    iget-object v0, v0, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;->zzb:Lcom/google/firebase/inject/Provider;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final accept(Lcom/google/android/gms/common/internal/GmsClient;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/TelemetryData;

    check-cast p1, Lcom/google/android/gms/common/internal/service/zap;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/zai;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/base/zaa;->zab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/base/zac;->zad(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/base/zaa;->zaa:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    iget-object p0, p2, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final add(Ljava/util/Collection;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final varargs add([Lcom/motorola/camera/fsm/camera/StateKey;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final construct()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    const-string v2, "Invalid EnumMap type: "

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    new-instance p0, Ljava/util/EnumMap;

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/JsonIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

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

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final enhanceInflexible$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/lifecycle/Transformations$map$1;IIZZ)Landroidx/core/text/BidiFormatter$Builder;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p6

    const-string v4, "<this>"

    invoke-static {v2, v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v5, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    if-eqz v3, :cond_2

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    move v9, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v7

    :goto_2
    const/4 v10, 0x0

    if-nez v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    invoke-direct {v0, v10, v6, v7}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    return-object v0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v8

    if-nez v8, :cond_4

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    invoke-direct {v0, v10, v6, v7}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    return-object v0

    :cond_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroidx/lifecycle/Transformations$map$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    invoke-static {v2, v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    if-eq v2, v5, :cond_5

    move v12, v7

    goto :goto_3

    :cond_5
    move v12, v6

    :goto_3
    const/4 v13, 0x2

    if-nez v12, :cond_6

    goto :goto_4

    :cond_6
    instance-of v12, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v12, :cond_7

    goto :goto_4

    :cond_7
    iget-object v12, v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-ne v12, v14, :cond_9

    if-ne v2, v7, :cond_9

    move-object v12, v8

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v14

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mutableToReadOnly:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    if-eqz v8, :cond_8

    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v12

    invoke-virtual {v12, v8}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v8

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a mutable collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    iget-object v14, v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->mutability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-ne v14, v12, :cond_a

    if-ne v2, v13, :cond_a

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v12

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->readOnlyToMutable:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {v8}, Lkotlin/UNINITIALIZED_VALUE;->convertReadOnlyToMutable(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v8

    goto :goto_5

    :cond_a
    :goto_4
    move-object v8, v10

    :goto_5
    invoke-static {v2, v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    if-eq v2, v5, :cond_b

    move v2, v7

    goto :goto_6

    :cond_b
    move v2, v6

    :goto_6
    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-nez v2, :cond_d

    const/4 v2, -0x1

    goto :goto_7

    :cond_d
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    :goto_7
    if-eq v2, v7, :cond_f

    if-eq v2, v13, :cond_e

    :goto_8
    move-object v2, v10

    goto :goto_9

    :cond_e
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_f
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_9
    if-eqz v8, :cond_10

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    if-nez v4, :cond_11

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    :cond_11
    const-string v12, "enhancedClassifier?.typeConstructor ?: constructor"

    invoke-static {v4, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v12, p3, 0x1

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v15

    const-string v13, "typeConstructor.parameters"

    invoke-static {v15, v13}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Iterable;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v14, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-static {v15, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    if-nez v9, :cond_12

    new-instance v7, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v7, v10, v6}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/Object;I)V

    goto :goto_b

    :cond_12
    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v7

    invoke-virtual {v0, v7, v1, v12, v3}, Lcom/google/common/base/Joiner;->enhancePossiblyFlexible(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Landroidx/lifecycle/Transformations$map$1;IZ)Lcom/adobe/xmp/impl/ParseState;

    move-result-object v7

    goto :goto_b

    :cond_13
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/lifecycle/Transformations$map$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->nullability:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->FORCE_FLEXIBILITY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    if-ne v7, v10, :cond_14

    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v7

    new-instance v10, Lcom/adobe/xmp/impl/ParseState;

    invoke-static {v7}, Lkotlin/text/RegexKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-virtual {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-static {v7}, Lkotlin/text/RegexKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v7

    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v7

    invoke-static {v1, v7}, Lokio/Timeout;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    invoke-direct {v10, v1, v6}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/Object;I)V

    move-object v7, v10

    goto :goto_b

    :cond_14
    const/4 v6, 0x1

    new-instance v7, Lcom/adobe/xmp/impl/ParseState;

    const/4 v1, 0x0

    invoke-direct {v7, v1, v6}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/Object;I)V

    :goto_b
    iget v1, v7, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/2addr v12, v1

    iget-object v1, v7, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v1, :cond_15

    goto :goto_c

    :cond_15
    if-eqz v8, :cond_16

    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    const-string v6, "arg.type"

    invoke-static {v1, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_c
    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v6

    const-string v7, "arg.projectionKind"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6, v15}, Lkotlin/text/StringsKt__IndentKt;->createProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v1

    goto :goto_d

    :cond_16
    if-eqz v8, :cond_17

    invoke-static {v15}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v1

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_18
    sub-int v12, v12, p3

    if-nez v8, :cond_1d

    if-nez v2, :cond_1d

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_f

    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_e

    :cond_1b
    const/4 v3, 0x0

    :goto_e
    if-nez v3, :cond_1a

    const/4 v1, 0x0

    goto :goto_10

    :cond_1c
    :goto_f
    const/4 v1, 0x1

    :goto_10
    if-eqz v1, :cond_1d

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v12}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    return-object v0

    :cond_1d
    const/4 v6, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    aput-object v3, v1, v6

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_MUTABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    if-eqz v8, :cond_1e

    const/4 v7, 0x1

    goto :goto_11

    :cond_1e
    move v7, v6

    :goto_11
    if-eqz v7, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v3, 0x0

    :goto_12
    const/4 v7, 0x1

    aput-object v3, v1, v7

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    if-eqz v2, :cond_20

    const/4 v7, 0x1

    goto :goto_13

    :cond_20
    move v7, v6

    :goto_13
    if-eqz v7, :cond_21

    goto :goto_14

    :cond_21
    const/4 v3, 0x0

    :goto_14
    const/4 v7, 0x2

    aput-object v3, v1, v7

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_28

    const/4 v7, 0x1

    if-eq v3, v7, :cond_22

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v7, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(ILjava/util/List;)V

    goto :goto_15

    :cond_22
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    :goto_15
    invoke-static {v3}, Lkotlinx/coroutines/SupervisorKt;->toDefaultAttributes(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v5, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v3, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    if-nez v3, :cond_23

    goto :goto_17

    :cond_23
    move-object v5, v3

    :goto_17
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_24
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_18

    :cond_25
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v3

    :goto_18
    const/4 v5, 0x0

    invoke-static {v1, v4, v10, v3, v5}, Lokio/Timeout;->simpleType(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    iget-boolean v3, v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->definitelyNotNull:Z

    if-eqz v3, :cond_26

    iget-object v0, v0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameterImpl;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    move-object v1, v0

    :cond_26
    if-eqz v2, :cond_27

    iget-boolean v0, v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->isNullabilityQualifierForWarning:Z

    if-eqz v0, :cond_27

    move v6, v7

    :cond_27
    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    invoke-direct {v0, v1, v6, v12}, Landroidx/core/text/BidiFormatter$Builder;-><init>(Ljava/lang/Object;ZI)V

    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least one Annotations object expected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enhancePossiblyFlexible(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Landroidx/lifecycle/Transformations$map$1;IZ)Lcom/adobe/xmp/impl/ParseState;
    .locals 11

    invoke-static {p1}, Lkotlin/text/StringsKt__IndentKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/adobe/xmp/impl/ParseState;

    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/Object;I)V

    return-object p0

    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v0, :cond_b

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/RawType;

    move-object v9, p1

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    iget-object v3, v9, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->lowerBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v7, v0

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/common/base/Joiner;->enhanceInflexible$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/lifecycle/Transformations$map$1;IIZZ)Landroidx/core/text/BidiFormatter$Builder;

    move-result-object v10

    iget-object v3, v9, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v8}, Lcom/google/common/base/Joiner;->enhanceInflexible$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/lifecycle/Transformations$map$1;IIZZ)Landroidx/core/text/BidiFormatter$Builder;

    move-result-object p0

    iget-object p2, v10, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-nez p2, :cond_1

    iget-object p3, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-nez p3, :cond_1

    goto :goto_4

    :cond_1
    iget-boolean p3, v10, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    if-nez p3, :cond_8

    iget-boolean p3, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, v9, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    iget-object p3, v9, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->lowerBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v0, :cond_5

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    if-nez p2, :cond_3

    move-object p2, p3

    :cond_3
    iget-object p0, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, p0

    :goto_0
    invoke-direct {v1, p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    goto :goto_4

    :cond_5
    if-nez p2, :cond_6

    move-object p2, p3

    :cond_6
    iget-object p0, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move-object p1, p0

    :goto_1
    invoke-static {p2, p1}, Lokio/Timeout;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    goto :goto_4

    :cond_8
    :goto_2
    iget-object p0, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz p0, :cond_a

    if-nez p2, :cond_9

    move-object p2, p0

    :cond_9
    invoke-static {p2, p0}, Lokio/Timeout;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p2

    goto :goto_3

    :cond_a
    invoke-static {p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    :goto_3
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/KCallablesJvm;->wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    :goto_4
    new-instance p0, Lcom/adobe/xmp/impl/ParseState;

    iget p1, v10, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    invoke-direct {p0, v1, p1}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/Object;I)V

    goto :goto_6

    :cond_b
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v0, :cond_d

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/common/base/Joiner;->enhanceInflexible$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Landroidx/lifecycle/Transformations$map$1;IIZZ)Landroidx/core/text/BidiFormatter$Builder;

    move-result-object p0

    new-instance p2, Lcom/adobe/xmp/impl/ParseState;

    iget-boolean p3, p0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    if-eqz p3, :cond_c

    iget-object p3, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-static {p1, p3}, Lkotlin/reflect/jvm/KCallablesJvm;->wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    goto :goto_5

    :cond_c
    iget-object p1, p0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    :goto_5
    iget p0, p0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    invoke-direct {p2, p1, p0}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/Object;I)V

    move-object p0, p2

    :goto_6
    return-object p0

    :cond_d
    new-instance p0, Lcom/google/gson/JsonParseException;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDiagnosticReceived()V
    .locals 1

    const-string p0, "ProfileInstaller"

    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 8

    iget-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    :cond_3
    move-object v4, v1

    new-instance v0, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    const/4 v7, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/utils/WorkProgressUpdater$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    iget-object p1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    iget-object p1, p1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onResultReceived(ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Landroidx/profileinstaller/ProfileInstaller;->LOG_DIAGNOSTICS:L_COROUTINE/ArtificialStackFrames;

    invoke-virtual {v0, p1, p2}, L_COROUTINE/ArtificialStackFrames;->onResultReceived(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void
.end method

.method public final perform(Landroid/view/View;)Z
    .locals 2

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    :cond_0
    return v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
