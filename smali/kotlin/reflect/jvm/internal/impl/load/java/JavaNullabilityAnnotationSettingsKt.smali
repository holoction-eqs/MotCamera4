.class public abstract Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JSPECIFY_ANNOTATIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final JSR_305_DEFAULT_SETTINGS:Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;

.field public static final NULLABILITY_ANNOTATION_SETTINGS:Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;

.field public static final RXJAVA3_ANNOTATIONS:[Lkotlin/reflect/jvm/internal/impl/name/FqName;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "org.jspecify.nullness"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "org.jspecify.annotations"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->JSPECIFY_ANNOTATIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v3, "io.reactivex.rxjava3.annotations"

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v4, "org.checkerframework.checker.nullness.compatqual"

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v6, ".Nullable"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v7, ".NonNull"

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    filled-new-array {v5, v6}, [Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v4

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->RXJAVA3_ANNOTATIONS:[Lkotlin/reflect/jvm/internal/impl/name/FqName;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v6, "org.jetbrains.annotations"

    invoke-direct {v5, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;

    new-instance v8, Lkotlin/Pair;

    move-object v7, v8

    invoke-direct {v8, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v8, "androidx.annotation"

    invoke-direct {v5, v8}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v9, Lkotlin/Pair;

    move-object v8, v9

    invoke-direct {v9, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v9, "android.support.annotation"

    invoke-direct {v5, v9}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v10, Lkotlin/Pair;

    move-object v9, v10

    invoke-direct {v10, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v10, "android.annotation"

    invoke-direct {v5, v10}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v11, Lkotlin/Pair;

    move-object v10, v11

    invoke-direct {v11, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v11, "com.android.annotations"

    invoke-direct {v5, v11}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v12, Lkotlin/Pair;

    move-object v11, v12

    invoke-direct {v12, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v12, "org.eclipse.jdt.annotation"

    invoke-direct {v5, v12}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v13, Lkotlin/Pair;

    move-object v12, v13

    invoke-direct {v13, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v13, "org.checkerframework.checker.nullness.qual"

    invoke-direct {v5, v13}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v14, Lkotlin/Pair;

    move-object v13, v14

    invoke-direct {v14, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    move-object v14, v5

    invoke-direct {v5, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v5, "javax.annotation"

    invoke-direct {v3, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lkotlin/Pair;

    move-object v15, v5

    invoke-direct {v5, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v5, "edu.umd.cs.findbugs.annotations"

    invoke-direct {v3, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lkotlin/Pair;

    move-object/from16 v16, v5

    invoke-direct {v5, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v5, "io.reactivex.annotations"

    invoke-direct {v3, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lkotlin/Pair;

    move-object/from16 v17, v5

    invoke-direct {v5, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v5, "androidx.annotation.RecentlyNullable"

    invoke-direct {v3, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;

    move-object/from16 v24, v4

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->WARN:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    move-object/from16 v25, v7

    const/4 v7, 0x4

    invoke-direct {v5, v4, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;I)V

    new-instance v7, Lkotlin/Pair;

    move-object/from16 v18, v7

    invoke-direct {v7, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v5, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v3, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;

    const/4 v7, 0x4

    invoke-direct {v5, v4, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;I)V

    new-instance v7, Lkotlin/Pair;

    move-object/from16 v19, v7

    invoke-direct {v7, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v5, "lombok"

    invoke-direct {v3, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    new-instance v5, Lkotlin/Pair;

    move-object/from16 v20, v5

    invoke-direct {v5, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;

    new-instance v5, Lkotlin/KotlinVersion;

    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lkotlin/KotlinVersion;-><init>(II)V

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->STRICT:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    invoke-direct {v3, v4, v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Lkotlin/KotlinVersion;Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;)V

    new-instance v5, Lkotlin/Pair;

    move-object/from16 v21, v5

    invoke-direct {v5, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;

    new-instance v3, Lkotlin/KotlinVersion;

    const/16 v5, 0x9

    invoke-direct {v3, v5, v7}, Lkotlin/KotlinVersion;-><init>(II)V

    invoke-direct {v0, v4, v3, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Lkotlin/KotlinVersion;Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;)V

    new-instance v3, Lkotlin/Pair;

    move-object/from16 v22, v3

    invoke-direct {v3, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;

    new-instance v1, Lkotlin/KotlinVersion;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v7}, Lkotlin/KotlinVersion;-><init>(II)V

    invoke-direct {v0, v4, v1, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Lkotlin/KotlinVersion;Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;)V

    new-instance v1, Lkotlin/Pair;

    move-object/from16 v23, v1

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v7, v25

    const/4 v0, 0x4

    filled-new-array/range {v7 .. v23}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;-><init>(Ljava/util/Map;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->NULLABILITY_ANNOTATION_SETTINGS:Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;

    invoke-direct {v1, v4, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->JSR_305_DEFAULT_SETTINGS:Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;

    return-void
.end method
