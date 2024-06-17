.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEPRECATED_LEVEL_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final DEPRECATED_MESSAGE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final DEPRECATED_REPLACE_WITH_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final REPLACE_WITH_EXPRESSION_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final REPLACE_WITH_IMPORTS_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "message"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->DEPRECATED_MESSAGE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v0, "replaceWith"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->DEPRECATED_REPLACE_WITH_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v0, "level"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->DEPRECATED_LEVEL_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v0, "expression"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->REPLACE_WITH_EXPRESSION_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v0, "imports"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationUtilKt;->REPLACE_WITH_IMPORTS_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-void
.end method
