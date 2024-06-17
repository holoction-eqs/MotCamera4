.class public abstract Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENHANCED_MUTABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

.field public static final ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->ENHANCED_NULLABILITY_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->ENHANCED_MUTABILITY_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_MUTABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    return-void
.end method
