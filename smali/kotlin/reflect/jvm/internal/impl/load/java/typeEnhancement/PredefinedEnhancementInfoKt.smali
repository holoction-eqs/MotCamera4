.class public abstract Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOT_NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

.field public static final NOT_PLATFORM:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

.field public static final NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

.field public static final PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE:Ljava/util/AbstractMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NOT_PLATFORM:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->NOT_NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;

    sget-object v0, Lkotlinx/coroutines/CoroutineId$Key;->INSTANCE:Lkotlinx/coroutines/CoroutineId$Key;

    const-string v1, "java/lang/"

    const-string v4, "Object"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java/util/function/"

    const-string v6, "Predicate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Function"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Consumer"

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "BiFunction"

    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "BiConsumer"

    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UnaryOperator"

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "java/util/"

    const-string v13, "stream/Stream"

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Optional"

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    const/4 v3, 0x3

    invoke-direct {v15, v3}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;-><init>(I)V

    const-string v3, "Iterator"

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v2, v15, v3}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v3, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    move-object/from16 v16, v5

    const/4 v5, 0x2

    invoke-direct {v3, v8, v5}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v5, "forEachRemaining"

    invoke-virtual {v2, v5, v3}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "Iterable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v3, v15, v2}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v2, Landroidx/work/JobListenableFuture$1;

    const/16 v5, 0x16

    invoke-direct {v2, v0, v5}, Landroidx/work/JobListenableFuture$1;-><init>(Ljava/lang/Object;I)V

    const-string v0, "spliterator"

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "Collection"

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v2, v15, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v3, 0x8

    invoke-direct {v0, v6, v3}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v3, "removeIf"

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v3, 0x9

    invoke-direct {v0, v13, v3}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v3, "stream"

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v3, 0xa

    invoke-direct {v0, v13, v3}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v3, "parallelStream"

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "List"

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v2, v15, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v3, 0xb

    invoke-direct {v0, v11, v3}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v3, "replaceAll"

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "Map"

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v2, v15, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v11, 0xc

    invoke-direct {v0, v10, v11}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v11, "forEach"

    invoke-virtual {v2, v11, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v11, 0xd

    invoke-direct {v0, v4, v11}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v11, "putIfAbsent"

    invoke-virtual {v2, v11, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v11, 0xe

    invoke-direct {v0, v4, v11}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v11, "replace"

    invoke-virtual {v2, v11, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v12, 0xf

    invoke-direct {v0, v4, v12}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v11, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v11, 0x10

    invoke-direct {v0, v9, v11}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    const/4 v3, 0x0

    invoke-direct {v0, v4, v9, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "compute"

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    const/4 v3, 0x1

    invoke-direct {v0, v4, v7, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "computeIfAbsent"

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    const/4 v3, 0x2

    invoke-direct {v0, v4, v9, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "computeIfPresent"

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    const/4 v3, 0x3

    invoke-direct {v0, v4, v9, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "merge"

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, v15, v14}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v2, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v3, 0x11

    invoke-direct {v2, v14, v3}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v3, "empty"

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    const/4 v3, 0x4

    invoke-direct {v2, v4, v14, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v11, "of"

    invoke-virtual {v0, v11, v2}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;

    const/4 v11, 0x5

    invoke-direct {v2, v4, v14, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v12, "ofNullable"

    invoke-virtual {v0, v12, v2}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v12, 0x12

    invoke-direct {v2, v4, v12}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v12, "get"

    invoke-virtual {v0, v12, v2}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v13, 0x13

    invoke-direct {v2, v8, v13}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v13, "ifPresent"

    invoke-virtual {v0, v13, v2}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "ref/Reference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v1, v15, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v2, 0x14

    invoke-direct {v0, v4, v2}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v12, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, v15, v6}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v1, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/16 v2, 0x15

    invoke-direct {v1, v4, v2}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v2, "test"

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "BiPredicate"

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v6, v15, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    invoke-direct {v0, v4, v5}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v2, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, v15, v8}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v2, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/4 v5, 0x3

    invoke-direct {v2, v4, v5}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v5, "accept"

    invoke-virtual {v0, v5, v2}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, v15, v10}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v2, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    invoke-direct {v2, v4, v3}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v5, v2}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, v15, v7}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v2, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    invoke-direct {v2, v4, v11}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    const-string v3, "apply"

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0, v15, v9}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v2, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/4 v5, 0x6

    invoke-direct {v2, v4, v5}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "Supplier"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v1, v15, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Lkotlinx/serialization/json/internal/DescriptorSchemaCache;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;

    const/4 v2, 0x7

    invoke-direct {v0, v4, v2}, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v12, v0}, Lcom/motorola/camera/CameraKpi;->function(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, v15, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;->map:Ljava/util/AbstractMap;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/PredefinedEnhancementInfoKt;->PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE:Ljava/util/AbstractMap;

    return-void
.end method
