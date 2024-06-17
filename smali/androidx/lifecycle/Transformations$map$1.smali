.class public final Landroidx/lifecycle/Transformations$map$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $result:Ljava/lang/Object;

.field public final synthetic $transform:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/lifecycle/Transformations$map$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/lifecycle/Transformations$map$1;->$result:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/Transformations$map$1;->$transform:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/lifecycle/Transformations$map$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/lifecycle/Transformations$map$1;->$transform:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$map$1;->$result:Ljava/lang/Object;

    const-string v3, "db"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 2
    :goto_0
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    .line 6
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x0

    const-string v2, "<this>"

    iget v3, p0, Landroidx/lifecycle/Transformations$map$1;->$r8$classId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Landroidx/lifecycle/Transformations$map$1;->$transform:Ljava/lang/Object;

    iget-object v7, p0, Landroidx/lifecycle/Transformations$map$1;->$result:Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_10

    .line 7
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Transformations$map$1;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    .line 8
    :pswitch_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Transformations$map$1;->invoke(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    const-string p0, "it"

    .line 10
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;

    .line 11
    iget-boolean p0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->skipRawTypeArguments:Z

    .line 12
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    move-object p0, v6

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asRawType(Lkotlin/reflect/jvm/internal/impl/types/model/FlexibleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/RawType;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v4

    :goto_0
    if-eqz p0, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_4

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    invoke-interface {v6, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {v6, p0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getParameters(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {v6, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getArguments(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {p0, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;

    invoke-interface {v6, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Z

    move-result v8

    iget-object v9, p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->defaultQualifiers:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    if-eqz v8, :cond_2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    invoke-direct {v0, v4, v9, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;)V

    goto :goto_2

    :cond_2
    invoke-interface {v6, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    .line 13
    iget-object v10, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->containerContext:Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object v10, v10, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 14
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 15
    iget-object v10, v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 16
    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v11

    .line 17
    invoke-virtual {v10, v9, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/AbstractAnnotationTypeQualifierResolver;->extractAndMergeDefaultQualifiers(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    move-result-object v9

    .line 18
    invoke-direct {v8, v0, v9, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;)V

    move-object v0, v8

    :goto_2
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v4, v5

    :cond_4
    :goto_3
    return-object v4

    :pswitch_3
    const-string p0, "$this$extractNullability"

    .line 19
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;

    .line 20
    iget-object p0, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/AbstractSignatureParts$TypeAndDefaultQualifiers;->type:Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 21
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 23
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/PossiblyExternalAnnotationDescriptor;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/PossiblyExternalAnnotationDescriptor;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/PossiblyExternalAnnotationDescriptor;->isIdeExternalAnnotation()V

    :cond_5
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    iget-object v2, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->containerContext:Lcom/airbnb/lottie/parser/DropShadowEffect;

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 25
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 26
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;

    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor;->isFreshlySupportedTypeUseAnnotation:Z

    if-nez v0, :cond_b

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/SignatureParts;->containerApplicabilityType:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationQualifierApplicabilityType;

    if-eq v3, v0, :cond_b

    :cond_6
    if-eqz p0, :cond_c

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 29
    iget-object p0, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 30
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 31
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->target:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/AbstractAnnotationTypeQualifierResolver;->findAnnotation(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;->enumArguments(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/KotlinTarget;->map:Ljava/util/HashMap;

    const-string v0, "TYPE"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move p0, v5

    goto :goto_5

    :cond_a
    :goto_4
    move p0, v1

    :goto_5
    if-eqz p0, :cond_c

    .line 34
    iget-object p0, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 35
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 36
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    move v1, v5

    .line 38
    :cond_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 39
    :pswitch_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 40
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;

    if-eqz v7, :cond_d

    iget-object p1, v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementInfo;->map:Ljava/util/Map;

    if-eqz p1, :cond_d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    if-nez p1, :cond_f

    :cond_d
    check-cast v6, [Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    if-ltz p0, :cond_e

    .line 41
    invoke-static {v6, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, v6

    add-int/lit8 p1, p1, -0x1

    if-gt p0, p1, :cond_e

    .line 42
    aget-object p1, v6, p0

    goto :goto_6

    :cond_e
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->NONE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    :cond_f
    :goto_6
    return-object p1

    .line 43
    :pswitch_5
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$FindClassRequest;

    const-string p0, "request"

    .line 44
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;

    .line 45
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    .line 46
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 47
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$FindClassRequest;->name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-direct {p0, v0, v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    check-cast v6, Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->c:Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$FindClassRequest;->javaClass:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    if-eqz p1, :cond_10

    .line 48
    iget-object v3, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 49
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 50
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;

    .line 51
    iget-object v5, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 52
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 53
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    .line 54
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->getComponents()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    move-result-object v5

    .line 55
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->configuration:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    invoke-static {v5, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 56
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "jvmMetadataVersion"

    .line 57
    invoke-static {v2, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;->findKotlinClass(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;

    move-result-object v2

    goto :goto_7

    .line 58
    :cond_10
    iget-object v3, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 59
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 60
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;

    .line 61
    iget-object v5, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 62
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 63
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    .line 64
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->getComponents()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    move-result-object v5

    .line 65
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->configuration:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    invoke-static {v5, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    .line 66
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;

    invoke-virtual {v3, p0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;->findKotlinClassOrContent(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpm;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_12

    .line 67
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;

    if-eqz v3, :cond_11

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;

    goto :goto_8

    :cond_11
    move-object v2, v4

    :goto_8
    if-eqz v2, :cond_12

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder$Result$KotlinClass;->kotlinJvmBinaryClass:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    goto :goto_9

    :cond_12
    move-object v2, v4

    :goto_9
    if-eqz v2, :cond_13

    .line 68
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v3

    goto :goto_a

    :cond_13
    move-object v3, v4

    :goto_a
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isNestedClass()Z

    move-result v5

    if-nez v5, :cond_1e

    iget-boolean v3, v3, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->local:Z

    if-eqz v3, :cond_14

    goto/16 :goto_e

    .line 69
    :cond_14
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$NotFound;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$NotFound;

    if-nez v2, :cond_15

    goto :goto_c

    :cond_15
    move-object v5, v2

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    .line 70
    iget-object v8, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->classHeader:Landroidx/core/app/NotificationCompatBuilder;

    iget-object v8, v8, Landroidx/core/app/NotificationCompatBuilder;->mContext:Ljava/lang/Object;

    .line 71
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    .line 72
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-ne v8, v9, :cond_17

    .line 73
    iget-object v0, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 74
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 75
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->readClassData$descriptors_jvm(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;

    move-result-object v2

    if-nez v2, :cond_16

    move-object v0, v4

    goto :goto_b

    :cond_16
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->getComponents()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    move-result-object v0

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v5

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->classDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    invoke-virtual {v0, v5, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_18

    .line 78
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;

    invoke-direct {v3, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V

    goto :goto_c

    :cond_17
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$SyntheticClass;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$SyntheticClass;

    .line 79
    :cond_18
    :goto_c
    instance-of v0, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;

    if-eqz v0, :cond_19

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;

    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$Found;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_e

    :cond_19
    instance-of v0, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$SyntheticClass;

    if-eqz v0, :cond_1a

    goto :goto_e

    :cond_1a
    instance-of v0, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope$KotlinClassLookupResult$NotFound;

    if-eqz v0, :cond_1f

    if-nez p1, :cond_1b

    .line 80
    iget-object p1, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 81
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 82
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->finder:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 83
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassFinder$Request;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v4, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassFinder$Request;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;I)V

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;->findClass(Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassFinder$Request;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    move-result-object p1

    :cond_1b
    if-eqz p1, :cond_1c

    move-object p0, p1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    goto :goto_d

    :cond_1c
    move-object p0, v4

    :goto_d
    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->isRoot()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->parent()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    .line 84
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 85
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_e

    :cond_1d
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 86
    invoke-direct {p0, v6, v0, p1, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V

    .line 87
    iget-object p1, v6, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 88
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 89
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaClassesTracker:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker;

    .line 90
    check-cast p1, Lkotlin/UInt$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p0

    :cond_1e
    :goto_e
    return-object v4

    :cond_1f
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0, v1}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0

    .line 91
    :pswitch_6
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Transformations$map$1;->invoke(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    return-object p0

    .line 92
    :pswitch_7
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string p0, "accessorName"

    .line 93
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {v7}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    goto :goto_f

    :cond_20
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    invoke-static {v6, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->access$searchMethodsByNameWithoutBuiltinMagic(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {v6, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->access$searchMethodsInSupertypesWithoutBuiltinMagic(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_f
    return-object p0

    .line 94
    :pswitch_8
    invoke-virtual {p0, p1}, Landroidx/lifecycle/Transformations$map$1;->invoke(Ljava/lang/Object;)V

    return-object v0

    .line 95
    :pswitch_9
    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    .line 96
    check-cast v7, Landroid/media/MediaPlayer;

    check-cast v6, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    new-instance p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$playAsync$2$$ExternalSyntheticLambda0;

    invoke-direct {p0, v6}, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$playAsync$2$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;)V

    invoke-virtual {v7, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-virtual {v7, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    invoke-virtual {v7, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    return-object v0

    .line 97
    :pswitch_a
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Transformations$map$1;->invoke(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 98
    :pswitch_b
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Transformations$map$1;->invoke(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 99
    :pswitch_c
    invoke-virtual {p0, p1}, Landroidx/lifecycle/Transformations$map$1;->invoke(Ljava/lang/Object;)V

    return-object v0

    .line 100
    :pswitch_d
    invoke-virtual {p0, p1}, Landroidx/lifecycle/Transformations$map$1;->invoke(Ljava/lang/Object;)V

    return-object v0

    .line 101
    :goto_10
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Transformations$map$1;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
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
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 11

    iget v0, p0, Landroidx/lifecycle/Transformations$map$1;->$r8$classId:I

    iget-object v1, p0, Landroidx/lifecycle/Transformations$map$1;->$transform:Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Landroidx/lifecycle/Transformations$map$1;->$result:Ljava/lang/Object;

    const-string v3, "name"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 102
    :pswitch_0
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;

    .line 103
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->nestedClassIndex:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 104
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v0, :cond_0

    check-cast v1, Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 105
    iget-object v0, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 106
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 107
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->finder:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    .line 108
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassFinder$Request;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v6

    invoke-static {v6}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->createNestedClassId(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    .line 109
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->jClass:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    .line 110
    invoke-direct {v5, p1, p0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassFinder$Request;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;I)V

    invoke-virtual {v0, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;->findClass(Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassFinder$Request;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 111
    invoke-direct {p1, v1, v4, p0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V

    .line 112
    iget-object p0, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 113
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaClassesTracker:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker;

    .line 114
    check-cast p0, Lkotlin/UInt$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    goto/16 :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->generatedNestedClassNames:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 116
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast v1, Lcom/airbnb/lottie/parser/DropShadowEffect;

    .line 117
    new-instance p0, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    .line 118
    iget-object v0, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 119
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 120
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->syntheticPartsProvider:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider;

    .line 121
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;

    invoke-virtual {v0, v1, v4, p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;->generateNestedClass(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/collections/builders/ListBuilder;)V

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 122
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableList;->getSize()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 123
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Multiple classes with same name are generated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->enumEntryIndex:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    .line 125
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;

    if-eqz v0, :cond_3

    check-cast v1, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getStorageManager()Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    move-result-object v2

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$enumEntryIndex$1;

    invoke-direct {v4, p0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope$enumEntryIndex$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;I)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-direct {v8, v2, v4}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    .line 127
    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getStorageManager()Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    move-result-object v5

    .line 128
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassMemberScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    .line 129
    invoke-static {v1, v0}, Lkotlinx/coroutines/JobKt;->resolveAnnotations(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    move-result-object v9

    .line 130
    iget-object p0, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    .line 131
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 132
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;

    .line 133
    check-cast p0, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {p0, v0}, Lkotlin/UNINITIALIZED_VALUE;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    move-result-object v10

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;->create(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;

    move-result-object v2

    :cond_3
    :goto_0
    return-object v2

    .line 134
    :goto_1
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/work/WorkQuery$Builder;

    .line 135
    iget-object v0, p0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 136
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    if-eqz v0, :cond_4

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 137
    iget-object v1, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    .line 138
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 139
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    .line 140
    iget-object p0, p0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;

    .line 141
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    .line 142
    iget-object p0, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 143
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    .line 144
    new-instance v1, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v4, v0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v7, p0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1;

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;->create(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor;

    move-result-object v2

    :cond_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Landroidx/lifecycle/Transformations$map$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/lifecycle/Transformations$map$1;->$transform:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$map$1;->$result:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    check-cast p0, Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 146
    :pswitch_1
    check-cast p0, Landroidx/lifecycle/MediatorLiveData;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :goto_0
    if-eqz p1, :cond_3

    .line 147
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    iget p1, p0, Landroidx/lifecycle/Transformations$map$1;->$r8$classId:I

    iget-object v0, p0, Landroidx/lifecycle/Transformations$map$1;->$transform:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/lifecycle/Transformations$map$1;->$result:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    check-cast p0, Lkotlinx/coroutines/android/HandlerContext;

    .line 149
    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    .line 150
    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 151
    :goto_0
    check-cast p0, Lkotlinx/coroutines/sync/MutexImpl;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
